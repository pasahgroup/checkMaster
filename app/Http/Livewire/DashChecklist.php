<?php

namespace App\Http\Livewire;


 use App\Models\orderItem;
 use App\Models\asset;

use App\Models\metadata;
use App\Models\metanameDatatype;
use App\Models\property;
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
use App\Models\answerDescPhoto;

use App\Models\dynamicIndUpdate;
use App\Models\optionalAnswer;
use Livewire\Component;
use DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

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
  public $rad=[];
public $qnID;

  public $qnType;
  public $times;
  public $qnNo;
  public $qn_no;
  public $tstatus;
  public $propArray=[];

public function store(Request $request)
    {
 $rad=$this->rad;
//dd($request->all());
//dd($request->collect());
        //dd($request->filled('idx30'));
//dd($request->input());
 //$request->all();

    $aID = request("aID");
    $qnAID = request("qnAID");
    $indexs = request('index');

$idsf='ids'.$aID;
     $ids = $idsf;
     $ids = request($ids);

 $data = $request->except(['_token','_method','qnID','qnAID','aID','col','prop']);
 //dd($data);
$idxf='idx'.$aID;
//dd($idxf);

    foreach ($data as $key => $value) {

if (str_contains($key,$idxf)) {

   if( !empty($ids))
 {
  array_push($ids,$value);
 }
else{
$ids[] = $value;
}

} 
}
  
if(is_null($ids))
{
    dd('No any data was filled back and Check the field the data!');
}
 //Create 
$prop = request('prop');  
$ind = request("ind");
$col = request("col");

 $current_date = date('Y-m-d');
 $descf='desc'.$aID;
 $desc = $descf;
 $desc = request($desc);

//GET PROPERTY VALUE FROM PROPERTY TABLE
 $propValue = asset::where('id', $aID)->first();
 $answerTableUpdatex=DB::statement('update dynamic_ind_updates set status="Inactive" where datex="'.$current_date .'" and property_id="'.$propValue->property_id.'" and asset_id="'.$aID.'" and metaname_id="'.$propValue->metaname_id.'"');

$answerTableUpdate1=DB::statement('update answers set status="Inactive" where datex="'.$current_date .'" and property_id="'.$propValue->property_id.'" and asset_id="'.$aID.'"');

       if($ids !=null)
     {
        
foreach ($ids as $idx=>$key) {
  $optionalData = optionalAnswer::where('id', $key)->first();
        $insetqnsAns = answer::UpdateOrCreate([
        'property_id'=>$propValue->property_id,
        'metaname_id'=>$propValue->metaname_id,
        'asset_id'=>$aID,
        'indicator_id'=>$optionalData->indicator_id,  
        'opt_answer_id'=>$optionalData->id,       
        'datex'=>$current_date 
      ],[
        
        'answer'=>$optionalData->answer,                 
        'status'=>'Active',
        'action'=>1,
        'user_id'=>auth()->id(),
                
        ]);
$aid=$insetqnsAns->id;
$av=$insetqnsAns->answer;

  //Insert into answerDescTable table
$insetDesc = answerDescPhoto::UpdateOrCreate([
          //'index_id'=>$idy+ $idx,
          'property_id'=>$propValue->property_id,
          'asset_id'=>$aID,
          'metaname_id'=>$propValue->metaname_id,
          'indicator_id'=>$optionalData->indicator_id,
         'answer_id'=>$aid,
          'action'=>1,         
          'user_id'=>auth()->id(),
          //'description'=>$desc[$idy],
          'status'=>'Active',        
        ]);

//End of answerDescTable table

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
//dd($propValue->site_id);
 $insetqns = answerUpdatePhoto::Create([
          'index_id'=>$idy+ $idx,
          'property_id'=>$propValue->property_id,
          'asset_id'=>$aID,
          'metaname_id'=>$propValue->metaname_id,
          'indicator_id'=>$optionalData->indicator_id,
          'answer_id'=>$aid,          
          'user_id'=>auth()->id(),
          'description'=>$desc[$idy],
          'status'=>'Active',        
        ]);
//------------------------------------
$insetqnsx = dynamicIndUpdate::UpdateOrCreate([

'property_id'=>$propValue->property_id,
'asset_id'=>$aID,
'metaname_id'=>$propValue->metaname_id,
'indicator_id'=>$optionalData->indicator_id,
'answer_id'=>$aid,
'opt_answer_id'=>$optionalData->id, 
'datex'=>$current_date,
],
[
       
       'index_id'=>$idy+ $idx,                              
        'answer_value'=>$av,
          'value'=>1,              
          'user_id'=>auth()->id(),
          'status'=>'Active',                 
                    
        ]);
   }

  }
} 


// Clear answerupdatephoto db2_tables(connection)

$attachmentf='attachment'.$aID;
$attach = request($attachmentf);
 // $attachment = request('attachment');  
//dd($attach);
   if($attach){
   
                //$attach = request('attachment'); 
              
                foreach($attach as $key=>$attached){

              if(isset($attach[$key + $idx]) !=null)
        {


}
    }
     }
      } 
     }

$descDatas = answerUpdatePhoto::get();

