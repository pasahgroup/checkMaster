<div>

  @if($message)
                            <div class="alert alert-danger">
                              <h5   class="text-center">{{ $message }}</h5>
                            </div>
                            @endif
<div class="content d-flex flex-column flex-column-fluid" id="tc_content">
<div class="subheader py-2 py-lg-6 subheader-solid">
            <div class="container-fluid">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white mb-0 px-0 py-2">
                  <li class="breadcrumb-item active" aria-current="page">Checklist Master</li>
                  <li class="breadcrumb-item active" aria-current="page">Checklist</li>
                </ol>
              </nav>
            </div>
          </div>
          <hr/>
<div class="row container">
    <div class="col-xl-2 col-md-2 col-sm-2">
      <div class="card"  style="background-color:#ffffff !important">
      <button  wire:click.prevent="storeItem('All','All')" class="btn-sm btn btn-secondary float-right" role="button" name="metall" value="metall">All</button>
    </div>
      @foreach ($userMetanames as $activities)
<form wire:click.prevent="storeItem('{{$activities->metaname_name}}',{{$activities->id}})">
                              @csrf
        <input type="hidden" name="_method" value="post">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
<input type="hidden" name="metav" id="metav" value="{{$activities->metaname_name}}">
   <!-- <a href="{{ route('metaf',1) }}" class="btn btn-sm btn-secondary">{{$activities->metaname_name}}</a> -->
  <div class="card"  style="background-color:#ffffff !important">
  <button  class="btn-sm btn btn-secondary float-right" role="button" name="meta" value="meta" onclick="setMetaFunction({{$activities->metaname_name}})" onkeyup ="setMetaFunction({{$activities->metaname_name}})">{{$activities->metaname_name}}</button>
</div>
</form>
   @endforeach
     </div>
            <div class="col-xl-10 col-md-10">
            @isset($metadatas)
                                  <div class="card card-custom gutter-b bg-white border-0">
                                  <div class="card-body">

    <form  method="post"  action="{{ route('checklist.store') }}" enctype="multipart/form-data">
                          @csrf
    <input type="hidden" name="_method" value="post">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">

    <input type="hidden" name="qnID" id="qnID" value="">
    <input type="hidden" name="qnAID[]" id="qnAID" value="">
    <input type="hidden" name="aID" id="aID" value="">

<div class="row">
 <div class="card-body"  style="background-color:#b2ca5d !important">
<label class="text-dark"><b>Indicator Questions :<i style="color:green">(Metaname : {{$metaAll}})</i></b></label>

  <div class="panel panel-default" style="background-color:#fff !important">

  @foreach ($pp as $p)
      <div class="panel-heading">
        <h4 class="panel-title">
         <div class="card" data-toggle="collapse" href="#collapse{{$p->id}}" id="pid{{$p->id}}" class="panel-group btn-sm" onclick="setPropertyFunction({{$p->id}})" onkeyup ="setPropertyFunction({{$p->id}})" style="background-color:#718275 !important">
         <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10" style="color: #fff">
         &nbsp;{{ $p->asset_name  }}

</div>
         <div class="col-lg-2 col-md-2 col-sm-2">
@foreach ($checkQnsProp as $chkp)
@if($p->id ==$chkp->asset_id)
<input type="checkbox"  onclick="myFunctionxx()" id="statusx" name="statusx" value="0" @if ($p->id==$chkp->asset_id) checked @endif> | ({{ number_format(($answerPerc->where('metaname_id',$chkp->metaname_id)->where('asset_id',$chkp->asset_id)->count())/($qnsAppliedPerc->where('metaname_id',$chkp->metaname_id)->count())*100),2}})%
@endif
@endforeach
         </div>
         </div>
           <input type="hidden" name="prop[]" value="{{$p->id}}">
       </div>
      </div>
      <div wire:ignore.self id="collapse{{$p->id}}" class="panel-collapse collapse">

