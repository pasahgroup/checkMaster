<div>
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.25/webcam.min.js"></script> -->
   <script src="../../js/webcam.js" type="text/javascript"></script>
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" /> -->

  <style>
#bot {
color: #eeeeee;
background: #1fa0e4;
background: -webkit-linear-gradient(#1fa0e4, #1992d1);
background: -moz-linear-gradient(#1fa0e4, #1992d1);
background: -o-linear-gradient(#1fa0e4, #1992d1);
background: -ms-linear-gradient(#1fa0e4, #1992d1);
background: linear-gradient(#1fa0e4, #1992d1);
}
#bot > h4:hover{
font-weight: bolder;
text-decoration: none;
}

#bot .panel-heading:hover {

color: #333333;
background: blue ;
padding-left: 45px;
border-color: #dddddd;

}
</style>

	<link href="../../../css/bootstrap335.css" rel="stylesheet" type="text/css" />
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->

  <?php if($message): ?>
                            <div class="alert alert-danger">
                              <h5 class="text-center"><?php echo e($message); ?></h5>
                            </div>
<?php endif; ?>
<div class="content d-flex flex-column flex-column-fluid" id="tc_content">
<!-- <div class="subheader py-2 py-lg-6 subheader-solid">
            <div class="container-fluid">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white mb-0 px-0 py-2">
                  <li class="breadcrumb-item active" aria-current="page">Checklist Master</li>
                  <li class="breadcrumb-item active" aria-current="page">Checklist</li>
                </ol>
              </nav>
            </div>
          </div> -->
          <hr/>
<div class="row container-fluid">
<div class="col-lg-12 col-md-12 col-sm-12">

            <?php if(isset($metadatas)): ?>
                                  <div class="card card-custom gutter-b bg-white border-0">
                                  <div class="card-body">

    <!-- Old form was placed here -->
<div class="row">
 <div class="card-body"  style="background-color:#f6f7f2 !important"></i>
<!-- <label class="text-dark" ><b>Indicator Questions :<i style="color:#f6f7f4">(Metaname : <?php echo e($metaAll); ?>)</i></b> -->
  <label class="text-dark" ><b>Answered Questions :<i style="color:#f6f7f4">(Metaname : <?php echo e($metaAll); ?>)</i></b>
<!-- <p id="demo"></p> -->
  <script>
  // Set the date we're counting down to
  var countDownDate = new Date("Jan 5, 20290 11:37:25").getTime();
  //var countDownDate = new date("D m,Y H:i:s").getTime();
  // Update the count down every 1 second
  var x = setInterval(function() {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Output the result in an element with id="demo"
     document.getElementById("demo").innerHTML = now + "d";

    // document.getElementById("demo").innerHTML = hours + "h "
    // + minutes + "m " + seconds + "s ";

    // If the count down is over, write some text
    if (distance < 0) {
      clearInterval(x);
      document.getElementById("demo").innerHTML = "TIME EXPIRED";
    }
  }, 1000);
  </script>
</label>
<div class="row">
    <?php if(isset($metadatas)): ?>
    <?php endif; ?>
</div>
  <div class="panel panel-default" style="background-color:#fff !important">    <!-- /Start new  -->

    <?php $__currentLoopData = $metas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $meta): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <h6 class="panel-title"></h6>
    <div class="card" data-toggle="collapse" href="#meta_<?php echo e($meta->id); ?>" id="pid<?php echo e($meta->id); ?>" class="panel-group btn-sm" onclick="setPropertyFunction(<?php echo e($meta->id); ?>)" onkeyup ="setPropertyFunction(<?php echo e($meta->id); ?>)" style="background-color:#718275 !important">
    <div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12" style="color: #fff">
    <?php echo e($meta->metaname_name); ?>

  <!-- </div>
  <div class="col-lg-2 col-md-2 col-sm-2" style="color: #fff"> -->
    <span class="float-right">Progress: <b style="color:#9af219"><?php echo e(number_format($answerCount->where('metaname_name',$meta->metaname_name)->count()/$totalqns->where('metaname_name',$meta->metaname_name)->count()*100),1); ?>% </b></span>
  </div>
    <!--  -->
    </div>
    </div>
    <!-- <?php echo e($pp); ?> -->
  <?php $__currentLoopData = $pp; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div id="meta_<?php echo e($meta->id); ?>" class="panel-collapse collapse">
 <div class="row">
   <div class="col-md-12 col-sm-12">
    <?php if($p->metaname_id ==$meta->id): ?>
      <div class="panel-heading">
        <!-- <h5 class="panel-title"></h5> -->
         <div class="" data-toggle="collapse" href="#collapse<?php echo e($p->id); ?>" id="pid<?php echo e($p->id); ?>" class="panel-group btn-sm" onclick="setPropertyFunction(<?php echo e($p->id); ?>)" onkeyup ="setPropertyFunction(<?php echo e($p->id); ?>)" style="background-color:#718275 !important">

    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12" style="color: #fff">
      <?php echo e($p->asset_name); ?>


<!-- </div>
  <div class="col-lg-2 col-md-2 col-sm-2" style="color: #fff"> -->
<!-- </div>
<div class="col-lg-2 col-md-2 col-sm-2"> -->
<span class="float-right">
<?php $__currentLoopData = $checkQnsProp; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chkp): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($p->id ==$chkp->asset_id): ?>
<input type="checkbox"  onclick="myFunctionxx()" id="statusx" name="statusx" value="0" <?php if($p->id==$chkp->asset_id): ?> checked <?php endif; ?>> | (<?php echo e(number_format(($answerPerc->where('metaname_id',$chkp->metaname_id)->where('asset_id',$chkp->asset_id)->count())/($qnsAppliedPerc->where('metaname_id',$chkp->metaname_id)->count())*100),2); ?>)%
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</span>
  </div>