foreach ($descDatas as $key) {
foreach ($desc as $idy=>$value) {

  if($key->index_id ==$idy)
  {
    $value = trim(preg_replace('/\s\s+/', ' ', $value));
  
  $insetqnsy = answerUpdatePhoto::where('index_id',$key->index_id)         
             ->update([
           'description'=>$value,
            ]);

         }   

  }

// Update the Image table
$attachmentf='attachment'.$aID;
$attach = request($attachmentf);
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
$answerTableUpdate=DB::statement('update answer_desc_photos a,answer_update_photos ap set a.description=ap.description,a.image=ap.image where a.answer_id=ap.answer_id and a.action=1');
//Update dynamic_ind_updates
$answerTableUpdate=DB::statement('update dynamic_ind_updates d,answer_update_photos ap set d.description=ap.description,d.image=ap.image where d.property_id=ap.property_id and d.asset_id=ap.asset_id and d.indicator_id=ap.indicator_id');

$qnsTableUpdate=DB::statement('update qns_appliedtos q,answer_update_photos ap set q.'.$col.'=1 where q.metaname_id=ap.metaname_id and q.indicator_id=ap.indicator_id');
//
 
 $deleteAnswerTable = answerUpdatePhoto::where('user_id',auth()->id())->first();
        if($deleteAnswerTable){
//  $deletev = answerUpdatePhoto::where('user_id',auth()->id())->delete();      
//   $isDataAvailable = answerUpdatePhoto::get();
//   if($isDataAvailable->isEmpty())
//   {
// $flashanswerTable=DB::statement('truncate table answer_update_photos'); 
//   }  
        
    }
        else{
            return redirect()->back()->with('error','Something went wrong with this Truncatating answerUpdatePhoto');
    }



$updateqnsF = answerDescPhoto::where('action',1) 
             ->where('description','Nill')            
             ->update([
            'description'=>""
            ]);

$updateqnsF = answerDescPhoto::where('action',1)             
             ->update([
            'action'=>0
            ]);

   return redirect()->back()->with('success','Submitted Successfully');
    }


//RENDER METHOD

    public function render(Request $request)
    {       
$qnID='idx'.$this->qnID;
//$qnID=$this->qnID;
 //dd($qnID);

      $current_date = date('Y-m-d');
     $pos_id=$this->metaname_id;
     $qnType=$this->qnType;
     $times=$this->qnNo;

    $qn_no=$this->qn_no;
  //$idx=$this->idx30;

    // $indicators = setIndicator::get();
      $metanames = metaname::get();
      $metadatas = optionalAnswer::get();
//Assign Activities to userActivities
 $userActitivities = userActivity::join('metanames','metanames.id','user_activities.activity_id')
 ->where('user_activities.sys_user_id',auth()->id())
 ->where('user_activities.status','Active')
 //->join('users','sales.user_id','users.id')
 ->select('metanames.id','metanames.metaname_name')
 ->get();

//dd($metadatas);

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

    $first = collect($userActitivities);
    $second = collect($userActitivitiesf);   
    $third = collect($userActitivitiesff);

$acts = $first->merge($second);
$acts = $acts->merge($third);
$acts = $acts->unique('metaname_name');
 //$acts = $acts->groupBy('metaname_name');
// $models = $acts::select('metaname_name');

$a=array();
  foreach ($acts as $act) {
    $a[]=$act->id;
  }
//dd($userActitivitiesf);

   // $pp = asset::join('user_properties','user_properties.property_id','assets.property_id')
   // ->where('assets.status','Active')   
   // ->where('assets.asset_name','!=',"")
   // ->where('user_properties.sys_user_id',auth()->id())
   // ->whereIn('assets.metaname_id',$a)
   // ->select('assets.id','assets.property_id','assets.metaname_id','assets.asset_name')
   //   ->orderBy('assets.id')->get();

 $pp = asset::where('assets.status','Active')   
   ->where('assets.asset_name','!=',"")
   ->where('assets.property_id',$departments->property_id)
   ->whereIn('assets.metaname_id',$a)
   ->select('assets.id','assets.property_id','assets.metaname_id','assets.asset_name')
     ->orderBy('assets.id')->get();

//Query Indicators 
  $qnsf = setIndicator::where('qns','!=',"")
  ->orderBy('id')->get();

  $col='col'.auth()->id();
$column=Schema::hasColumn('qns_appliedtos',$col);
 
 if ($column) {
        //dd('exists');
    }
    else
    {
Schema::table('qns_appliedtos', function($table) use ($col)
{
    $table->boolean($col)->after('user_id')->default(0);
});
}
//End of column


   $qns = qnsAppliedto::join('set_indicators','qns_appliedtos.indicator_id','set_indicators.id')
   ->where('set_indicators.status','Active')   
   ->where('set_indicators.qns','!=',"")
   ->whereIn('qns_appliedtos.metaname_id',$a)
   ->select('qns_appliedtos.metaname_id','qns_appliedtos.'.$col.'','set_indicators.id','set_indicators.qns')
     ->orderBy('set_indicators.id')->get(); 

//dd($qns);
    $datatypes = datatype::get();
    
   $checkQnsProp = DB::select('select d.property_id,d.metaname_id,d.asset_id,d.value from dynamic_ind_updates d,assets p where d.property_id=p.property_id and d.metaname_id=p.metaname_id and d.asset_id=p.id and d.datex="'.$current_date.'" and d.status="Active" group by d.asset_id');  
//dd($checkQnsProp);

        $checkQns = DB::select('select d.opt_answer_id,d.property_id,d.metaname_id,d.asset_id,d.indicator_id,d.answer_value,d.description,d.image,d.value from dynamic_ind_updates d,assets p where d.property_id=p.property_id and d.metaname_id=p.metaname_id and d.asset_id=p.id and d.datex="'.$current_date.'" and d.status="Active"');  
//dd($checkQns);

      return view('livewire.dash-checklist',compact('metadatas','datatypes','metanames','pp','qns','userActitivities','acts','col','checkQnsProp','checkQns'))
      ->layout('layouts.app');

  }
}