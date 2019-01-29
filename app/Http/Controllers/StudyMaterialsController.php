<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Material;
use Illuminate\Support\Facades\Auth;

use App\User;
use App\Student;
use App\SubjectGroup;
use App\Guardian;


class StudyMaterialsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View Materials'))
            return response()->json([ "message" => 'User do not have permission'], 401);

        if(Auth::user()->hasRole('Student')){
            $user_id = Auth::user()->id;
            $student_id = Student::where('user_id', Auth::user()->id)->first()->id;
        }
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error no student_id found", 401);
            $student_id = $request->get('student_id');
            if(Guardian::find(User::find(Auth::user()->id)->parent->id)->whereHas('student', function($q) use ($student_id){
                $q->where('id', $student_id);
            })->count()==0)
                return response()->json("no permission", 401);
        }

        $subject_id = $request->get('subject_id');
        if(subjectGroup::where('id', Student::find($student_id)->subject_group_id)->whereHas('subject', function($q) use ($subject_id){
            $q->where('id', $subject_id);
        })->count()==0)
            return response()->json("no permission", 401);
        if($request->get('subject_id'))
            return response()->json(Material::where(['subject_id' => $subject_id])->get(), 200);
        return response()->json("error no subject_id found", 401);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('Add Materials'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $request->validate([
            'user_id' => 'required|integer',
            'year' => 'required|integer',
            'month' => 'required|integer',
            'day' => 'required|integer',
            'state' => 'required|boolean',
            'class_id' => 'required|integer'
        ]);

        $material = Material::create($request->all());
        return json_encode($material);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(!Auth::user()->hasPermissionTo('View Materials'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        return json_encode(Material::findOrFail($id));
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
        if(!Auth::user()->hasPermissionTo('Edit Materials'))
            return parent::checkPermission('Edit Materials');

        $material = Material::findOrFail($id);
        $material->fill($request->all())->save();
        return response()->json(['data' => $material], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!Auth::user()->hasPermissionTo('Delete Materials'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $material = Material::findOrFail($id);
        $material->delete();
        return response()->json(['data' => $material], 200);
    }

    public function allMobile(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View Materials'))
            return parent::checkPermission('View Materials');
        if($request->get('page')){
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $material = Material::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $material = Material::orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $material = Material::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else{
                $query = Material::where("user_id", Auth::user()->id);
                if($request->get('year')){
                    if($query==null)
                        $query = Material::where("year", $request->get('year'));
                    else
                        $query->orWhere("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Material::where("month", $request->get('month'));
                    else
                        $query->orWhere("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Material::where("day", $request->get('day'));
                    else
                        $query->orWhere("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Material::where("class_id", $request->get('class_id'));
                    else
                        $query->orWhere("class_id", $request->get('class_id'));
                }
                $material = $query->paginate(10);
            }
        } else {
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $material = Material::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'));
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $material = Material::orderby($request->get('sort'), $request->get('order'));
            }
            else if($request->get('search'))
                $material = Material::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%");
            else{
                $query = Material::where("user_id", Auth::user()->id);
                if($request->get('user_id')){
                    $query = Material::where("user_id", $request->get('user_id'));
                } if($request->get('year')){
                    if($query==null)
                        $query = Material::where("year", $request->get('year'));
                    else
                        $query->where("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Material::where("month", $request->get('month'));
                    else
                        $query->where("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Material::where("day", $request->get('day'));
                    else
                        $query->where("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Material::where("class_id", $request->get('class_id'));
                    else
                        $query->where("class_id", $request->get('class_id'));
                }
                $material = $query->get();
            }
        }

        $res = [];
        for($i=0; $i<count($material); $i++){
            if($material[$i]->month<=9)
                $material[$i]->month = '0'.$material[$i]->month;
            if($material[$i]->day<=9)
                $material[$i]->day = '0'.$material[$i]->day;
            if($material[$i]->state==true){
                array_push($res,
                [
                    'date'=>$material[$i]->year . '-' . $material[$i]->month . '-' . $material[$i]->day,
                    'status'=>'green'
                ]
            );
            } else {
                array_push($res,
                [
                    'date'=>$material[$i]->year . '-' . $material[$i]->month . '-' . $material[$i]->day,
                    'status'=>'red'
                ]);
                //array_push($res, json_decode('{"'.$material[$i]->year . '-' . $material[$i]->month . '-' . $material[$i]->day . '" : { "customStyles": { "container": { "backgroundColor": "red"}, "text": { "color": "black", "fontWeight": "bold" } } } }'));
            }
        }

        return response()->json($res, 200);
    }
}