</div>

    <input type="hidden" name="prop[]" value="<?php echo e($p->id); ?>">
       </div>
        <!-- </div> -->

      <!-- Start of Asset loop -->
  <div id="collapse<?php echo e($p->id); ?>" class="panel-collapse collapse">

 <?php $__currentLoopData = $sections; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $section): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
 <?php if($section->metaname_id==$p->metaname_id): ?>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="panel-heading">


<div class="" data-toggle="collapse" href="#collapp<?php echo e($p->id); ?>_<?php echo e($section->section); ?>" id="" class="panel-group btn-sm" onclick="setSectionFunction(<?php echo e($p->id); ?>,<?php echo e($section->id); ?>,'<?php echo e($section->section); ?>')" onkeyup ="setSectionFunction(<?php echo e($p->id); ?>,<?php echo e($section->id); ?>,'<?php echo e($section->section); ?>')" style="background-color:#dfd6c4 !important">

                <div class="row">
                  <div class="col-lg-10 col-md-10 col-sm-10" style="color: #black">
 <span style="background-color:#"><?php echo e($section->section); ?> </span>

 <span class="float-right">
 <?php $__currentLoopData = $checkQnsProp; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chkp): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
 <?php if($p->id ==$chkp->asset_id): ?>
 <input type="checkbox"  onclick="myFunctionxx()" id="statusx" name="statusx" value="0" <?php if($p->id==$chkp->asset_id): ?> checked <?php endif; ?>> | (<?php echo e(number_format(($answerPerc->where('metaname_id',$chkp->metaname_id)->where('asset_id',$chkp->asset_id)->where('section',$section->section)->count())/($qnsAppliedPerc->where('metaname_id',$chkp->metaname_id)->where('section',$section->section)->count())*100),2); ?>)%
 <?php endif; ?>
 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
 </span>
</div>
</div>
</div>

  <!-- <div class="" data-toggle="collapse" href="#collapccc" id="" class="panel-group btn-sm" style="background-color:#718275 !important"> -->
  <div wire:ignore.self id="collapp<?php echo e($p->id); ?>_<?php echo e($section->section); ?>" class="panel-collapse collapse">
<!-- <div wire:ignore.self id="collapse<?php echo e($p->id); ?>" class="panel-collapse collapse"> -->
<!-- TEst form here -->
<form  method="post"  action="<?php echo e(route('checklist.store')); ?>" enctype="multipart/form-data">
                      <?php echo csrf_field(); ?>
<input type="hidden" name="_method" value="post">
<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
<input type="hidden" name="property_id" id="property_id" value="<?php echo e($property_id); ?>">


