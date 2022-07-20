<?php

namespace App\Http\Livewire;


 use App\Models\orderItem;
 use App\Models\asset;

use App\Models\metadata;
use App\Models\metanameDatatype;
use App\Models\property;
use App\Models\metaname;

use App\Models\setIndicator;
use App\Models\qnsAppliedto;

use App\Models\optionalAnswer;
use Livewire\Component;
use Illuminate\Http\Request;

class IndicatorLivewire extends Component
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
       public $qns_type;

        public $times;
        public $qnNo;
           public $qn_no;

public function store(Request $request)
    {
         $names = request('names');
 $answer_class = request('answer_class');

$indicator = setIndicator::UpdateOrCreate([
        'qns'=>request('question'),
         'status'=>'Active',
          'user_id'=>auth()->id()
        ]);


//dd($answer_class[2]);
//dd($names);

       if($names !=null)
     {
        
foreach ($names as $key=>$name) {
 //  $data = metadata::where('id', $metadata)->first(); 

 //  $datatype=strtok($data->metadata_name, " ");
 // $datatype_name=$property.$datatype;
//dd($datatype_name);

        $insetqns = optionalAnswer::UpdateOrCreate([
        'indicator_id'=>$indicator->id,
         'answer'=>$name,
         'answer_classification'=>$answer_class[$key],
          'datatype'=>request('qns_type'),
          'status'=>'Active',
          'user_id'=>auth()->id()        
        ]);


    $appliedto = qnsAppliedto::UpdateOrCreate([
        'indicator_id'=>$indicator->id,
        'metaname_id'=>request('applied_to'),
        'status'=>'Active',
          'user_id'=>auth()->id()        
        ]);

        } 
     }

   return redirect()->back()->with('success','Indicator created successfly');
    }



    public function render(Request $request)
    {
     $pos_id=$this->metaname_id;
     //$qnType=$this->qnType;
     $times=$this->qnNo;
$qns_type=$this->qns_type;
$qn_no=$this->qn_no;
  // $this->orderProducts = orderItem::where('id',$post)
    //    //  ->get();
          // $this->departments=department::get();
          // dd($this->departments);     
    // return view('livewire.department')->layout('livewire.showFrame');
    //    // return view('livewire.department');
// dd(request('metaname_id'));
   // $this->departments = department::where('id',18)
        // ->get();
        //    $orderProducts = property2::where('id',18)
        // ->get();
    //dd($this->qn_no);

                $properties = property::get();
                $metanames = metaname::get();
            $metadatas = metanameDatatype::where('metaname_id',$this->metaname_id)->get();
      
      //dd($this->metaname_id);
           // $metadatas = metanameDatatype::where('metaname_id',5)->get();

    //     ->where('sub_stores.current_qty','>=',1)
    //     ->where('sub_stores.warehouse',$wharehouse_id)
    //     ->get();
          //dd($times);
           //  session()->flash('message', 'Users Updated Successfully.');
     // return view('livewire.department')->layout('livewire.showFrame');
      return view('livewire.indicator',compact('metadatas','metanames','properties','qn_no','qns_type'))
      ->layout('layouts.app');

    //    // return view('livewire.department');

 // return view('livewire.show',compact('customers','items','orders','orderings','pos_id','order_items','po','ewallete'))
 // ->layout('livewire.showFrame');

    // }

    // else{
    //     session()->flash('message', 'Users Deleted Successfully.');
    //     // return redirect()->back()->with('error','No such order');
    // }

  }
}
