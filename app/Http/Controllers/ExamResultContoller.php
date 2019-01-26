<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\ExamResult;
use App\User;
use App\Guardian;

class ExamResultContoller extends Controller
{
    public function mobile(Request $request){
        if(!parent::checkPermission('View Results'))
            return response()->json("User do not have permission", 401);

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

        if(!$request->get('year'))
            return response()->json(ExamResult::with('subject')->where('student_id', $student_id)->get());
        if($request->get('term'))
            return response()->json(ExamResult::where(['student_id'=> $student_id, 'term'=>$request->get('term')])->get());
    }
}
