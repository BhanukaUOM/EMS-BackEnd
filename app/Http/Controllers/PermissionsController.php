<?php

namespace App\Http\Controllers;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use Illuminate\Http\Request;

class PermissionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->get('sort')!='null' && $request->get('search')){
            $permission = Permission::where("name", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
        } else if($request->get('sort')!='null'){
            $permission = Permission::orderby($request->get('sort'), $request->get('order'))->paginate(10);
        }
        else if($request->get('search'))
            $permission = Permission::where("name", "LIKE", "%{$request->get('search')}%")->paginate(10);
        else
            $permission = Permission::paginate(10);
        return response()->json($permission, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:2'
        ]);
        return json_encode(Permission::create(['name' => $request->name]));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return json_encode(Permission::findOrFail($id));
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
        $rules = [
            'name' => 'required|min:2'
        ];

        $this->validate($request, $rules);

        $permission = Permission::findOrFail($id);
        $permission->name = $request->name;
        $permission->save();
        return response()->json(['data' => $permission], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $permission = Permission::findOrFail($id);
        $permission->delete();
        return response()->json(['data' => $permission], 200);
    }

    public function allPermissions(){
        return response()->json(Permission::get(), 200);
    }
}