<div class="row">
  <div class="col-lg-1 col-md-1 col-sm-1"></div>
    <div class="col-lg-10 col-md-10 col-sm-10">
      @foreach ($qns as $qn )
       @if($p->metaname_id ==$qn->metaname_id)
       <div class="panel-group btn-sm" style="background-color:#6d802b !important">{{ $qn->qns  }}</div>
            <div class="form-group">
              <div class="row">
       @foreach ($metadatas as $metadata)
           @if($metadata->indicator_id ==$qn->id)

          <div class="col-xl-4 col-md-4 col-sm-4">
          <label>{{$metadata->answer}}</label>
           @if($metadata->datatype=="checkbox")
          <input type="{{$metadata->datatype}}" name="ids{{$p->id}}[]" id="indicator_id" value="{{$metadata->id}}" onclick="myFunction({{$qn->id}})" onkeyup="myFunction({{$qn->id}})"
             @foreach ($checkQns as $checkq)
              @if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $metadata->answer==$checkq->answer_value)
           @if ($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $metadata->answer==$checkq->answer_value) checked @endif
          @endif
           @endforeach
  >
       @endif
           @if($metadata->datatype=="radio")
          <input type="{{$metadata->datatype}}" name="idx{{$p->id}}{{$qn->id}}[]" id="indicator_id" value="{{$metadata->id}}" onclick="setQnFunction({{$p->id}},{{$qn->id}})" onkeyup="setQnFunction({{$p->id}},{{$qn->id}})"
             @foreach ($checkQns as $checkq)
              @if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $metadata->id==$checkq->opt_answer_id)
           @if ($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $metadata->id==$checkq->opt_answer_id) checked @endif
          @endif

           @endforeach

  >

         @endif

         </div>
           @endif
    @endforeach
     </div>
            </div>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"> <div class="card"><a data-toggle="collapse" href="#collaps{{ $qn->id }}{{$p->id}}">Description if any</a>
       </div>
      </div>
      <div id="collaps{{ $qn->id}}{{$p->id}}" class="panel-collapse collapse">


        <textarea rows="4" cols="40" id="desc" name="desc{{$p->id}}[]" placeholder="---enter description if any---" class="form-control" style="white-space: normal;overflow:hidden" maxlength="680">
      @foreach ($checkQns as $checkq)
  @if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $checkq->property_id ==$p->property_id)
   @if($checkq->description !=null)
    {{$checkq->description}}
    @endif
  @endif
      @endforeach
           </textarea>
              </div>
    </div>
  </div>

 <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"> <div class="card">    <a data-toggle="collapse" href="#collap{{ $qn->id  }}{{$p->id}}">Photo if any</a>
       </div>
      </div>
      <div class="row">
        <div class="col-lg-11 col-md-11 col-sm-11">
      <div id="collap{{ $qn->id }}{{$p->id}}" class="panel-collapse collapse">

<div class="row">
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                    <input type="file" name="attachment{{$p->id}}[]" onChange="displayImage(this)" id="attachment" accept="image/*" class="" style="display:block;">

                                </div>
                                </div>
        <div class="col-lg-6 col-md-6 col-sm-6">

            <span class="img-div">
              <div class="text-center img-placeholder"  onClick="triggerClick()">
              </div>

              <img src=" @foreach ($checkQns as $checkq)
  @if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $checkq->property_id ==$p->property_id)
   @if($checkq->image !=null)
    {{$checkq->image}}
    @endif
  @endif
      @endforeach " onClick="triggerClick()" id="profileDisplay">
            </span>
            </div>
      </div>

      </div>
    </div>
    <div class="col-lg-2 col-md-12col-sm-2">

<div class="form-group">
            <label class="radio-inline">Ready:
               <input type="checkbox"  onclick="myFunction()" id="status" name="status" value="0"

              @foreach ($checkQns as $checkq)
              @if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id)
           @if ($checkq->answer_value!=null) checked @endif
          @endif
           @endforeach

                >
           </label>
</div>

<input type="hidden" name="col" value="{{$col}}">

    </div>
    </div>

    </div>
  </div>
  <hr style="background-color:#fd7e14 !important">
   @endif
   @endforeach
  <div class="row">
 <div class="col-md-12 col-sm-12">
 <div class="wawa-bgcolor">
                      <button  class="btn-sm btn btn-secondary float-right" type="submit">Save</button>
                      </div>
</div>
<hr>
</div>
   </div>
   </div>

<div class="col-lg-1 col-md-1 col-sm-1"></div>
</div>
   @endforeach
             </div>
