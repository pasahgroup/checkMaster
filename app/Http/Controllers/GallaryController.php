<?php

namespace App\Http\Controllers;

use App\Models\gallary;
use App\Models\title;
use App\Models\course;
use App\Models\subcourse;


use App\Http\Controllers\Controller;
use App\Http\Requests\StoregallaryRequest;
use App\Http\Requests\UpdategallaryRequest;
use Illuminate\Http\Request;

class GallaryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      //   $courses =course::groupBy('course_name')
      //    ->get();
      //    $subcourses = subcourse::groupBy('subcourse_name')
      //    ->get();
      //       $titles = title::groupBy('title_name')
      //    ->get();
      // // dd($subcourses);

      //   return view('admin.gallaries.gallary',compact('courses','subcourses','titles'));


           $courses = course::where('status','Active')->get();
           $subcourses = subcourse::where('status','Active')->get();

          $titles = title::where('status','Active')
          ->get();
           $gallaries = gallary::join('courses','courses.id','gallaries.course_id')
           ->join('subcourses','subcourses.id','gallaries.subcourse_id')
           ->where('gallaries.status','Active')
           ->select('gallaries.*','courses.course_name','subcourses.subcourse_name')
           ->get();
         //dd($gallaries);

        //  $metadatas = course::where('status','Active')->get();
        // $metanameDatatypes = metanameDatatype::where('status','Active')->get();

            return view('admin.settings.courses.gallary',compact('courses','gallaries','subcourses','titles'));
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
     * @param  \App\Http\Requests\StoregallaryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

           // dd('print photos');


        if(request('attachment')){
            $attach = request('attachment');
            foreach($attach as $attached){

             // dd($attach);

  // Get filename with extension
                     $fileNameWithExt =$attached->getClientOriginalName();
                     // Just Filename
                     $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                     // Get just Extension
                     $extension = $attached->getClientOriginalExtension();
                     //Filename to store
                     $imageToStore = $filename.'_'.time().'.'.$extension;
                     //upload the image
                     $path =$attached->storeAs('public/img/', $imageToStore);
                    //$path = $attached->storeAs('public/uploads/', $imageToStore);

                    

 $insetqns = gallary::UpdateOrCreate([
          'course_id'=>request('category_id'),
          'subcourse_id'=>request('subcategory_id'),
      ],
          [      
           'photo'=>$imageToStore,
          'title'=>request('title_name'),          
          'subcourse_id'=>request('subcategory_id'),
          'video_url'=>request('video_url'),
          'description'=>request('description'),
            'status'=>request('status'),
          'user_id'=>auth()->id()
        ]);

         }
}
else
{
     $insetqns = gallary::UpdateOrCreate([
          'course_id'=>request('category_id'),
          'subcourse_id'=>request('subcategory_id'),
      ],
          [      
          'title'=>request('title_name'),          
          'subcourse_id'=>request('subcategory_id'),
          'video_url'=>request('video_url'),
          'description'=>request('description'),
            'status'=>request('status'),
          'user_id'=>auth()->id()
        ]);


     }
     return redirect()->route('gallary.index')->with('success','Saved successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\gallary  $gallary
     * @return \Illuminate\Http\Response
     */


    public function update(Request $request,$id)
    {

    //dd(request('status'));

        if(request('attachment')){
            $attach = request('attachment');
            foreach($attach as $attached){

          // dd($attach);

  // Get filename with extension
                     $fileNameWithExt =$attached->getClientOriginalName();
                     // Just Filename
                     $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                     // Get just Extension
                     $extension = $attached->getClientOriginalExtension();
                     //Filename to store
                     $imageToStore = $filename.'_'.time().'.'.$extension;
                     //upload the image
                     $path =$attached->storeAs('public/img/', $imageToStore);
                    //$path = $attached->storeAs('public/uploads/', $imageToStore);

                    

  $gallary = gallary::where('id',$id)
     ->update([
    
         'course_id'=>request('category_id'),
          'subcourse_id'=>request('subcategory_id'),
         'photo'=>$imageToStore,
          'title'=>request('title_name'),          
          'subcourse_id'=>request('subcategory_id'),
          'video_url'=>request('video_url'),
          'description'=>request('description'),
          'status'=>request('status'),
          'user_id'=>auth()->id()
]);

         }
}
else
{

   $gallary = gallary::where('id',$id)
     ->update([
    
         'course_id'=>request('category_id'),
          'subcourse_id'=>request('subcategory_id'),
          'title'=>request('title_name'),          
          'subcourse_id'=>request('subcategory_id'),
          'video_url'=>request('video_url'),
          'description'=>request('description'),
            'status'=>request('status'),
          'user_id'=>auth()->id()
]);

     }
        return redirect()->back()->with('success','Updated successfully');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\gallary  $gallary
     * @return \Illuminate\Http\Response
     */
    public function edit(gallary $gallary,$id)
    {
       $gallary = gallary::where('id',$id)
     ->update([
    
        'status'=>"Inactive",
        
]);
           return redirect()->back()->with('success','Disabled successfully');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdategallaryRequest  $request
     * @param  \App\Models\gallary  $gallary
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
//             $gallary = gallary::where('id',$id)
//      ->update([
    
//         'bank_name'=>request('bank_name'),
//         'swift_code'=>request('swift_code'),
//         'country'=>request('country'),
//         'account_no'=>request('account_no'),
//          'account_name'=>request('account_name'),
//                'user_id'=>auth::id()  
// ]);
         //  return redirect()->back()->with('success','Subcourse updated successfully');
   

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\gallary  $gallary
     * @return \Illuminate\Http\Response
     */
    public function destroy(gallary $gallary)
    {
        //
    }
}
