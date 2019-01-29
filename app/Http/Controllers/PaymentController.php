<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Payment;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Student;
use App\Guardian;

class PaymentController extends Controller
{
    public function index(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('View Payments'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        if(($request->get('sort')!='null' && $request->get('sort')!='') && $request->get('search')) {
            $payment = Payment::with('permissions')->where("name", "LIKE", "%{$request->get('search')}%")->orderby($request->get('sort'), $request->get('order'))->paginate(10);
        } else if(($request->get('sort')!='null' && $request->get('sort')!='')){
            $payment = Payment::with('permissions')->orderby($request->get('sort'), $request->get('order'))->paginate(10);
        }
        else if($request->get('search'))
            $payment = Payment::with('permissions')->where("name", "LIKE", "%{$request->get('search')}%")->paginate(10);
        else
            $payment = Payment::with('permissions')->paginate(10);
        return response()->json($payment, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!Auth::user()->hasPermissionTo('Add Payments'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $request->validate([
            'name' => 'required|string|min:2'
        ]);
        $payment = Payment::create(['name' => $request->name]);
        if($request->permission)
            foreach($request->permission as $permission)
                $payment->givePermissionTo($permission);
        return json_encode($payment);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(!Auth::user()->hasPermissionTo('View Payments'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        return json_encode(Payment::with('permissions')->findOrFail($id));
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
        if(!Auth::user()->hasPermissionTo('Edit Payments'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $rules = [
            'name' => 'required|min:2'
        ];

        $this->validate($request, $rules);

        $payment = Payment::findOrFail($id);
        foreach($payment->permissions as $permission)
            $payment->revokePermissionTo($permission);
        if($request->permission)
            foreach($request->permission as $permission)
                $payment->givePermissionTo($permission);
        $payment->name = $request->name;
        $payment->save();
        return response()->json(['data' => $payment], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!Auth::user()->hasPermissionTo('Delete Payments'))
            return response()->json([ "message" => 'User do not have permission'], 401);
        $payment = Payment::findOrFail($id);
        $payment->delete();
        return response()->json(['data' => $payment], 200);
    }

    public function history(Request $request){
        if(!Auth::user()->hasPermissionTo('View Payments'))
            return response()->json([ "message" => 'User do not have permission'], 401);

        if(Auth::user()->hasRole('Student')){
            $student_id = Auth::user()->id;
        }
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error no student_id found", 401);
            $student_id = $request->get('student_id');
            if(Guardian::find(User::find(Auth::user()->id)->parent->id)->whereHas('student', function($q) use ($student_id){
                $q->where('id', $student_id);
            })->count()==0)
                return response()->json("no permission", 401);
        }

        if($request->get('year')){
            $year = $request->get('year');
            return response()->json(Payment::where('student_id', $student_id)->whereBetween('payment_at', [date($year.'-01-01'), date($year.'-12-31')])->get(), 200);
        }
            return response()->json(Payment::where(['student_id' => $student_id])->get(), 200);
    }

    public function pay(Request $request){
        if(!Auth::user()->hasPermissionTo('Make Payments'))
            return response()->json([ "message" => 'User do not have permission'], 401);

        if(Auth::user()->hasRole('Student')){
            $student_id = Auth::user()->id;
        }
        else if(Auth::user()->hasRole('Parent')){
            if(!$request->get('student_id'))
                return response()->json("error no student_id found", 401);
            $student_id = $request->get('student_id');
            if(Guardian::find(User::find(Auth::user()->id)->parent->id)->whereHas('student', function($q) use ($student_id){
                $q->where('id', $student_id);
            })->count()==0)
                return response()->json("no permission", 401);
        }
        $student = Student::with('package','user')->find($student_id);

        $payment = new Payment([
            'student_id' => $student_id,
            'amount' => $student['package']['price'],
            'note' => "Pending",
            'type' => "Online"
        ]);
        $payment->save();
        return response()->json(['return_url' => 'https://ems.aladinlabs.com/api/payments', 'cancel_url' => 'https://ems.aladinlabs.com/api/payments', 'notify_url'=>'https://ems.aladinlabs.com/api/payments/notify', 'order_id' => $payment->id, 'Merchant_id' => User::find(Student::find($student_id)->user_id)->school->merchant_id, 'student' => $student], 200);
    }

    public function notify(Request $request){
        $payment = Payment::findOrFail($request->order_id);
        if($request->order_id == User::find(Student::find($student_id)->user_id)->school->merchant_id){
            if($request->md5sig == strtoupper(md5($request->merchant_id + $request->order_id + $request->payhere_amount + $request->payhere_currency + $request->status_code + $request->strtoupper(md5(User::find(Student::find($student_id)->user_id)->school->payhere_secret))))){
                if($request->status_code==2)
                    $payment['note'] = 'Success';
                else if($request->status_code==0)
                    $payment['note'] = 'Pending';
                else if($request->status_code==-1)
                    $payment['note'] = 'Canceled';
                else if($request->status_code==-2)
                    $payment['note'] = 'Failed';
                else if($request->status_code==-3)
                    $payment['note'] = 'Chargedback';
                $payment['transaction_id'] = $request->payment_id;
                $payment->save();
            }
        }
    }
}