<hr/>
             <a class="btn-sm btn btn-dark float-right" role="button">Finish</a>
           </div>
           </div>

   <div class="row">
     <div class="col-md-6 col-sm-6">
     </div>

</div>
                                  @endisset
  </form>

               </div>
                                 </div>
                                 </div>


<script type="text/javascript">
  $(document).ready(function() {
$('.qnNo').materialSelect();
});
</script>

<script>
const ages = [3, 10, 18,42, 20];

document.getElementById("demo").innerHTML = ages.findIndex(checkAge);

function checkAge(age) {
  return age >18;
}
</script>

<script type="text/javascript" src="../../js/jquery.js"></script>

<script>
     function numberWithCommas(n) {
    return n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }


$('.toggle-class').on('change',function(){
    let status = $(this).prop('checked') == true ? true : false;
    let grader_id = $(this).data('id');

let status=4;
alert(status);

 $('#'+status+'').val(200);


    $.ajax({
       type:'POST',
       dataType:'json',
       url:"{{ route('checklistx.store') }}", // add your earlier created route here
       data:{'grade': status, 'grade_id': grader_id},
       success: function(data){
        console.log('success');
         alert('passed');
     }
   });


});
</script>

<script type="text/javascript">
function setMetaFunction(id) {
  //alert(id);
$('#metavv').text(id);
}
  function setPropertyFunction(id) {
 $('#aID').val(id);
  }

   function setQnFunction(pID,qID) {
      const arrT=[];
    //alert(pID);
     //alert(qID);
     //document.getElementById("demo").innerHTML = cars;
     var variables=document.getElementById('qnAID').value;

  //alert(variables);
const fruits = new Array('Apple', 'Banana');
 //alert(fruits);
//const fruits =[];
//document.getElementById("demo").innerHTML = cars;
//sarrT=fruits.push(qID);
//console.log(fruits.length);
 //alert(fruits);

 $('#qnAID').val(fruits);
  // alert(fruits);
 $('#qnID').val(qID);
  }
</script>



<script>
     function numberWithCommas(n) {
    return n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }

function myFunction(id) {
     //
//var id;
  // let status = $(this).prop('checked') == true ? true : false;
  //   let grader_id = $(this).data('id');
//alert(id);
//let status="status";
//alert(status);



 var v1=document.getElementById(status).value;
 //alert(v1);
   //  $.ajax({
   //     type:'POST',
   //     dataType:'json',
   //     url:"{{ route('checklistx.store') }}", // add your earlier created route here
   //     data:{'grade': 43, 'grade_id': 20},
   //     success: function(data){
   //      console.log('success');
   //       alert('passed');
   //   }
   // });


  var urv="ur_"+(id);
    var upv="up_"+(id);
    var anQty="qty"+(id);
      var antQty="tqty"+(id);
    var aprice="price_"+(id);
      var asubtotal="subtotal_"+(id);

    var ur=document.getElementById(urv).value;
     var up=document.getElementById(upv).value;
     var unitPrice=document.getElementById(aprice).value;
  var StoreQty=document.getElementById(antQty).value;


 var soldQty=numberWithCommas((ur*up).toFixed(2));
if(ur>=0 && up>=0)
{
//var soldQty=numberWithCommas((ur*up));
var subtotal=(unitPrice*soldQty).toFixed(2);
   //totalCost +=subtotal;

 if(Number(soldQty)<=Number(StoreQty))
 {
  $('#'+anQty+'').val(soldQty);
  $('#'+asubtotal+'').val(subtotal);

}
else
{
    alert('Sold Quantity exceed the available Stock:'+ StoreQty);
    $('#'+urv+'').val(0);
    $('#'+upv+'').val(0);
     $('#'+anQty+'').val(0.00);
     $('#'+asubtotal+'').val(0.00);

  }
}

  var sum_amount = 0;
  $('#'+urv+'').each(function(){
    sum_amount +=$(this).val();

  })
}

function numberWithCommas(n) {
    return n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }

 //     function sum()
 //     {
 //        $('.amount').each(function(){
 //            alert('df');
 //    //if statement here
 //    // use $(this) to reference the current div in the loop
 //    //you can try something like...
 //    // if(condition){
 //    // }
 // });
 //     }
</script>
</div>
