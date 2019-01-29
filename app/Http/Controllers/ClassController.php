<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classe;
use App\Student;
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
}
