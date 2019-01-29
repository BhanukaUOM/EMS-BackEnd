<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Attendance;
use App\User;
use App\Guardian;
use App\Student;
use App\Teacher;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;

class AttendanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View Attendance'))
        return response()->json([ "message" => 'User do not have permission'], 401);

        if(Auth::user()->hasRole('Student')){
            $student_id = User::find(Auth::user()->id)->student->id;
        }
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error! no student_id found", 401);
            $student_id = $request->get('student_id');
            if(Guardian::find(User::find(Auth::user()->id)->parent->id)->whereHas('student', function($q) use ($student_id){
                $q->where('id', $student_id);
            })->count()==0)
                return response()->json("no permission", 401);
        }

        if($request->get('page')){
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $attendance = Attendance::orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else{
                $query = Attendance::where("student_id", $student_id);
                if($request->get('year')){
                    if($query==null)
                        $query = Attendance::where("year", $request->get('year'));
                    else
                        $query->orWhere("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Attendance::where("month", $request->get('month'));
                    else
                        $query->orWhere("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Attendance::where("day", $request->get('day'));
                    else
                        $query->orWhere("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Attendance::where("class_id", $request->get('class_id'));
                    else
                        $query->orWhere("class_id", $request->get('class_id'));
                }
                $attendance = $query->paginate(10);
            }
        } else {
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'));
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $attendance = Attendance::orderby($request->get('sort'), $request->get('order'));
            }
            else if($request->get('search'))
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%");
            else{
                $query = Attendance::where("student_id", $student_id);
                if($request->get('student_id')){
                    $query = Attendance::where("student_id", $student_id);
                } if($request->get('year')){
                    if($query==null)
                        $query = Attendance::where("year", $request->get('year'));
                    else
                        $query->where("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Attendance::where("month", $request->get('month'));
                    else
                        $query->where("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Attendance::where("day", $request->get('day'));
                    else
                        $query->where("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Attendance::where("class_id", $request->get('class_id'));
                    else
                        $query->where("class_id", $request->get('class_id'));
                }
                $attendance = $query->get();
            }
        }

        $res = [];
        for($i=0; $i<count($attendance); $i++){
            if($attendance[$i]->month<=9)
                $attendance[$i]->month = '0'.$attendance[$i]->month;
            if($attendance[$i]->day<=9)
                $attendance[$i]->day = '0'.$attendance[$i]->day;
            if($attendance[$i]->state==true){
                array_push($res,
                [
                    'start'=>$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day,
                    'end'=>$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day,
                    'title' => 'Present',
                    'color'=>'colors.green'
                ]
            );
            } else {
                array_push($res,
                [
                    'start'=>$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day,
                    'end'=>$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day,
                    'title' => 'Absent',
                    'color'=>'colors.red'
                ]);
                    //array_push($res, json_decode('{"'.$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day . '" : { "customStyles": { "container": { "backgroundColor": "red"}, "text": { "color": "black", "fontWeight": "bold" } } } }'));
            }
        }

        return response()->json($res, 200);
    }

    public function indexold(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View Attendance'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        if($request->get('page')){
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $attendance = Attendance::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $attendance = Attendance::orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $attendance = Attendance::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else{
                $query = null;
                if($request->get('user_id')){
                    $query = Attendance::where("user_id", $request->get('user_id'));
                } if($request->get('year')){
                    if($query==null)
                        $query = Attendance::where("year", $request->get('year'));
                    else
                        $query->orWhere("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Attendance::where("month", $request->get('month'));
                    else
                        $query->orWhere("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Attendance::where("day", $request->get('day'));
                    else
                        $query->orWhere("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Attendance::where("class_id", $request->get('class_id'));
                    else
                        $query->orWhere("class_id", $request->get('class_id'));
                }
                $attendance = $query->paginate(10);
            }
        } else {
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $attendance = Attendance::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'));
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $attendance = Attendance::orderby($request->get('sort'), $request->get('order'));
            }
            else if($request->get('search'))
                $attendance = Attendance::where("user_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%");
            else{
                $query = null;
                if($request->get('user_id')){
                    $query = Attendance::where("user_id", $request->get('user_id'));
                } if($request->get('year')){
                    if($query==null)
                        $query = Attendance::where("year", $request->get('year'));
                    else
                        $query->where("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Attendance::where("month", $request->get('month'));
                    else
                        $query->where("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Attendance::where("day", $request->get('day'));
                    else
                        $query->where("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Attendance::where("class_id", $request->get('class_id'));
                    else
                        $query->where("class_id", $request->get('class_id'));
                }
                $attendance = $query->get();
            }
        }
        return response()->json($attendance, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('Add Attendance'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $request->validate([
            'user_id' => 'required|integer',
            'year' => 'required|integer',
            'month' => 'required|integer',
            'day' => 'required|integer',
            'state' => 'required|boolean',
            'class_id' => 'required|integer'
        ]);
        // echo [
        //     'name' => $request->name,
        //     'email' => $request->email,
        //     'password' => bcrypt($request->password),
        //     'activation_token' => str_random(60),
        //     'address' => $request->email,
        //     'about' => $request->email,
        // ];
        // return $request->all();
        $attendance = Attendance::create($request->all());
        return json_encode($attendance);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(!Auth::user()->hasPermissionTo('View Attendance'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        return json_encode(Attendance::findOrFail($id));
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
        if(!Auth::user()->hasPermissionTo('Edit Attendance'))
            return parent::checkPermission('Edit Attendance');

        $attendance = Attendance::findOrFail($id);
        $attendance->fill($request->all())->save();
        return response()->json(['data' => $attendance], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!Auth::user()->hasPermissionTo('Delete Attendance'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $attendance = Attendance::findOrFail($id);
        $attendance->delete();
        return response()->json(['data' => $attendance], 200);
    }

    public function allMobile(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View Attendance'))
        return response()->json([ "message" => 'User do not have permission'], 401);

        if(Auth::user()->hasRole('Student')){
            $student_id = User::find(Auth::user()->id)->student->id;
        }
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error! no student_id found", 401);
            $student_id = $request->get('student_id');
            if(Guardian::find(User::find(Auth::user()->id)->parent->id)->whereHas('student', function($q) use ($student_id){
                $q->where('id', $student_id);
            })->count()==0)
                return response()->json("no permission", 401);
        }

        if($request->get('page')){
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $attendance = Attendance::orderby($request->get('sort'), $request->get('order'))->paginate(10);
            }
            else if($request->get('search'))
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->paginate(10);
            else{
                $query = Attendance::where("student_id", $student_id);
                if($request->get('year')){
                    if($query==null)
                        $query = Attendance::where("year", $request->get('year'));
                    else
                        $query->orWhere("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Attendance::where("month", $request->get('month'));
                    else
                        $query->orWhere("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Attendance::where("day", $request->get('day'));
                    else
                        $query->orWhere("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Attendance::where("class_id", $request->get('class_id'));
                    else
                        $query->orWhere("class_id", $request->get('class_id'));
                }
                $attendance = $query->paginate(10);
            }
        } else {
            if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')){
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'));
            } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
                $attendance = Attendance::orderby($request->get('sort'), $request->get('order'));
            }
            else if($request->get('search'))
                $attendance = Attendance::where("student_id", "LIKE", "%{$request->get('search')}%")->orWhere("year", "LIKE", "%{$request->get('search')}%")->orWhere("month", "LIKE", "%{$request->get('search')}%")->orWhere("day", "LIKE", "%{$request->get('search')}%");
            else{
                $query = Attendance::where("student_id", $student_id);
                if($request->get('student_id')){
                    $query = Attendance::where("student_id", $student_id);
                } if($request->get('year')){
                    if($query==null)
                        $query = Attendance::where("year", $request->get('year'));
                    else
                        $query->where("year", $request->get('year'));
                } if($request->get('month')){
                    if($query==null)
                        $query = Attendance::where("month", $request->get('month'));
                    else
                        $query->where("month", $request->get('month'));
                } if($request->get('day')){
                    if($query==null)
                        $query = Attendance::where("day", $request->get('day'));
                    else
                        $query->where("day", $request->get('day'));
                } if($request->get('class_id')){
                    if($query==null)
                        $query = Attendance::where("class_id", $request->get('class_id'));
                    else
                        $query->where("class_id", $request->get('class_id'));
                }
                $attendance = $query->get();
            }
        }

        $res = [];
        for($i=0; $i<count($attendance); $i++){
            if($attendance[$i]->month<=9)
                $attendance[$i]->month = '0'.$attendance[$i]->month;
            if($attendance[$i]->day<=9)
                $attendance[$i]->day = '0'.$attendance[$i]->day;
            if($attendance[$i]->state==true){
                array_push($res,
                [
                    'date'=>$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day,
                    'status'=>'green'
                ]
            );
            } else {
                array_push($res,
                [
                    'date'=>$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day,
                    'status'=>'red'
                ]);
                    //array_push($res, json_decode('{"'.$attendance[$i]->year . '-' . $attendance[$i]->month . '-' . $attendance[$i]->day . '" : { "customStyles": { "container": { "backgroundColor": "red"}, "text": { "color": "black", "fontWeight": "bold" } } } }'));
            }
        }

        return response()->json($res, 200);
    }

    public function student(Request $request){
     if(!Auth::user()->hasRole('Teacher'))
        return response()->json([ "message" => 'User do not have permission'], 401);

    return Student::with('user', 'parent')->where("class_id", User::find(Auth::user()->id)->teacher->class->id)->get();
    }
}
