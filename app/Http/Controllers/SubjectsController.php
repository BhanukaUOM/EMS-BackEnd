<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SubjectGroup;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Guardian;

class SubjectsController extends Controller
{
    public function index(Request $request)
    {
        if(parent::checkPermission('View Subjects'))
            return response()->json("User do not have permission", 401);

        $year = Date("Y");
        if(Auth::user()->hasRole('Student'))
            $student = Auth::user()->id;
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error no student_id found", 401);
            $student = $request->get('student_id');
            if(User::find(Auth::user()->id)->whereHas('student', function($q) use ($student){
                $q->where('id', $student);
            })->count()==0)
                return response()->json("no permission", 401);
        }
        if($request->get('year'))
            $year = $request->get('year');
        return response()->json(SubjectGroup::with('subject')->where('year', $year)->get(), 200);
        return response()->json("error no subject_id found", 401);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(parent::checkPermission('Add Subjects'))
            return response()->json("User do not have permission", 401);
        $request->validate([
            'user_id' => 'required|integer',
            'year' => 'required|integer',
            'month' => 'required|integer',
            'day' => 'required|integer',
            'state' => 'required|boolean',
            'class_id' => 'required|integer'
        ]);

        $subjects = Subjects::create($request->all());
        return json_encode($subjects);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(parent::checkPermission('View Subjects'))
            return response()->json("User do not have permission", 401);
        return json_encode(Subjects::findOrFail($id));
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
        if(parent::checkPermission('Edit Subjects'))
            return parent::checkPermission('Edit Subjects');

        $subjects = Subjects::findOrFail($id);
        $subjects->fill($request->all())->save();
        return response()->json(['data' => $subjects], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(parent::checkPermission('Delete Subjects'))
            return response()->json("User do not have permission", 401);
        $subjects = Subjects::findOrFail($id);
        $subjects->delete();
        return response()->json(['data' => $subjects], 200);
    }

    public function allMobile(Request $request)
    {
        if(parent::checkPermission('View Subjects'))
            return parent::checkPermission('View Subjects');
        if($request->get('page')){
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $subjects = Subjects::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $subjects = Subjects::orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $subjects = Subjects::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else{
                $query = Subjects::where("user_id", Auth::user()->id);
                if($request->get('year')){
                    if($query==null)
                        $query = Subjects::where("year", $request->get('year'));
                    else
                        $query->orWhere("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Subjects::where("month", $request->get('month'));
                    else
                        $query->orWhere("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Subjects::where("day", $request->get('day'));
                    else
                        $query->orWhere("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Subjects::where("class_id", $request->get('class_id'));
                    else
                        $query->orWhere("class_id", $request->get('class_id'));
                }
                $subjects = $query->paginate(10);
            }
        } else {
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $subjects = Subjects::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'));
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $subjects = Subjects::orderby($request->get('sort'), $request->get('order'));
            }
            else if($request->get('search'))
                $subjects = Subjects::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%");
            else{
                $query = Subjects::where("user_id", Auth::user()->id);
                if($request->get('user_id')){
                    $query = Subjects::where("user_id", $request->get('user_id'));
                } if($request->get('year')){
                    if($query==null)
                        $query = Subjects::where("year", $request->get('year'));
                    else
                        $query->where("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Subjects::where("month", $request->get('month'));
                    else
                        $query->where("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Subjects::where("day", $request->get('day'));
                    else
                        $query->where("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Subjects::where("class_id", $request->get('class_id'));
                    else
                        $query->where("class_id", $request->get('class_id'));
                }
                $subjects = $query->get();
            }
        }

        $res = [];
        for($i=0; $i<count($subjects); $i++){
            if($subjects[$i]->month<=9)
                $subjects[$i]->month = '0'.$subjects[$i]->month;
            if($subjects[$i]->day<=9)
                $subjects[$i]->day = '0'.$subjects[$i]->day;
            if($subjects[$i]->state==true){
                array_push($res,
                [
                    'date'=>$subjects[$i]->year . '-' . $subjects[$i]->month . '-' . $subjects[$i]->day,
                    'status'=>'green'
                ]
            );
            } else {
                array_push($res,
                [
                    'date'=>$subjects[$i]->year . '-' . $subjects[$i]->month . '-' . $subjects[$i]->day,
                    'status'=>'red'
                ]);
                //array_push($res, json_decode('{"'.$subjects[$i]->year . '-' . $subjects[$i]->month . '-' . $subjects[$i]->day . '" : { "customStyles": { "container": { "backgroundColor": "red"}, "text": { "color": "black", "fontWeight": "bold" } } } }'));
            }
        }

        return response()->json($res, 200);
    }
}
