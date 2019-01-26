<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Notifications\SignupActivate;
use Avatar;
use Storage;
use App\Guardian;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(Request $request)
    {
        if(parent::checkPermission('View Users'))
            return response()->json("User do not have permission", 401);
        if($request->get('role')=='null' || $request->get('role')==''){
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $user = User::with('roles')->where("name", "LIKE", "%{$request->get('search')}%")->orWhere("email", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if($request->get('sort')!='null' && $request->get('sort')!=''){
                $user = User::with('roles')->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $user = User::with('roles')->where("name", "LIKE", "%{$request->get('search')}%")->orWhere("email", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else
                $user = User::with('roles')->paginate(10);
        } else {
            $role = $request->get('role');
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $user = User::role($role)->with('roles')->where("name", "LIKE", "%{$request->get('search')}%")->orWhere("email", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if($request->get('sort')!='null' && $request->get('sort')!=''){
                $user = User::role($role)->with('roles')->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $user = User::role($role)->with('roles')->where("name", "LIKE", "%{$request->get('search')}%")->orWhere("email", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else
                $user = User::role($role)->with('roles')->paginate(10);
        }
        return response()->json($user, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(parent::checkPermission('Add Users'))
            return response()->json("User do not have permission", 401);
        $request->validate([
            'name' => 'required|string|min:2',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed|min:6'
        ]);
        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'activation_token' => str_random(60),
            'address' => $request->email,
            'about' => $request->email,
        ]);
        if($request->role)
            foreach($request->role as $role)
                $user->assignRole($role);
        else{
            return response()->json([
                'error' => 'Role Not Found!'
            ], 401);
        }
        $user->school_id = Auth::user()->school_id;
        if($request->address)
            $user->address = $request->address;
        if($request->about)
            $user->about = $request->about;
        $user->save();
        $avatar = Avatar::create(strtoupper($user->name))->getImageObject()->encode('png');
        Storage::put('avatars/'.$user->id.'/avatar.png', (string) $avatar);
        $user->notify(new SignupActivate($user));
        return response()->json([
            'message' => 'Successfully Added New User!'
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(parent::checkPermission('View Users'))
            return response()->json("User do not have permission", 401);
        return json_encode(User::with('roles')->findOrFail($id));
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
        if(parent::checkPermission('Edit Users'))
            return response()->json("User do not have permission", 401);
        $rules = [
            'name' => 'required|min:2',
            'email' =>'email'
        ];

        $this->validate($request, $rules);

        $user = User::findOrFail($id);


        if($request->role){
            foreach($user->roles as $role)
                $user->removeRole($role);
            foreach($request->role as $role)
                $user->assignRole($role);
        }

        $user->name = $request->name;
        if($request->email && $request->email != $user->email){
            $user->email = $request->email;
            $user->notify(new SignupActivate($user));
        }
        if($request->about){
            $user->about = $request->about;
        }
        if($request->address)
            $user->address = $request->address;
        $avatar = Avatar::create(strtoupper($user->name))->getImageObject()->encode('png');
        Storage::put('avatars/'.$user->id.'/avatar.png', (string) $avatar);
        //$user->updated_at = Carbon::now()->toDateTimeString();
        $user->save();
        return response()->json(['data' => $user], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(parent::checkPermission('Delete Users'))
            return response()->json("User do not have permission", 401);
        $user = User::findOrFail($id);
        $user->delete();
        return response()->json(['data' => $user], 200);
    }

    public function pause(Request $request){

        if(parent::checkPermission('Edit Users'))
            return response()->json("User do not have permission", 401);
        $rules = [
            'id' => 'required'
        ];

        $this->validate($request, $rules);

        $id = $request->id;
        $user = User::findOrFail($id);
        if($user->deleted_at!=null){
            return response()->json(['message' => "User Already Deleted"], 202);
        }
        $user->active = !$user->active;
        $user->save();
        return response()->json(['data' => $user], 200);
    }
}
