<?php

namespace App\Http\Controllers;

use App\Models\course;
use App\Http\Controllers\Controller;
use App\Http\Requests\StorecourseRequest;
use Illuminate\Http\Request;
use DB;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $courses = course::get();
         //dd($courses);
        //  $metadatas = course::where('status','Active')->get();
        // $metanameDatatypes = metanameDatatype::where('status','Active')->get();

            return view('admin.settings.courses.course',compact('courses'));
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
     * @param  \App\Http\Requests\StorecourseRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         // $property='asset_';
        // $metadatas = request('metadata_name');
//dd(request('status'));


        $courses = course::UpdateOrCreate([
        'course_name'=>request('course_name'),
    ],[
        'course_description'=>request('course_description'),
         'course_cost'=>request('course_cost'),
           'course_duration'=>request('course_duration'),
                   'unit'=>request('unit'),

         'status'=>request('status'),
          'user_id'=>auth()->id()
    ]);

     return redirect()->back()->with('success','Metaname created successfly');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\course  $course
     * @return \Illuminate\Http\Response
     */
    public function show(course $course)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\course  $course
     * @return \Illuminate\Http\Response
     */
    public function edit(course $course)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatecourseRequest  $request
     * @param  \App\Models\course  $course
     * @return \Illuminate\Http\Response
     */
       public function update(Request $request,$id)
    {
      $course = course::where('id',$id)->first();
             // dd($course);
        if($course){
           $course->update([
            'course_name'=>request('course_name'),
             'course_description'=>request('course_description'),
              'course_cost'=>request('course_cost'),
               
                  'course_duration'=>request('course_duration'),
                   'unit'=>request('unit'),


               'status'=>request('course_status'),
             'user_id'=>auth()->id()
           ]);
           return redirect()->back()->with('success','Course updated successfully');
    }
     return redirect()->back()->with('error','Something went wrong with this course');
}

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\course  $course
     * @return \Illuminate\Http\Response
     */
     public function destroy($id)
    {
        $banks = course::where('id',$id)->first();
        if($banks){
            $banks->delete();
              DB::statement("delete from courses where id=$id");

            return redirect()->back()->with('success','course permanent deleted successfully');
        }
        else{
            return redirect()->back()->with('error','Something went wrong with this bank name');
        }
    }
}
