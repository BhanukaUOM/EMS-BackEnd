<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Location;

class LocationController extends Controller
{
    public function add(Request $request){
        $request->validate([
            'timestamp' => 'required',
            'latitude' => 'required|string',
            'longitude' => 'required|string'
        ]);

        if(Location::where('id', $AuthAuth::user()->id)->exists())
            $location = Location::find($AuthAuth::user()->id);
        else{
            $location = new Location;
            $location->user_id = $AuthAuth::user()->id;
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

        return response()->json(['data' => 'Successfully Added']);
        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;
        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(13);
        $token->save();
        return response()->json([
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse($tokenResult->token->expires_at)->toDateTimeString()
        ]);
    }

    public function get(Request $request, $id){
        return User::find($id)->role();
    }
}
