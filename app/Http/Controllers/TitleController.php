<?php

namespace App\Http\Controllers;

use App\Models\title;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoretitleRequest;
use App\Http\Requests\UpdatetitleRequest;
use Illuminate\Http\Request;
use DB;

class TitleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         
           $titles = title::get();
         //dd($courses);
        //  $metadatas = course::where('status','Active')->get();
        // $metanameDatatypes = metanameDatatype::where('status','Active')->get();

            return view('admin.settings.courses.title',compact('titles'));
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
     * @param  \App\Http\Requests\StoretitleRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
             // $property='asset_';
        // $metadatas = request('metadata_name');
//dd(request('status'));


        $courses = title::UpdateOrCreate([
        'title_name'=>request('title_name'),
    ],[
         'status'=>request('status'),
          'user_id'=>auth()->id()
    ]);

     return redirect()->back()->with('success','Metaname created successfly');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\title  $title
     * @return \Illuminate\Http\Response
     */
    public function show(title $title)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\title  $title
     * @return \Illuminate\Http\Response
     */
    public function edit(title $title)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatetitleRequest  $request
     * @param  \App\Models\title  $title
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
 $course = title::where('id',$id)->first();
             // dd($course);
        if($course){
           $course->update([
            'title_name'=>request('title_name'),
            'status'=>request('status'),
             'user_id'=>auth()->id()
           ]);
           return redirect()->back()->with('success','Title updated successfully');
    }
     return redirect()->back()->with('error','Something went wrong with this course');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\title  $title
     * @return \Illuminate\Http\Response
     */
    public function destroy(title $title)
    {
        //
    }
}
