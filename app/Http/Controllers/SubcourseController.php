<?php

namespace App\Http\Controllers;

use App\Models\subcourse;
use App\Models\course;
use App\Models\title;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoresubcourseRequest;
use App\Http\Requests\UpdatesubcourseRequest;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;

class SubcourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
          $courses = course::where('status','Active')->get();
          $titles = title::where('status','Active')
          ->get();
           $subcourses = subcourse::join('courses','courses.id','subcourses.course_id')
           ->select('subcourses.*','courses.course_name')
           ->get();
         //dd($subcourses);
        //  $metadatas = course::where('status','Active')->get();
        // $metanameDatatypes = metanameDatatype::where('status','Active')->get();

            return view('admin.settings.courses.subcourse',compact('courses','subcourses','titles'));
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
                     $path =$attached->storeAs('public/subcourse/', $imageToStore);
                    //$path = $attached->storeAs('public/uploads/', $imageToStore);

                    
    $courses = subcourse::UpdateOrCreate([
        'subcourse_name'=>request('subcourse_name'),
          'title_name'=>request('title_name'),
    ],[
        'course_id'=>request('course_id'),
        'course_name'=>request('course_name'),
        'subcourse_description'=>request('subcourse_description'),
         'subcourse_cost'=>request('subcourse_cost'),
           'subcourse_duration'=>request('subcourse_duration'),
            'unit'=>request('unit'),
            'photo'=>$imageToStore,
         'status'=>request('status'),
          'user_id'=>auth()->id()
    ]);

        }
}
else
{
 
     $courses = subcourse::UpdateOrCreate([
        'subcourse_name'=>request('subcourse_name'),
          'title_name'=>request('title_name'),
    ],[
        'course_id'=>request('course_id'),
        'course_name'=>request('course_name'),
        'subcourse_description'=>request('subcourse_description'),
         'subcourse_cost'=>request('subcourse_cost'),
           'subcourse_duration'=>request('subcourse_duration'),
                   'unit'=>request('unit'),
         'status'=>request('status'),
          'user_id'=>auth()->id()
        ]);

     }


//dd(request('course_id'));


 $course = course::where('id',request('course_id'))->first();
     $account = subcourse::where('course_id',request('course_id'))
     ->where('id',$courses->id)
     ->update([
                // 'total'=> $cash_total + request('amount_received')
                 'course_name'=>$course->course_name,
            ]);


     return redirect()->back()->with('success','Subcourse created successfly');
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
        
         $courses = subcourse::where('id',$id)->first();
             //dd($courses);
    


 $course = course::where('id',request('course_id'))->first();
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
                     $path =$attached->storeAs('public/subcourse/', $imageToStore);
                    //$path = $attached->storeAs('public/uploads/', $imageToStore);


    $account = subcourse::where('course_id',request('course_id'))
     ->where('id',$courses->id)
     ->update([
                // 'total'=> $cash_total + request('amount_received')
                 'course_name'=>$course->course_name,
                  'photo'=>$imageToStore,
                    'title_name'=>request('title_name'),
            'subcourse_name'=>request('subcourse_name'),
             'subcourse_description'=>request('subcourse_description'),
              'subcourse_cost'=>request('subcourse_cost'),
               
                  'subcourse_duration'=>request('subcourse_duration'),
                   'unit'=>request('unit'),


               'status'=>request('status'),
             'user_id'=>auth()->id()
            ]);
//dd($courses->photo);


     //Storage::delete('public/subcourse/'.$course->photo);
        Storage::disk('public')->delete("subcourse/$courses->photo");
        }
}
else
{

     $account = subcourse::where('course_id',request('course_id'))
     ->where('id',$courses->id)
     ->update([
                // 'total'=> $cash_total + request('amount_received')
                 'course_name'=>$course->course_name,

            'title_name'=>request('title_name'),
            'subcourse_name'=>request('subcourse_name'),
             'subcourse_description'=>request('subcourse_description'),
              'subcourse_cost'=>request('subcourse_cost'),
               
                  'subcourse_duration'=>request('subcourse_duration'),
                   'unit'=>request('unit'),


               'status'=>request('status'),
             'user_id'=>auth()->id()
            ]);

     }













     return redirect()->back()->with('error','Something went wrong with this course');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\subcourse  $subcourse
     * @return \Illuminate\Http\Response
     */
   public function destroy($id)
    {
        $banks = subcourse::where('id',$id)->first();
        if($banks){
            $banks->delete();
              DB::statement("delete from subcourses where id=$id");

            return redirect()->back()->with('success','subcourse permanent deleted successfully');
        }
        else{
            return redirect()->back()->with('error','Something went wrong with this bank name');
        }
    }

}
