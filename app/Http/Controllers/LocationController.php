<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use App\Location;
use App\Guardian;

class LocationController extends Controller
{
    //Save Student Location through Mobile App
    public function add(Request $request){
        if(Auth::user()->hasPermissionTo("Add Location")){
            $request->validate([
                'timestamp' => 'required',
                'latitude' => 'required',
                'longitude' => 'required'
            ]);

            $user_id = Auth::user()->id;

            if(Location::where('user_id', $user_id)->exists())
                $location = Location::where('user_id', $user_id)->first();
            else{
                $location = new Location;
                $location->user_id = Auth::user()->id;
            }

            $location->timestamp = Carbon::createFromTimestamp($request->timestamp)->toDateTimeString();
            $location->latitude = $request->latitude;
            $location->longitude = $request->longitude;
            if($request->accuracy)
                $location->accuracy = $request->accuracy;
            if($request->altitude)
                $location->altitude = $request->altitude;
            if($request->altitudeAccuracy)
                $location->altitudeAccuracy = $request->altitudeAccuracy;
            if($request->heading)
                $location->heading = $request->heading;
            if($request->speed)
                $location->speed = $request->speed;
            $location->save();

            return response()->json(['data' => $location]);
        } else {
            return response()->json(["error" => ['message' => "You don't have permission"]], 401);
        }
    }

    public function get($id){
        if(Auth::user()->hasPermissionTo("View Location")){
            return response()->json(Location::where("user_id", $id)->first());
        } else {
            return response()->json(["error" => ['message' => "You don't have permission"]], 401);
        }
    }

    public function getCurrent(){
        if(Auth::user()->hasPermissionTo("View Location")){
            return response()->json(Location::where('user_id', Auth::user()->id)->first());
        } else {
            return response()->json(["error" => ['message' => "You don't have permission"]], 401);
        }
    }

    //Get Current Parents Student Location
    public function index(Request $request){
        $user_id = Guardian::where('user_id', Auth::user()->id)->first()->id;
        if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
            $user = User::with('location')->where("name", "LIKE", "%{$request->get('search')}%")->orWhere("email", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->role("Student")->whereHas('student.parent', function($q) use ($user_id){
                $q->where('id', $user_id);
            })->paginate(10);
        } else if($request->get('sort')!='null' && $request->get('sort')!=''){
            $user = User::with('location')->orderby($request->get('sort'), $request->get('order'))->role("Student")->whereHas('student.parent', function($q) use ($user_id){
                $q->where('id', $user_id);
            })->paginate(10);
        }

        else if($request->get('search'))
            $user = User::with('location')->where("name", "LIKE", "%{$request->get('search')}%")->orWhere("email", "LIKE", "%{$request->get('search')}%")->role("Student")->whereHas('student.parent', function($q) use ($user_id){
                $q->where('id', $user_id);
            })->paginate(10);
        else
            $user = User::with('location')->role("Student")->whereHas('student.parent', function($q) use ($user_id){
                $q->where('id', $user_id);
            })->paginate(10);
        return response()->json($user, 200);
    }
}
