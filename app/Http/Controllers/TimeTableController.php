<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\TimeTable;
use App\User;
use App\Student;
use App\Guardian;

class TimeTableController extends Controller
{
    public function index(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View TimeTable'))
            return response()->json([ "message" => 'User do not have permission'], 401);

        return response()->json(TimeTable::with('teacher.user', 'subject', 'class')->get(), 200);
        //return response()->json("error no timeTable_id found", 401);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('Add TimeTable'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $request->validate([
            'week_day' => 'required|integer',
            'start' => 'required',
            'end' => 'required',
            'teacher_id' => 'required',
            'subject_id' => 'required',
            'class_id' => 'required|integer'
        ]);

        $timeTables = TimeTable::create($request->all());
        return json_encode($timeTables);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(!Auth::user()->hasPermissionTo('View TimeTable'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        return json_encode(TimeTable::findOrFail($id));
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
        if(!Auth::user()->hasPermissionTo('Edit TimeTable'))
            return response()->json([ "message" => 'User do not have permission'], 401);

        $timeTables = TimeTable::findOrFail($id);
        $timeTables->fill($request->all())->save();
        return response()->json(['data' => $timeTables], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!Auth::user()->hasPermissionTo('Delete TimeTable'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $timeTables = TimeTable::findOrFail($id);
        $timeTables->delete();
        return response()->json(['data' => $timeTables], 200);
    }

    public function mobile(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View TimeTable'))
            return parent::checkPermission('View TimeTable');
        if(Auth::user()->hasRole('
        ')){
            $student_id = Auth::user()->id;
        }
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error no student_id found", 401);
            $student_id = $request->get('student_id');
            if(Guardian::find(User::find(Auth::user()->id)->parent->id)->whereHas('student', function($q) use ($student_id){
                $q->where('id', $student_id);
            })->count()==0)
                return response()->json("no permission", 401);
        } else if(Auth::user()->hasRole('Teacher')){
            return response()->json(TimeTable::with('subject', 'class')->where('teacher_id', Auth::user()->teacher->id)->get(), 200);
        }

        $class_id = Student::find($student_id)->class->id;
        return response()->json(TimeTable::with('teacher', 'subject')->where('class_id', $class_id)->get(), 200);
    }
}
