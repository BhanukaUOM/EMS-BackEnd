<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TimeTableController extends Controller
{
    public function index(Request $request)
    {
        if(parent::checkPermission('View TimeTables'))
            return response()->json("User do not have permission", 401);

        $year = Date("Y");
        if(Auth::user()->hasRole('Student'))
            $student = Auth::user()->id;
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error no student_id found", 401);
            $student = $request->get('student_id');
            if(User::find(Auth::user()->id)->whereHas('student', function($q) use ($student){
                $q->where('id', $student);
            })->count()==0)
                return response()->json("no permission", 401);
        }
        if($request->get('year'))
            $year = $request->get('year');
        return response()->json(TimeTableGroup::with('timeTable')->where('year', $year)->get(), 200);
        return response()->json("error no timeTable_id found", 401);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(parent::checkPermission('Add TimeTables'))
            return response()->json("User do not have permission", 401);
        $request->validate([
            'user_id' => 'required|integer',
            'year' => 'required|integer',
            'month' => 'required|integer',
            'day' => 'required|integer',
            'state' => 'required|boolean',
            'class_id' => 'required|integer'
        ]);

        $timeTables = TimeTables::create($request->all());
        return json_encode($timeTables);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(parent::checkPermission('View TimeTables'))
            return response()->json("User do not have permission", 401);
        return json_encode(TimeTables::findOrFail($id));
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
        if(parent::checkPermission('Edit TimeTables'))
            return parent::checkPermission('Edit TimeTables');

        $timeTables = TimeTables::findOrFail($id);
        $timeTables->fill($request->all())->save();
        return response()->json(['data' => $timeTables], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(parent::checkPermission('Delete TimeTables'))
            return response()->json("User do not have permission", 401);
        $timeTables = TimeTables::findOrFail($id);
        $timeTables->delete();
        return response()->json(['data' => $timeTables], 200);
    }

    public function allMobile(Request $request)
    {
        if(parent::checkPermission('View TimeTables'))
            return parent::checkPermission('View TimeTables');
        if($request->get('page')){
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $timeTables = TimeTables::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $timeTables = TimeTables::orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $timeTables = TimeTables::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else{
                $query = TimeTables::where("user_id", Auth::user()->id);
                if($request->get('year')){
                    if($query==null)
                        $query = TimeTables::where("year", $request->get('year'));
                    else
                        $query->orWhere("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = TimeTables::where("month", $request->get('month'));
                    else
                        $query->orWhere("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = TimeTables::where("day", $request->get('day'));
                    else
                        $query->orWhere("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = TimeTables::where("class_id", $request->get('class_id'));
                    else
                        $query->orWhere("class_id", $request->get('class_id'));
                }
                $timeTables = $query->paginate(10);
            }
        } else {
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $timeTables = TimeTables::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'));
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $timeTables = TimeTables::orderby($request->get('sort'), $request->get('order'));
            }
            else if($request->get('search'))
                $timeTables = TimeTables::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%");
            else{
                $query = TimeTables::where("user_id", Auth::user()->id);
                if($request->get('user_id')){
                    $query = TimeTables::where("user_id", $request->get('user_id'));
                } if($request->get('year')){
                    if($query==null)
                        $query = TimeTables::where("year", $request->get('year'));
                    else
                        $query->where("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = TimeTables::where("month", $request->get('month'));
                    else
                        $query->where("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = TimeTables::where("day", $request->get('day'));
                    else
                        $query->where("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = TimeTables::where("class_id", $request->get('class_id'));
                    else
                        $query->where("class_id", $request->get('class_id'));
                }
                $timeTables = $query->get();
            }
        }

        $res = [];
        for($i=0; $i<count($timeTables); $i++){
            if($timeTables[$i]->month<=9)
                $timeTables[$i]->month = '0'.$timeTables[$i]->month;
            if($timeTables[$i]->day<=9)
                $timeTables[$i]->day = '0'.$timeTables[$i]->day;
            if($timeTables[$i]->state==true){
                array_push($res,
                [
                    'date'=>$timeTables[$i]->year . '-' . $timeTables[$i]->month . '-' . $timeTables[$i]->day,
                    'status'=>'green'
                ]
            );
            } else {
                array_push($res,
                [
                    'date'=>$timeTables[$i]->year . '-' . $timeTables[$i]->month . '-' . $timeTables[$i]->day,
                    'status'=>'red'
                ]);
                //array_push($res, json_decode('{"'.$timeTables[$i]->year . '-' . $timeTables[$i]->month . '-' . $timeTables[$i]->day . '" : { "customStyles": { "container": { "backgroundColor": "red"}, "text": { "color": "black", "fontWeight": "bold" } } } }'));
            }
        }

        return response()->json($res, 200);
    }
}
