<?php

namespace App\Http\Livewire;


 use App\Models\orderItem;
 use App\Models\property;

use App\Models\metadata;
use App\Models\metanameDatatype;
use App\Models\site;
use App\Models\metaname;
use App\Models\datatype;

use App\Models\setIndicator;
use App\Models\qnsAppliedto;

use App\Models\answer;
use App\Models\userActivity;
use App\Models\activityRole;
use App\Models\userRole;

use App\Models\departmentRole;
use App\Models\user;

use App\Models\answerUpdatePhoto;
use App\Models\optionalAnswer;
use Livewire\Component;
use DB;
use Illuminate\Http\Request;

class DashChecklist extends Component
{

 public $departments = "";
       public $post;
      public $message = "";
      public $act = [];
      public $indicator_id;

  public $metaname_id;
   public $site_id;
   public $names=[];
  public $ids=[];
   public $desc=[];
   public $prop=[];
   public $attachment=[];
 
  public $properties;

       public $qnType;
        public $times;
        public $qnNo;
           public $qn_no;

            public $propArray=[];

public function store(Request $request)
    {
    
    $indexs = request('index');
    $ids = request('ids');          
    $attachment = request('attachment');
    $desc = request("desc");

   $prop = request('prop');  
   $pd = request("pd");   

  // $desc=$this->desc;
//dd($attachment);

// $descf='desc'.$pd;
// $desc = $descf;

       if($ids !=null)
     {
        
foreach ($ids as $idx=>$key) {
  $optionalData = optionalAnswer::where('id', $key)->first();

        $insetqns = answer::Create([
        'indicator_id'=>$optionalData->indicator_id,
        'answer'=>$optionalData->answer,
        'property_id'=>$pd,         
        'status'=>'Active',
        'action'=>1,
        'user_id'=>auth()->id()        
        ]);
$aid=$insetqns->id;

//dd($desc);


foreach($desc as $idy=>$value) {

  if($desc[$idy] ==null)
  {
$desc[$idy]='Nill';
  }

  if(isset($desc[$idy]) !=null)
        {

    $item = answerUpdatePhoto::where('answer_id',$aid)
    ->first();     

if($item == null)
{

 $insetqns = answerUpdatePhoto::Create([
          'index_id'=>$idy+ $idx,
          'answer_id'=>$aid,
           'user_id'=>auth()->id(),
          'description'=>$desc[$idy],
          'status'=>'Active',        
        ]);
}

  }
} 


// Clear answerupdatephoto db2_tables(connection)

$attachmentf='attachment'.$pd;
$attach = request('attachment');
 // $attachment = request('attachment');  
//dd($attach);
   if($attach){
   
                //$attach = request('attachment'); 
              
                foreach($attach as $key=>$attached){

              if(isset($attach[$key + $idx]) !=null)
        {

                     // // Get filename with extension
                     // $fileNameWithExt =$attach[$key + $idx]->getClientOriginalName();
              
                     // // Just Filename
                     // $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                     // // Get just Extension
                     // $extension = $attach[$key + $idx]->getClientOriginalExtension();
                     // //Filename to store
                     // $imageToStore = $filename.'_'.time().'.'.$extension;
                     // //upload the image
                     // $path =$attach[$key + $idx]->storeAs('public/img/', $imageToStore);

}
    }
     }
      } 
     }

$descDatas = answerUpdatePhoto::get(); 
//dd($descDatas);

foreach ($descDatas as $key) {
foreach ($desc as $idy=>$value) {

  if($key->index_id ==$idy)
  {
  $insetqnsy = answerUpdatePhoto::where('index_id',$key->index_id)         
             ->update([
           'description'=>$value,
            ]);

         }    

  }


// Update the Image table


$attachmentf='attachment'.$pd;
$attach = request('attachment');

   if($attach){

//dd($attach);
// foreach ($descDatas as $key) {
   foreach($attach as $imgkey=>$attached){

  if($key->index_id ==$imgkey)
  {


  // Get filename with extension
                     $fileNameWithExt =$attach[$imgkey]->getClientOriginalName();
              
                     // Just Filename
                     $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                     // Get just Extension
                     $extension = $attach[$imgkey]->getClientOriginalExtension();
                     //Filename to store
                     $imageToStore = $filename.'_'.time().'.'.$extension;
                     //upload the image
                     $path =$attach[$imgkey]->storeAs('public/img/', $imageToStore);


  $insetqnsy = answerUpdatePhoto::where('index_id',$key->index_id)         
             ->update([
           'image'=>$imageToStore,
            ]);

         }    

  }
}
}

//Update answer table
$answerTableUpdate=DB::statement('update answers a,answer_update_photos ap set a.description=ap.description,a.image=ap.image where a.id=ap.answer_id and a.action=1');


$deleteAnswerTable = answerUpdatePhoto::where('user_id',auth()->id())->first();
        if($deleteAnswerTable){
 $deletev = answerUpdatePhoto::where('user_id',auth()->id())->delete();      
  $isDataAvailable = answerUpdatePhoto::get();
  if($isDataAvailable->isEmpty())
  {
$flashanswerTable=DB::statement('truncate table answer_update_photos'); 
  }  
        
    }
        else{
            return redirect()->back()->with('error','Something went wrong with this Truncatating answerUpdatePhoto');
    }
//xxxxxxxxxxxxxxx

$updateqnsF = answer::where('action',1) 
             ->where('description','Nill')            
             ->update([
            'description'=>""
            ]);

$updateqnsF = answer::where('action',1)             
             ->update([
            'action'=>0
            ]);


   return redirect()->back()->with('success','Submitted Successfully');
    }


