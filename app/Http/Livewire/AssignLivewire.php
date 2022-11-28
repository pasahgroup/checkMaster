<?php

namespace App\Http\Livewire;


 use App\Models\orderItem;
 use App\Models\property;

use App\Models\metadata;
use App\Models\metanameDatatype;
use App\Models\asset;
use App\Models\metaname;

use App\Models\setIndicator;
use App\Models\qnsAppliedto;

use App\Models\optionalAnswer;
use Livewire\Component;
use Illuminate\Http\Request;

class AssignLivewire extends Component
{

  public $departments = "";
  public $post;
  public $message = "";
  public $pos_id = [];
  public $metaname_id;
  public $site_id;
  public $names=[];
  public $properties;

       public $qnType;
        public $times;
        public $qnNo;
           public $qn_no;

public function store(Request $request)
    {

 $metanames = request('metanames');
         $indicators = request('indicators');


 if($indicators ==null)
     {
return redirect()->back()->with('error','Indicators not selected');
     }

   if($metanames !=null)
     {
      // {{$indicators}}
    foreach ($metanames as $metaname) {

    foreach ($indicators as $indicator) {

    $appliedto = qnsAppliedto::UpdateOrCreate([
        'metaname_id'=>$metaname,
        'indicator_id'=>$indicator,
        'status'=>'Active',
          'user_id'=>auth()->id()
        ]);

        }
      }

     }
     else
     {
      return redirect()->back()->with('error','Metanames not selected');
     }
//
//   }
   return redirect()->back()->with('success','Indicators Assigned Successfully');
    }



    public function render(Request $request)
    {
     $pos_id=$this->metaname_id;
     $qnType=$this->qnType;
     $times=$this->qnNo;

    $qn_no=$this->qn_no;


                $properties = property::get();
                $metanames = metaname::where('status','Active')->get();
                  $indicators = setIndicator::where('qns','!=',"")
                  ->get();
                //dd($metanames);
            $metadatas = metanameDatatype::where('metaname_id',$this->metaname_id)->get();


      return view('livewire.assign-indicator',compact('metadatas','metanames','properties','indicators'))
      ->layout('layouts.app');
  }
}
