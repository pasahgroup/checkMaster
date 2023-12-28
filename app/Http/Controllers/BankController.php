<?php

namespace App\Http\Controllers;

use App\Models\subcourse;
use App\Models\course;
use App\Models\bank;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoresubcourseRequest;
use App\Http\Requests\UpdatesubcourseRequest;
use Illuminate\Http\Request;
use DB;
use Auth;

class BankController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
          $banks = bank::get();
         // dd($banks);
       return view('admin.settings.bank.bank',compact('banks'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoresubcourseRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          // $property='asset_';
  // dd(request('bank_name'));
        $bank = bank::UpdateOrCreate([
        'bank_name'=>request('bank_name'),
        'swift_code'=>request('swift_code'),
        'country'=>request('country'),
        'account_no'=>request('account_no'),
    ],[
           'account_name'=>request('account_name'),
               'user_id'=>auth::id()   
           ]);
                  
           return redirect()->back()->with('success','Bank recorded successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\subcourse  $subcourse
     * @return \Illuminate\Http\Response
     */
    public function show(subcourse $subcourse)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\subcourse  $subcourse
     * @return \Illuminate\Http\Response
     */
    public function edit(subcourse $subcourse)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatesubcourseRequest  $request
     * @param  \App\Models\subcourse  $subcourse
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
      
     $account = bank::where('id',$id)
     ->update([
    
        'bank_name'=>request('bank_name'),
        'swift_code'=>request('swift_code'),
        'country'=>request('country'),
        'account_no'=>request('account_no'),
         'account_name'=>request('account_name'),
               'user_id'=>auth::id()  
]);
           return redirect()->back()->with('success','Subcourse updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\subcourse  $subcourse
     * @return \Illuminate\Http\Response
     */
     public function destroy($id)
    {
        $banks = bank::where('id',$id)->first();
        if($banks){
            $banks->delete();
              DB::statement("delete from banks where id=$id");

            return redirect()->back()->with('success','Bank removed successfully');
        }
        else{
     return redirect()->route('bank.index')->with('error','bank not exists');
        }
    }
}