<input type="hidden" name="qnID" id="qnID" value="">
<input type="hidden" name="qnAID[]" id="qnAID" value="">
<input type="hidden" name="aID" id="aID<?php echo e($p->id); ?>_<?php echo e($section->id); ?>" value="<?php echo e($p->id); ?>">
<input type="hidden" name="section_name<?php echo e($p->id); ?>_<?php echo e($section->id); ?>" id="section_name<?php echo e($p->id); ?>_<?php echo e($section->id); ?>">


<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
            <!-- <?php echo e($qns); ?> -->
       <?php $__currentLoopData = $qns; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $qn): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
       <?php if($p->metaname_id ==$qn->metaname_id && $qn->section==$section->section): ?>
              <div class="panel-group btn-sm" style="background-color:#d9c7a8 !important"><b> <?php echo e($p->id); ?>:<?php echo e($qn->id); ?>: <?php echo e($qn->section); ?> </b>: <?php echo e($qn->qns); ?></div>
            <div class="form-group card">
              <div class="row">
       <?php $__currentLoopData = $metadatas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $metadata): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
           <?php if($metadata->indicator_id ==$qn->id): ?>

          <div class="col-xl-3 col-md-3 col-sm-3">
          <label><?php echo e($metadata->answer); ?></label>
           <?php if($metadata->datatype=="checkbox"): ?>
          <input type="<?php echo e($metadata->datatype); ?>" name="ids<?php echo e($p->id); ?>[]" id="indicator_id" value="<?php echo e($metadata->id); ?>" onclick="myFunction(<?php echo e($qn->id); ?>)" onkeyup="myFunction(<?php echo e($qn->id); ?>)"
             <?php $__currentLoopData = $checkQns; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $checkq): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php if($p->id ==$checkq->asset_id && $checkq->indicator_id==$qn->id && $metadata->answer==$checkq->answer): ?>
           <?php if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $metadata->answer==$checkq->answer): ?> checked <?php endif; ?>
          <?php endif; ?>
           <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        >
       <?php endif; ?>
           <?php if($metadata->datatype=="radio"): ?>
          <input type="<?php echo e($metadata->datatype); ?>" name="idx<?php echo e($p->id); ?>_<?php echo e($qn->id); ?>_<?php echo e($meta->id); ?>_<?php echo e($p->id); ?>_<?php echo e($section->id); ?>[]" id="indicator_id" value="<?php echo e($metadata->id); ?>" onclick="setQnFunction(<?php echo e($p->id); ?>,<?php echo e($qn->id); ?>)" onkeyup="setQnFunction(<?php echo e($p->id); ?>,<?php echo e($qn->id); ?>)"
             <?php $__currentLoopData = $checkQns; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $checkq): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $metadata->id==$checkq->opt_answer_id): ?>
           <?php if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $metadata->id==$checkq->opt_answer_id): ?> checked <?php endif; ?>
          <?php endif; ?>
           <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
           >

         <?php endif; ?>
         </div>

           <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     </div>
</div>


      <div class="panel-heading">
        <h4 class="panel-title"> <div class="cardx"><a data-toggle="collapse" href="#collapsee<?php echo e($p->id); ?><?php echo e($qn->id); ?>">Description if any</a>
       </div>
      </div>
      <div id="collapsee<?php echo e($p->id); ?><?php echo e($qn->id); ?>" class="panel-collapse collapse">

  <textarea rows="4" cols="40" id="desc" name="desc<?php echo e($p->id); ?>_<?php echo e($qn->id); ?>_<?php echo e($meta->id); ?>_<?php echo e($p->id); ?>_<?php echo e($section->id); ?>[]" placeholder="---enter description if any---" class="form-control" style="white-space: normal;overflow:hidden" maxlength="680">
      <?php $__currentLoopData = $checkQns; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $checkq): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <?php if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id && $checkq->property_id ==$p->property_id): ?>
   <?php if($checkq->description !=null): ?>
    <?php echo e($checkq->description); ?>

    <?php endif; ?>
  <?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
  </textarea>
          </div>

    <div class="panel-heading">
        <h4 class="panel-title"> <div class="cardx">   <a data-toggle="collapse" href="#collap<?php echo e($p->id); ?><?php echo e($qn->id); ?>">Photo if any</a>
       </div>
    </div>

      <div class="row">
        <div class="col-lg-10 col-md-10 col-sm-10">
      <div id="collap<?php echo e($p->id); ?><?php echo e($qn->id); ?>" class="panel-collapse collapse">
     <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                              <div class="form-group">
                            <!-- start webcam -->
