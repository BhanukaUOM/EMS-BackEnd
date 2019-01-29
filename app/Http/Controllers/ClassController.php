<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classe;
use Illuminate\Support\Facades\Auth;

class ClassController extends Controller
{
    public function teacher(Request $request){
        if(!Auth::user()->hasPermissionTo('View Class')){
            return response()->json([ "message" => 'User do not have permission'], 401);
        }

        return response()->json(Classe::where('teacher_id', Auth::user()->teacher->id)->get());
    }
}
