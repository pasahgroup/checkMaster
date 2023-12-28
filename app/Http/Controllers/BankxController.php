<?php

namespace App\Http\Controllers;

use App\Models\bank;
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
        //dd($inclusives);
        return view('admins.bank.bank',compact('banks'));   //
    }


    public function addBank(){

         return view('admins.bank.addBank');
    }



  public function editBank($id){
       
       $bank = bank::where('id',$id)
       ->first();
     //  dd($widgets);
         return view('admins.bank.editBank',compact('bank'));
    }


    //      $percent = people_percent::where('id',$id)
    //    ->first();
    //  //  dd($widgets);
    //      return view('admins.percent.editPercent',compact('percent'));
    // }
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
  if (request('bank')) {

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

 
            }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\people_percent  $people_percent
     * @return \Illuminate\Http\Response
     */
    // public function show($id)
    // {
    //     $programs=program::where('id',$id)->get();       
    //  $inclusives=DB::select("select id,inclusive from inclusives  where id not in(select (inclusive_id)id from accommodation_inclusives where tour_id =$id)");
    //     //dd($inclusives);

    //     $pages = page::whereid($id)->get();
    //     $assignLists = accommodationInclusive::join('inclusives','accommodation_inclusives.inclusive_id','inclusives.id')
    //     ->where('accommodation_inclusives.tour_id',$id)->get();
    //     //dd($assignLists);


    //       return view('admins.inclusives.assignInclusiveList',compact('inclusives','id','assignLists','programs'));
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\people_percent  $people_percent
     * @return \Illuminate\Http\Response
     */
    public function edit(people_percent $people_percent)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\people_percent  $people_percent
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
    
 $toupdate = bank::where('id',$id)
               ->update([
        'bank_name'=>request('bank_name'),
        'swift_code'=>request('swift_code'),
        'country'=>request('country'),
        'account_name'=>request('account_name'),
        'account_no'=>request('account_no'),
        ]);
    return redirect()->route('bank.index')->with('success','bank updated successfully');
        }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\people_percent  $people_percent
     * @return \Illuminate\Http\Response
     */

 public function destroyf($id)
    {
  
        $delete = bank::where('id',$id)->first();
        if($delete->delete()){
            return redirect()->route('bank.index')->with('success','bank removed successfully');
        }    
        else{
            return redirect()->route('bank.index')->with('error','bank not exists');
        }
    }

        public function destroy($id)
    {
        //
        //dd($id);
        $delete = accommodationInclusive::where('tour_id',$id)->first();
        if($delete->delete()){
            return redirect()->back()->with('success','Widget removed successfully');
        }    
        else{
            return redirect()->back()->with('error','Widget not exists');
        }
    }
}
