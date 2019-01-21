<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Auth;

class RolesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if(!parent::checkPermission('View Roles'))
            return ;
        if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')) {
            $role = Role::with('permissions')->where("name", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
        } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
            $role = Role::with('permissions')->orderby($request->get('sort'), $request->get('order'))->paginate(10);
        }
        else if($request->get('search'))
            $role = Role::with('permissions')->where("name", "LIKE", "%{$request->get('search')}%")->paginate(10);
        else
            $role = Role::with('permissions')->paginate(10);
        return response()->json($role, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!parent::checkPermission('Add Roles'))
            return ;
        $request->validate([
            'name' => 'required|string|min:2'
        ]);
        $role = Role::create(['name' => $request->name]);
        if($request->permission)
            foreach($request->permission as $permission)
                $role->givePermissionTo($permission);
        return json_encode($role);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(!parent::checkPermission('View Roles'))
            return ;
        return json_encode(Role::with('permissions')->findOrFail($id));
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
        if(!parent::checkPermission('Edit Roles'))
            return ;
        $rules = [
            'name' => 'required|min:2'
        ];

        $this->validate($request, $rules);

        $role = Role::findOrFail($id);
        foreach($role->permissions as $permission)
            $role->revokePermissionTo($permission);
        if($request->permission)
            foreach($request->permission as $permission)
                $role->givePermissionTo($permission);
        $role->name = $request->name;
        $role->save();
        return response()->json(['data' => $role], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!parent::checkPermission('Delete Roles'))
            return ;
        $role = Role::findOrFail($id);
        $role->delete();
        return response()->json(['data' => $role], 200);
    }

    public function allRoles(){
        if(!parent::checkPermission('View Roles'))
            return ;
        return response()->json(Role::with('permissions')->get(), 200);
    }
}