    public function render(Request $request)
    {
     $pos_id=$this->metaname_id;
     $qnType=$this->qnType;
     $times=$this->qnNo;

    $qn_no=$this->qn_no;


          //  $indicators = setIndicator::get();
      $metanames = metaname::get();
      $metadatas = optionalAnswer::get();



 $userActitivities = userActivity::join('metanames','metanames.id','user_activities.activity_id')
 ->where('user_activities.sys_user_id',auth()->id())
 ->where('user_activities.status','Active')
 //->join('users','sales.user_id','users.id')
 ->select('metanames.id','metanames.metaname_name')
 ->get();


$departments=user::where('id',auth()->id())->first();

 $userActitivitiesf = userRole::join('activity_roles','activity_roles.role_id','user_roles.role_id')
 ->join('metanames','metanames.id','activity_roles.activity_id')
 ->where('user_roles.sys_user_id',auth()->id())
->where('activity_roles.status','Active')
 //->join('users','sales.user_id','users.id')
->select('metanames.id','metanames.metaname_name')
 ->get();

//dd($departments->department_id);
 $userActitivitiesff = departmentRole::join('activity_roles','activity_roles.role_id','department_roles.role_id')
 ->join('metanames','metanames.id','activity_roles.activity_id')
 ->where('department_roles.department_id',$departments->department_id)
->where('activity_roles.status','Active')
->select('metanames.id','metanames.metaname_name')
 ->get();

//dd($userActitivitiesff);

    $first = collect($userActitivities);
    $second = collect($userActitivitiesf);   
    $third = collect($userActitivitiesff);

$acts = $first->merge($second);
$acts = $acts->merge($third);
$acts = $acts->unique('metaname_name');
 //$acts = $acts->groupBy('metaname_name');
// $models = $acts::select('metaname_name');
 //dd($acts);
$a=array();
//$a[]=1;

  foreach ($acts as $act) {
    $a[]=$act->id;
  }

//  $pp = property::where('property_name','!=',"")
// ->whereIn('metaname_id',$a)
//       ->orderBy('id')->get();

   $pp = property::join('user_sites','user_sites.site_id','properties.site_id')
   ->where('properties.status','Active')   
   ->where('properties.property_name','!=',"")
   ->where('user_sites.sys_user_id',auth()->id())
   ->whereIn('properties.metaname_id',$a)
   ->select('properties.id','properties.metaname_id','properties.property_name')
     ->orderBy('properties.id')->get();
//dd($pp);

//Query Indicators 
  $qnsf = setIndicator::where('qns','!=',"")
  ->orderBy('id')->get();
//$pp = DB::select('select metaname_id,property_name from properties where metaname_id in(6,1)');

   $qns = qnsAppliedto::join('set_indicators','qns_appliedtos.indicator_id','set_indicators.id')
   ->where('set_indicators.status','Active')   
   ->where('set_indicators.qns','!=',"")
   ->whereIn('qns_appliedtos.metaname_id',$a)
   ->select('qns_appliedtos.metaname_id','set_indicators.id','set_indicators.qns')
     ->orderBy('set_indicators.id')->get(); 
//dd($qns);

$qnsx = DB::select('select * from set_indicators s,qns_appliedtos q,metanames m where s.id=q.indicator_id and m.id=q.metaname_id and q.metaname_id in(13,1)');
   
 $metadatasx = DB::select('select * from optional_answers where indicator_id in(select q.indicator_id from set_indicators s,qns_appliedtos q,metanames m where s.id=q.indicator_id and q.metaname_id in(13,1))');
    //dd($metadatasx);
     

  // $metadatas = metadata::where('status','Active')
  //         ->orWhere('status','Stop')
  //         ->get();
          $datatypes = datatype::get();
    
        //return view('admin.settings.metadata.metadata',compact('metadatas','datatypes'));


      return view('livewire.dash-checklist',compact('metadatas','datatypes','metanames','pp','qns','userActitivities','acts'))
      ->layout('layouts.app');

    //    // return view('livewire.department');

 // return view('livewire.show',compact('customers','items','orders','orderings','pos_id','order_items','po','ewallete'))w
 // ->layout('livewire.showFrame');

    // }

    // else{
    //     session()->flash('message', 'Users Deleted Successfully.');
    //     // return redirect()->back()->with('error','No such order');
    // }

  }
}