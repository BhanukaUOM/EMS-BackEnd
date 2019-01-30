<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\ExamResult;
use App\User;
use App\Guardian;

class ExamResultContoller extends Controller
{
    public function store(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('Add Results'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $request->validate([
            'subject' => 'required|string',
            'indexNo' => 'required|string',
            'term' => 'required|integer|max:3|min:1',
            'mark' => 'required|integer|max:100|min:0'
        ]);
        $res = ExamResult::create([
            'subject_id' => $request->subject,
            'student_id' => $request->indexNo,
            'term' => $request->term,
            'mark' => $request->mark,
            'class_id' => Auth::user()->teacher->class->id
        ]);
        $res -> save();
        return json_encode('Successfully Added');
    }

    public function mobile(Request $request){
        if(!Auth::user()->hasPermissionTo('View Results')){
            return response()->json([ "message" => 'User do not have permission'], 401);
        }

        $student_id = null;
        if(Auth::user()->hasRole('Student')){
            $student_id = User::find(Auth::user()->id)->student->id;
        }
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error! no student_id found", 401);
            $student_id = $request->get('student_id');
            if(Guardian::find(User::find(Auth::user()->id)->parent->id)->whereHas('student', function($q) use ($student_id){
                $q->where('id', $student_id);
            })->count()==0)
                return response()->json("no permission", 401);
        }
        if(Auth::user()->hasRole('Teacher'))
            if($request->get('student_id'))
                $student_id = $request->get('student_id');

        $year = Date("Y");
        if($request->get('class_id')){
            $class_id = $request->get('class_id');
            if($request->get('term')){
                if($student_id)
                    return response()->json(ExamResult::whereHas('class', function ($query) use ($class_id) {
                        $query->where('id','=',$class_id);
                    })->with('subject', 'class', 'student')->where(['student_id' => $student_id, 'term' => $request->get('term')])->get());

                return response()->json(ExamResult::whereHas('class', function ($query) use ($class_id) {
                    $query->where('id','=',$class_id);
                })->with('subject', 'class', 'student')->where(['term' => $request->get('term')])->get());
            }
            if($student_id)
                return response()->json(ExamResult::whereHas('class', function ($query) use ($class_id) {
                    $query->where('id','=',$class_id);
                })->with('subject', 'class', 'student')->where(['student_id' => $student_id])->get());

            return response()->json(ExamResult::whereHas('class', function ($query) use ($class_id) {
                $query->where('id','=',$class_id);
            })->with('subject', 'class', 'student')->get());

            } else {
                if($student_id)
                    return response()->json(ExamResult::with('subject', 'class', 'student')->where(['student_id' => $student_id])->get());
                if($request->get('term'))
                    if($student_id)
                        return response()->json(ExamResult::with('subject', 'class', 'student')->where(['student_id' => $student_id, 'term' => $request->get('term')])->get());
                    return response()->json(ExamResult::with('subject', 'class', 'student')->where(['term' => $request->get('term')])->get());
                return response()->json(ExamResult::whereHas('subject', function ($query) use ($year) {
                    $query->where('year','=',$year);
                })->with('subject', 'class', 'student')->where(['student_id' => $student_id])->get());
            }


    }

    public function show($id)
    {
        if(!Auth::user()->hasPermissionTo('View Results'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        return json_encode(ExamResult::findOrFail($id));
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
        if(!Auth::user()->hasPermissionTo('Edit Results'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $rules = [
            'mark' => 'required|integer|max:100|min:0'
        ];

        $this->validate($request, $rules);

        $res = ExamResult::findOrFail($id);
        if($request->mark)
            $res['mark'] = $request->mark;
        // 'student_id' => $request->indexNo,
        // 'term' => $request->term,
        // 'mark' => $request->mark,
        // 'class_id' => Auth::user()->teacher->class->id
        $res -> save();
        return response()->json(['data' => $res], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!Auth::user()->hasPermissionTo('Delete Results'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $res = ExamResult::findOrFail($id);
        $res->delete();
        return response()->json(['data' => $res], 200);
    }
}