<div id="my_camera<?php echo e($p->id); ?>_<?php echo e($qn->id); ?>"></div>
<br/>
<input type="file" name="attachment<?php echo e($p->id); ?>_<?php echo e($qn->id); ?>_<?php echo e($meta->id); ?>_<?php echo e($p->id); ?>_<?php echo e($section->id); ?>[]" accept="image/*" capture="camera">
<!-- <input type="text" name="vv" value="<?php echo e($p->id); ?>_<?php echo e($qn->id); ?>"> -->
<!-- <input type=button value="Take Photo" onClick="take_snapshot(<?php echo e($p->id); ?>,<?php echo e($qn->id); ?>)"> -->
<!-- <input type="hidden" name="image" class="image-tag"> -->

<!-- End -->

                                </div>
                                </div>
        <div class="col-lg-6 col-md-6 col-sm-6">

</div>
</div>

      </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-2">

      <div class="form-group">
            <label class="radio-inline">Ready:
               <input type="checkbox"  onclick="myFunction()" id="status" name="status" value="0" disabled="true"

              <?php $__currentLoopData = $checkQns; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $checkq): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php if($p->id ==$checkq->asset_id && $checkq->indicator_id ==$qn->id): ?>
      checked
           <?php endif; ?>
           <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
           >
           </label>
</div>

<input type="hidden" name="col" value="<?php echo e($col); ?>">
</div>
</div>

   <?php endif; ?>
   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<div class="row">
 <div class="col-md-11 col-sm-11">
 <div class="wawa-bgcolor">
                  <!-- <button  class="btn-sm btn btn-secondary float-right" type="submit" name="save" value="<?php echo e($p->id); ?>_<?php echo e($section->id); ?>">Save</button> -->
 </div>
</div>
<hr>
</div>

   </div>
   </div>


  </div>
  </div>

</div>
</div>
 <?php endif; ?>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>

</div>
<!-- End of asset loop -->


 <?php endif; ?>
</div>
</div>
</div>
       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
             </div>
<hr/>
<!-- <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'jetstream::components.button','data' => ['type' => 'submit','class' => 'btn-sm btn btn-secondary float-right','name' => 'email_send','value' => 'email_send']]); ?>
<?php $component->withName('jet-button'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['type' => 'submit','class' => 'btn-sm btn btn-secondary float-right','name' => 'email_send','value' => 'email_send']); ?>
    <?php echo e(__('Finish')); ?>

 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?> -->


         <!-- <button class="btn-sm btn btn-dark float-right" role="button" name="email_send" value="email_send">Finish</button>  -->
               <!-- <button  class="btn-sm btn btn-secondary float-right" type="submit" name="save" value="<?php echo e($p->id); ?>_<?php echo e($section->id); ?>">Save<?php echo e($p->id); ?>_<?php echo e($section->id); ?></button> -->

           </div>
           </div>
   <div class="row">
     <div class="col-md-6 col-sm-6">
     </div>

</div>
      <?php endif; ?>
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


<script type="text/javascript">
  function setSectionFunction(aid,sid,ssn) {

 var section_name="section_name"+(aid)+'_'+(sid);
  var aID="aID"+(aid)+'_'+(sid);
  $('#'+section_name+'').val(ssn);
    $('#'+aID+'').val(aid);
  }
</script>

<script type="text/javascript">
  function setPropertyFunction(id) {
     //alert(id);
 $('#aID').val(id);
  }

   function setQnFunction(pID,qID) {
      const arrT=[];
     var variables=document.getElementById('qnAID').value;

  //alert(variables);
const fruits = new Array('Apple', 'Banana');
 $('#qnAID').val(fruits);
  // alert(fruits);
 $('#qnID').val(qID);
  }
</script>
</div>
<?php /**PATH C:\xampp\htdocs\horesyf\resources\views/livewire/dash-checklist.blade.php ENDPATH**/ ?>