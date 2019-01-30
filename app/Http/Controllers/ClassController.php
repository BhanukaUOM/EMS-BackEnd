<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classe;
use App\Student;
use App\User;
use App\Teacher;
use Illuminate\Support\Facades\Auth;

class ClassController extends Controller
{
    public function teacher(Request $request){
        if(!Auth::user()->hasPermissionTo('View Class')){
            return response()->json([ "message" => 'User do not have permission'], 401);
        }
        if(Auth::user()->hasRole('Teacher'))
            return response()->json(Classe::where('teacher_id', Auth::user()->teacher->id)->get());
        if(Auth::user()->hasRole('Student'))
            return response()->json(Auth::user()->student->class);
        if(Auth::user()->hasRole('Parent'))
            return response()->json(Student::find($request->get('student_id'))->class);
    }

    public function index(Request $request){
        if(!Auth::user()->hasPermissionTo('View Class')){
            return response()->json([ "message" => 'User do not have permission'], 401);
        }
        return response()->json(Classe::with('teacher.user')->get());
    }

    public function student(Request $request){
        if(!Auth::user()->hasPermissionTo('View Class')){
            return response()->json([ "message" => 'User do not have permission'], 401);
        }
        if(Auth::user()->hasRole('Teacher'))
            return response()->json(Student::where('class_id', User::find(Auth::user()->id)->teacher->class->id)->get());
    }

    public function store(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('Add Class'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $request->validate([
            'grade' => 'required|integer',
            'sub_class' => 'required',
            'teacher_id' => 'required|integer'
        ]);
        $c = Classe::create($request->all());
        return json_encode($c);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(!Auth::user()->hasPermissionTo('View Class'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        return json_encode(Classe::findOrFail($id));
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
        if(!Auth::user()->hasPermissionTo('Edit Class'))
            return response()->json([ "message" => 'User do not have permission'], 401);

        $c = Classe::findOrFail($id);
        $c->fill($request->all())->save();
        return response()->json(['data' => $c], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!Auth::user()->hasPermissionTo('Delete Class'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $role = Classe::findOrFail($id);
        $role->delete();
        return response()->json(['data' => $role], 200);
    }

    public function teacherAll(){
        return response()->json(Teacher::with('user')->get());
    }

    public function classAll(){
        return response()->json(Classe::all());
    }
}
