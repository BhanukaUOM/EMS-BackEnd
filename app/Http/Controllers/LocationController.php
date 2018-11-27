<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use App\Location;

class LocationController extends Controller
{
    public function add(Request $request){
        $request->validate([
            'timestamp' => 'required',
            'latitude' => 'required',
            'longitude' => 'required'
        ]);

        if(Location::where('user_id', Auth::user()->id)->exists())
            $location = Location::where('user_id', Auth::user()->id);
        else{
            $location = new Location;
            $location->user_id = Auth::user()->id;
        }

        $location->timestamp = Carbon::parse($request->timestamp)->toDateTimeString();
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
    }

    public function get($id){
        return response()->json(Location::where("user_id", strval($id))->first());
    }

    public function getCurrent(){
        return response()->json(Location::where('user_id', Auth::user()->id)->first());
    }
}
