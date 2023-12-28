<?php

namespace App\Http\Controllers;

use App\Models\web;
use App\Http\Controllers\Controller;
use App\Http\Requests\StorewebRequest;
use App\Http\Requests\UpdatewebRequest;

use App\Models\subcourse;
use App\Models\course;
use App\Models\bank;
use App\Models\gallary;

class WebController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //dd('print');
       
             $gallaries = gallary::where('status','Active')->get();
          $courses = course::where('status','Active')->get();
         //dd($courses);
        //return view('website.index.index');
  $subcourses = subcourse::join('courses','courses.id','subcourses.course_id')
           ->whereNotNull('subcourses.photo')
           ->select('subcourses.*','courses.course_name')
           ->get();
//dd($subcourses);
         return view('website.index.index',compact('gallaries','courses','subcourses'));
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
     * @param  \App\Http\Requests\StorewebRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorewebRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\web  $web
     * @return \Illuminate\Http\Response
     */
    public function show(web $web)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\web  $web
     * @return \Illuminate\Http\Response
     */
    public function edit(web $web)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatewebRequest  $request
     * @param  \App\Models\web  $web
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatewebRequest $request, web $web)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\web  $web
     * @return \Illuminate\Http\Response
     */
    public function destroy(web $web)
    {
        //
    }
}
