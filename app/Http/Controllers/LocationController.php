<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LocationController extends Controller
{
    public function add(Request $request){
        return "add";
    }

    public function get(Request $request, $id){
        return $id;
    }
}
