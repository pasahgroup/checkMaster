<?php

namespace App\Http\Controllers;

use App\Models\Property;
use App\Models\keyIndicator;
use App\Models\answer;

// use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

use Carbon\Carbon;
use App\Models\expenseCategory;
use App\Models\direct_expenses;
use App\Models\metaname;
use Illuminate\Support\Str;
//use PHPJasper\PHPJasper;
use JasperPHP\JasperPHP as JasperPHP;
use Illuminate\Http\Request;
use PHPJasper\PHPJasper;

 require base_path().'/vendor/autoload.php';
 //require base_path().'/vendor/autoload.php';
include_once(app_path().'/jrf/PHPJasperXML.inc.php');
 //include_once(app_path().'/jrf/tcpdf/tcpdf.php');
  //include_once(app_path().'/fpdf184/mysql_table.php');
  //include_once(app_path().'/fpdf184/pdfg.php');
 // use PHPJasperXML;
  require base_path().'/vendor/autoload.php';
 use PHPJasperXML;
//use PDF;
class PropertyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $properties = Property::where('status','Active')->get();
      //dd($properties);
    return view('admin.settings.properties.property',compact('properties'));
    }

 public function dashProperty($id)
    {
      $properties = Property::where('status','Active')->get();
      //$propertyName = Property::where('id',1)->first();
    //dd($properties);
    return view('admin.settings.properties.dash.dash-property',compact('properties'));
    }



 public function reportProperty(Request $request,$id)
    {
		//dd($id);
    //RESERVED CODE FOR URL
      //Select key indicators
        //dd(request()->segments());
        // $current_url = $this->url();
        $segments = request()->segments();
        $last  = end($segments);
$first = reset($segments);
$url="http://localhost:8000/report-property/1/dashboard";
 $segmentsExploide = explode('/', $url);
//END OF RESERVED CODE FOR URL

       $uri =request()->path();

      $keyIndicators = keyIndicator::get();
      $metanames = metaname::get();
//dd($metanames);
    $current_date = date('Y-m-d');
    $properties = Property::where('id',$id)
      ->where('status','Active')->first();
     //Daily Report
    $reportDailyData=DB::select('select a.property_id,a.metaname_id,m.metaname_name,a.indicator_id,a.asset_id, a.opt_answer_id,a.answer,o.answer_classification from answers a,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.property_id="'.$id.'" and a.opt_answer_id=o.id and a.datex="'.$current_date.'"');
    //$reportDailyData2=DB::select('select a.property_id,a.metaname_id,m.metaname_name,a.indicator_id,a.asset_id, a.opt_answer_id,a.answer,o.answer_classification from answers a,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.property_id="'.$id.'" and a.opt_answer_id=o.id and a.datex="'.$current_date.'"');

    $reportDailyReader=DB::select('select a.id,a.property_id,p.property_name,a.metaname_id,m.metaname_name,a.answer,a.indicator_id,s.qns,a.asset_id,t.asset_name,u.name, a.opt_answer_id,o.answer_classification,a.datex from answers a,properties p,set_indicators s,users u,assets t,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.user_id=u.id and a.asset_id=t.id and a.indicator_id=s.id and a.opt_answer_id=o.id and p.id=a.property_id and a.datex="'.$current_date.'" and a.property_id="'.$id.'"');
//dd($reportDailyData2);

$dataDaily = collect($reportDailyData);
$dailyMetaCollects=$dataDaily->groupBy('metaname_name');
$roomDaily = $dataDaily->where('metaname_name','Room')
   ->whereIn('answer_classification',['Bad','Critical']);
   $badDaily=$roomDaily->where('answer_classification','Bad')->count();
   $criticalDaily=$roomDaily->where('answer_classification','Critical')->count();
//dd($roomDaily);
    //Weekly Report
$reportWeeklyData=DB::select('select a.property_id,a.metaname_id,m.metaname_name,a.indicator_id,a.asset_id, a.opt_answer_id,a.answer,o.answer_classification from answers a,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.property_id="'.$id.'" and a.opt_answer_id=o.id and WEEK(a.datex)=WEEK(NOW())');

$dataWeekly = collect($reportWeeklyData);
$weeklyMetaCollects=$dataWeekly->groupBy('metaname_name');
$roomWeekly = $dataWeekly->where('metaname_name','Room')
   ->whereIn('answer_classification',['Bad','Critical']);
   $badWeekly=$roomWeekly->where('answer_classification','Bad')->count();
   $criticalWeekly=$roomWeekly->where('answer_classification','Critical')->count();

    //Monthly Report
$reportMonthlyData=DB::select('select a.property_id,a.metaname_id,m.metaname_name,a.indicator_id,a.asset_id, a.opt_answer_id,a.answer,o.answer_classification from answers a,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.property_id="'.$id.'" and a.opt_answer_id=o.id and month(a.datex)=month(NOW())');

 $dataMonthly = collect($reportMonthlyData);
$monthlyMetaCollects=$dataMonthly->groupBy('metaname_name');
$roomMonthly = $dataMonthly->where('metaname_name','Room')
   ->whereIn('answer_classification',['Bad','Critical']);
   $badMonthly=$roomMonthly->where('answer_classification','Bad')->count();
   $criticalMonthly=$roomMonthly->where('answer_classification','Critical')->count();

     if(request('search') || request('print')){
		$metaArray=array();
		 $keyArray=array();

     $start_d = substr(request('date'),0,10);
        $start_date = Carbon::parse($start_d)->format('Y-m-d').' 00:00:00';
        $end_d = substr(request('date'),-10);
        $end_date = Carbon::parse($end_d)->format('Y-m-d').' 23:59:00';

	 //Metaname Array creation
	 $metaNames=metaname::get();
	 $collectAllMeta = collect($metaNames);

	 //Metaname Array creation
	 $keyNames=keyIndicator::get();
	 $collectAllKey = collect($keyNames);
	 //dd($metaNames);

	//The Request is metaArray
	if(request('metaname_search')){
		if(request('metaname_search')=="All")
		{
 foreach ($collectAllMeta as $metas) {
    $metaArray[]=$metas->metaname_name;
   }
		}
		else{
		$metax=$collectAllMeta->where('metaname_name',request('metaname_search'));
		foreach ($metax as $metac) {
    $metaArray[]=$metac->metaname_name;
   }
	 }
}

		//The Request is KeyIndicator
	if(request('indicator_search')){
		if(request('indicator_search')=="All")
		{
 foreach ($collectAllKey as $keys) {
    $keyArray[]=$keys->key_name;
   }
		}
		else{
		$keysx=$collectAllKey->where('key_name',request('indicator_search'));
		foreach ($keysx as $keyc) {
    $keyArray[]=$keyc->key_name;
   }
	 }
}


//End of Request
	 $reportDailyReader = answer::join('properties','answers.property_id','properties.id')
	 ->join('set_indicators','answers.indicator_id','set_indicators.id')
	  ->join('users','answers.user_id','users.id')
	   ->join('assets','answers.asset_id','assets.id')
	    ->join('optional_answers','answers.opt_answer_id','optional_answers.id')
		->join('metanames','answers.metaname_id','metanames.id')

		->where('answers.property_id',$id)
    ->whereColumn('answers.indicator_id',"optional_answers.indicator_id")
    ->whereIn('metanames.metaname_name',$metaArray)
	  ->whereIn('optional_answers.answer_classification',$keyArray)
     //->where('set_indicators.qns','!=',"")
    ->whereBetween('datex',[$start_date, $end_date])
   ->select('answers.id','answers.property_id','answers.indicator_id','answers.metaname_id','answers.asset_id','answers.opt_answer_id','answers.answer','answers.datex','optional_answers.answer_classification','metanames.metaname_name','assets.asset_name','properties.property_name','set_indicators.qns','users.name')
   ->orderBy('set_indicators.id')
	 ->get();
   }
   else{
	   //dd('Not role');
   }
   //dd($metaArray);
	if(request('print')){
    //dd($metaArray);
  //  $v= array();
    include_once(app_path().'/jrf/sample/setting.php');
    $PHPJasperXML = new PHPJasperXML();
    $v[]=1;

    $metanameAll=array();
    $indicatorAll=array();
      //$param[]="active";
      //$param[]="inactive";
      $metanameAll=collect($metaArray);
      $metaString=str_replace('[','',$metanameAll);
      $metaString=str_replace(']','',$metaString);

      $indicatorAll=collect($keyArray);
      $indicatorString=str_replace('[','',$indicatorAll);
      $indicatorString=str_replace(']','',$indicatorString);
  //  dd($indicatorString);
//$param=collect($param);

  // dd($param[0]);
  //  $PHPJasperXML->arrayParameter=array("property_id"=>$id);
  //  $PHPJasperXML->arrayParameter=array("param"=>1,"param"=>2);

//$PHPJasperXML->sql="select * from answers";
//dd($PHPJasperXML);
$PHPJasperXML->arrayParameter =array("property_id"=>$id,"metanames"=>$metaString,"indicator"=>$indicatorString);
//$PHPJasperXML->arrayParameter =array("param"=>$string);
    //dd($PHPJasperXML->arrayParameter);
//$PHPJasperXML->arrayParameter =array();
//$PHPJasperXML->arrayParameter = array("param" => array('1' =>1, '3' =>3));

     $PHPJasperXML->load_xml_file(app_path().'/reports/propertyReportf.jrxml');
    //$PHPJasperXML->load_xml_file(app_path().'/reports/propertyReportf.jrxml');

    $PHPJasperXML->transferDBtoArray($server,$user,$pass,$db);
    //$PHPJasperXML->outpage("D");
    ob_end_clean();
    //dd($PHPJasperXML);
    $PHPJasperXML->outpage("I");
  }
   //dd('Not role');
    return view('admin.settings.properties.dash.report-propertyDash',compact('properties','metanames','keyIndicators','reportDailyReader','dailyMetaCollects','weeklyMetaCollects','monthlyMetaCollects','badDaily','badWeekly','badMonthly','criticalDaily','criticalWeekly','criticalMonthly','id','uri'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
  $properties = Property::get();
        return view('admin.settings.properties.property',compact('properties'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          //See if the site is Exists
         $site=Property::where('property_name',request('property_name'))
        ->where('id',request('id'))->first();

       if($site ==null)
       {
        $sites = Property::UpdateOrCreate(
                        [   'property_name'=>request('property_name')],
        [
        // 'site_name'=>request('site_name'),
        'property_category'=>request('property_category'),
        'property_rank'=>request('property_rank'),
        'room_no'=>request('room_no'),
        'location_name'=>request('location_name'),
         'phone'=>request('phone'),
          'email'=>request('email'),
          'property_description'=>request('property_description'),
        'user_id'=>auth()->id()
      ]);
        $idf=$sites->id;
       }
      else
       {
        return redirect()->route('properties.index')->with('info','This Property Exists');
       }
//dd(request('attachment'));

        if(request('attachment')){
            $attach = request('attachment');
            foreach($attach as $attached){

                 // Get filename with extension
                 $fileNameWithExt = $attached->getClientOriginalName();
                 // Just Filename
                 $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                 // Get just Extension
                 $extension = $attached->getClientOriginalExtension();
                 //Filename to store
                 $imageToStore = $filename.'_'.time().'.'.$extension;
                 //upload the image
                 $path = $attached->storeAs('public/properties/', $imageToStore);

           $id = Property::where('id', $idf)->first();

             if($id !=null)
             {
             $hotelUdate = Property::where('id',$idf)
             ->update([
            'photo'=>$imageToStore
        ]);
           }else
           {
         Property::UpdateOrCreate(
                [
                'photo'=>$imageToStore
                ]
                );
            }
            }
        }
        return redirect()->route('properties.index')->with('success','Property created successful');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\site  $site
     * @return \Illuminate\Http\Response
     */
    public function show(Property $site)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\site  $site
     * @return \Illuminate\Http\Response
     */
    public function edit(Property $site,$id)
    {
          $properties = Property::where('id',$id)
               ->update([
                'status'=>"Inactive",
                 'user_id'=>auth()->id()

              ]);
       return redirect()->back()->with('success','Property deleted successfly');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\site  $site
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, site $site)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\site  $site
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $property = Property::where('id',$id)->first();
        if($property){
            $property->delete();
             return redirect()->back()->with('success','Property permanent deleted successfully');
        }
        else{
            return redirect()->back()->with('error','Something went wrong with this Property');
        }
    }


      public function recoveryUpdate(Property $site,$id)
    {
          $property = Property::where('id',$id)
               ->update([
                'status'=>"Active",
                 'user_id'=>auth()->id()

              ]);
       return redirect()->back()->with('success','Site recoveried successfly');
    }


   public function recovery()
    {
       $properties = Property::where('status','Inactive')->get();
        return view('admin.settings.recovery.recoveryProperty',compact('properties'));
    }


    public function print()
     {
       dd('print');
        $properties = Property::where('status','Inactive')->get();
         return view('admin.settings.recovery.recoveryProperty',compact('properties'));
     }
}
