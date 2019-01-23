<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use App\User;
use App\Notice;
use App\NoticeReadStatus;
use App\NoticeUser;

class NoticeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(parent::checkPermission('View Notice'))
            return response()->json("User do not have permission", 401);
        $user_id = Auth::user()->id;
        $user_roles = Auth::user()->roles;

         $res = DB::select('
            SELECT DISTINCT(n.id), n.title, n.content, n.created_at, n.notice_from, IF(ISNULL(s.user_id), "false", "true") as status
            FROM notices n Left Join notice_users ns on (n.id=ns.notice_id and ns.user_id=?) LEFT JOIN notice_read_statuses s ON (s.user_id=? and s.notice_id=ns.notice_id)
            WHERE ns.user_id=?
        ', [$user_id ,$user_id ,$user_id]);

        for($i=0; $i<count($user_roles); $i++){
            $res = array_merge($res, DB::select('
            SELECT DISTINCT(n.id), n.title, n.content, n.created_at, n.notice_from, IF(ISNULL(s.user_id), "false", "true") as status
            FROM notices n Left Join notice_users ns on (n.id=ns.notice_id and ns.role_id=?) LEFT JOIN notice_read_statuses s ON (s.user_id=? and s.notice_id=ns.notice_id)
            WHERE ns.role_id=?
        ', [$user_roles[$i]->id, $user_id, $user_roles[$i]->id]));
        };

        //$res = Notice::join('notice_user', 'notices.id', '=', 'notice_user.notice_id')->join('users', 'users.id', '=', 'notice_user.user_id')->with('notice_read_statuses')->orWhere('notice_read_statuses.user_id', '=', 'notice_user.user_id')->orWhere('notice_read_statuses.notice_id', '=', 'notices.id')->select("notices.*")->where('users.id', 1)->get();
        //return $user_roles;
        return response()->json($res, 200);
        //return response()->json(User::find($user)->notices(), 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(parent::checkPermission('Add Notice'))
            return response()->json("User do not have permission", 401);
        $request->validate([
            'title' => 'required|string',
            'content' => 'required|string'
        ]);

        $data['notice_from'] = Auth::user()->id;
        $data['title'] = $request->title;
        $data['content'] = $request->content;
        $notice = Notice::create($data);

        if($request->to){
            $data=null;
            foreach($request->to as $to){
                if($to['isRoleBased']){
                    NoticeUser::create(['isRoleBased'=>true, 'notice_id'=>$notice->id, 'role_id'=>$to['role_id']]);
                } else {
                    NoticeUser::create(['isRoleBased'=>false, 'user_id'=>$to['user_id'], 'notice_id'=>$notice->id]);
                }
            }
        }
        return response()->json($notice);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(parent::checkPermission('View Notice'))
            return response()->json("User do not have permission", 401);
        return response()->json(Notice::with('users')->findOrFail($id));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if(parent::checkPermission('Edit Notice'))
            return response()->json("User do not have permission", 401);

        $notice = Notice::findOrFail($id);

        if($request->title)
            $notice->title = $request->title;
        if($request->content)
            $notice->content = $request->content;
        $notice->save();
        return response()->json(['data' => $notice], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(parent::checkPermission('Delete Notice'))
            return response()->json("User do not have permission", 401);
        $notice = Notice::findOrFail($id);
        $notice->delete();
        $userNotice = NoticeReadStatus::where("notice_id", $id);
        $userNotice->delete();
        return response()->json(['data' => $notice], 200);
    }

    public function read(Request $request)
    {
        if(parent::checkPermission('View Notice'))
            return response()->json("User do not have permission", 401);
        if($request->get('notice_id')) {
            if(NoticeReadStatus::where(['user_id' => Auth::user()->id, 'notice_id' => $request->get('notice_id')])->count()>0)
                return response()->json("Already readed", 401);
            $notice = NoticeReadStatus::create(['user_id' => Auth::user()->id, 'notice_id' => $request->get('notice_id')]);
            return response()->json($notice, 200);
        }
        return response()->json("Invalid Parameters", 401);
    }
}
