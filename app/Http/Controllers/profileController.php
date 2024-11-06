<?php

namespace App\Http\Controllers;

use App\Models\myCompany;
use App\Models\myPayment;
use Illuminate\Http\Request;

class profileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $profile = myCompany::first();
         $pin=rand(111111, 999999);
        return view('admin.profile.profile',compact('profile','pin'));
    }

 public function companyWeb()
    {
        //dd('here');
      //  $profile = myCompany::first();
         $pin=rand(111111, 999999);
         //dd($pin);
        return view('admin.profile.profile_web',compact('pin'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
       //register company from web
        dd('print');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

//dd(request('code'));
  if(request('attachment')){
            $attach = request('attachment');
            foreach($attach as $attached){

  // Get filename with extension
                     $fileNameWithExt =$attached->getClientOriginalName();
                     // Just Filename
                     $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                     // Get just Extension
                     $extension = $attached->getClientOriginalExtension();
                     //Filename to store
                     $imageToStore = $filename.'_'.time().'.'.$extension;
                     //upload the image
                     $path =$attached->storeAs('public/logo/', $imageToStore);

                    $comp = myCompany::where('company_name',request('business_name'))->first();
                     //dd($comp);
                    if($comp == null)
                      {

 $insetqns = myCompany::Create([
          'company_name'=>request('business_name'),
           'logo'=>$imageToStore,
          'tin'=>request('tin'),
          'vrn'=>request('vrn'),
          'phone_number'=>request('phone_number'),
          'email'=>request('email'),
          'address'=>request('address'),
          'code'=>request('code'),
          'status'=>'Active',
          'user_id'=>auth()->id()
        ]);

                      }
                      else
                      {
$insetqnsy = myCompany::where('company_name',request('business_name'))
             ->update([
 'company_name'=>request('business_name'),
           'logo'=>$imageToStore,
          'tin'=>request('tin'),
          'vrn'=>request('vrn'),
          'phone_number'=>request('phone_number'),
          'email'=>request('email'),
          'address'=>request('address'),
           'code'=>request('code'),
          'status'=>'Active',
          'user_id'=>auth()->id()
            ]);
                      }

         }
}
else
{

    //dd(request('business_name'));
         $comp = myCompany::where('company_name',request('business_name'))->first();
                    // dd($comp);
                    if($comp == null)
                      {
    //dd('print1');
 $insetqns = myCompany::Create([
          'company_name'=>request('business_name'),
           'logo'=>'',
          'tin'=>request('tin'),
          'vrn'=>request('vrn'),
          'phone_number'=>request('phone_number'),
          'email'=>request('email'),
          'address'=>request('address'),
           'code'=>request('code'),
          'status'=>'Active',
          'user_id'=>auth()->id()
        ]);
                

                }
                      else
                      {
                        //dd('print2');

$insetqnsy = myCompany::where('company_name',request('business_name'))
             ->update([
 'company_name'=>request('business_name'),
          // 'logo'=>'',
          'tin'=>request('tin'),
          'vrn'=>request('vrn'),
          'phone_number'=>request('phone_number'),
          'email'=>request('email'),
          'address'=>request('address'),
           'code'=>request('code'),
          'status'=>'Active',
          'user_id'=>auth()->id()
        ]);
              }
     }

       $code=request('code');
     if(request('profile_web'))
     {
        return redirect()->route('login',compact('code'))->with('success','Registered successfully, Now Login');     
     }else{
        return redirect()->route('company-profile.index')->with('success','Updated successfully');
     }

  
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
