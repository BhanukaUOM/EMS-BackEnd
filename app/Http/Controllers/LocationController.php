<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class LocationController extends Controller
{
    public function add(Request $request){
        return "add";
    }

    public function get(Request $request, $id){
        return User::find($id)->role();
    }
}
