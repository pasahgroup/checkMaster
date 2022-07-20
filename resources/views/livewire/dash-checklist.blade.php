<div>
        <!--begin::Content-->
        <div class="content d-flex flex-column flex-column-fluid" id="tc_content">
          <!--begin::Subheader-->
          <div class="subheader py-2 py-lg-6 subheader-solid">
            <div class="container-fluid">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white mb-0 px-0 py-2">
                  <li class="breadcrumb-item active" aria-current="page">Checklist Master</li>
                  <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                </ol>
              </nav>
            </div>
          </div>
          <!--end::Subheader-->
          <!--begin::Entry-->
          <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class="container-fluid">
              <div class="row">
                <div class="col-12">
                  <div class="row">
                    <div class="col-lg-12 col-xl-12">
                      <div class="card card-custom bg-transparent shadow-none border-0" >
                        <div class="card-header align-items-center  border-bottom-dark px-0">
                          <div class="card-title mb-0">
                            <h5 class="card-label mb-0 font-weight-bold text-body">Dashboard-Checklist Master
                            </h5>
                          </div>
                            <div class="icons d-flex">
                            <button  class="btn ml-2 p-0 kt_notes_panel_toggle"
                              data-toggle="tooltip" title="" data-placement="right"
                                      data-original-title="Check out more demos" >
                              <span class="bg-secondary h-30px font-size-h5 w-30px d-flex align-items-center justify-content-center  rounded-circle shadow-sm ">

                                <svg width="25px" height="25px" viewBox="0 0 16 16" class="bi bi-plus white" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                  </svg>
                              </span>

                            </button>
                            <a href="#" onclick="printDiv()" class="ml-2">
                              <span class="icon h-30px font-size-h5 w-30px d-flex align-items-center justify-content-center rounded-circle ">
                                <svg width="15px" height="15px" viewBox="0 0 16 16" class="bi bi-printer-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                  <path d="M5 1a2 2 0 0 0-2 2v1h10V3a2 2 0 0 0-2-2H5z"/>
                                  <path fill-rule="evenodd" d="M11 9H5a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1z"/>
                                  <path fill-rule="evenodd" d="M0 7a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2h-1v-2a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2H2a2 2 0 0 1-2-2V7zm2.5 1a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"/>
                                  </svg>
                              </span>

                            </a>
                            <a href="#" class="ml-2" >
                              <span class="icon h-30px font-size-h5 w-30px d-flex align-items-center justify-content-center rounded-circle ">
                                <svg width="15px" height="15px" viewBox="0 0 16 16" class="bi bi-file-earmark-text-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd" d="M2 2a2 2 0 0 1 2-2h5.293A1 1 0 0 1 10 .293L13.707 4a1 1 0 0 1 .293.707V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm7 2l.5-2.5 3 3L10 5a1 1 0 0 1-1-1zM4.5 8a.5.5 0 0 0 0 1h7a.5.5 0 0 0 0-1h-7zM4 10.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                                  </svg>
                              </span>

                            </a>

                          </div>
                        </div>

                      </div>


                    </div>
                  </div>
                  <div class="row">

                                       <div class="col-lg-4  col-xl-4 col-md-4">
                            <div class="card card-custom gutter-b bg-white border-0">
                                <div class="card-header align-items-center  border-0">
                                    <div class="card-title mb-0">
                                        <h3 class="card-label text-body font-weight-bold mb-0">Report1
                                        </h3>
                                    </div>

                                </div>
                                <div class="card-body px-0">
                                    <ul class="list-group scrollbar-1" style="height: 300px;">
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-primary text-white mr-2">
                                               <i class="fa fa-home"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Shop</span>
                                            <span class="text-muted d-block text-success"> {{ $top_shop->warehouse ?? '-' }}</span>
                                          </div>

                                        </div>
                                        <span>
                                            <span>
                                                Tsh. {{ number_format($top_shop->total_selling ?? 0 )}}
                                         </span>
                                    </span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-secondary text-white mr-2">
                                                <i class="fa fa-user"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Customer</span>
                                            <span class="text-muted d-block text-success">{{ $top_customer->customer_name ?? '-'}}</span>
                                          </div>
                                        </div>
                                        <span> Tsh. {{ number_format($top_customer->total_selling ?? 0) }}</span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-success text-white mr-2">
                                                <i class="fa fa-shopping-cart"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Product</span>
                                            <span class="text-muted d-block text-success">{{ $top_product->item ?? '-' }}</span>
                                          </div>
                                        </div>
                                        <span>Tsh. {{ number_format($top_product->total_value ?? 0) }}</span>
                                      </li>
                                    </ul>
                                  </div>
                              </div>
                        </div>

               <div class="col-lg-4  col-xl-4 col-md-4">
                            <div class="card card-custom gutter-b bg-white border-0">
                                <div class="card-header align-items-center  border-0">
                                    <div class="card-title mb-0">
                                        <h3 class="card-label text-body font-weight-bold mb-0">Report2
                                        </h3>
                                    </div>

                                </div>
                                <div class="card-body px-0">
                                    <ul class="list-group scrollbar-1" style="height: 300px;">
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-primary text-white mr-2">
                                               <i class="fa fa-home"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Shop</span>
                                            <span class="text-muted d-block text-success"> {{ $top_shop->warehouse ?? '-' }}</span>
                                          </div>

                                        </div>
                                        <span>
                                            <span>
                                                Tsh. {{ number_format($top_shop->total_selling ?? 0 )}}
                                         </span>
                                    </span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-secondary text-white mr-2">
                                                <i class="fa fa-user"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Customer</span>
                                            <span class="text-muted d-block text-success">{{ $top_customer->customer_name ?? '-'}}</span>
                                          </div>
                                        </div>
                                        <span> Tsh. {{ number_format($top_customer->total_selling ?? 0) }}</span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-success text-white mr-2">
                                                <i class="fa fa-shopping-cart"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Product</span>
                                            <span class="text-muted d-block text-success">{{ $top_product->item ?? '-' }}</span>
                                          </div>
                                        </div>
                                        <span>Tsh. {{ number_format($top_product->total_value ?? 0) }}</span>
                                      </li>
                                    </ul>
                                  </div>
                              </div>
                        </div>

                                       <div class="col-lg-4  col-xl-4 col-md-4">
                            <div class="card card-custom gutter-b bg-white border-0">
                                <div class="card-header align-items-center  border-0">
                                    <div class="card-title mb-0">
                                        <h3 class="card-label text-body font-weight-bold mb-0">Report3
                                        </h3>
                                    </div>

                                </div>
                                <div class="card-body px-0">
                                    <ul class="list-group scrollbar-1" style="height: 300px;">
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-primary text-white mr-2">
                                               <i class="fa fa-home"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Shop</span>
                                            <span class="text-muted d-block text-success"> {{ $top_shop->warehouse ?? '-' }}</span>
                                          </div>

                                        </div>
                                        <span>
                                            <span>
                                                Tsh. {{ number_format($top_shop->total_selling ?? 0 )}}
                                         </span>
                                    </span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-secondary text-white mr-2">
                                                <i class="fa fa-user"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Customer</span>
                                            <span class="text-muted d-block text-success">{{ $top_customer->customer_name ?? '-'}}</span>
                                          </div>
                                        </div>
                                        <span> Tsh. {{ number_format($top_customer->total_selling ?? 0) }}</span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-success text-white mr-2">
                                                <i class="fa fa-shopping-cart"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Product</span>
                                            <span class="text-muted d-block text-success">{{ $top_product->item ?? '-' }}</span>
                                          </div>
                                        </div>
                                        <span>Tsh. {{ number_format($top_product->total_value ?? 0) }}</span>
                                      </li>
                                    </ul>
                                  </div>
                              </div>
                        </div>

                              <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                            <div class="card card-custom gutter-b bg-white border-0">
                                <div class="card-header align-items-center  border-0">
                                    <div class="card-title mb-0">
                                        <h3 class="card-label text-body font-weight-bold mb-0">Report4
                                        </h3>
                                    </div>

                                </div>
                                <div class="card-body px-0">
                                    <ul class="list-group scrollbar-1" style="height: 300px;">
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-primary text-white mr-2">
                                               <i class="fa fa-home"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Shop</span>
                                            <span class="text-muted d-block text-success"> {{ $top_shop->warehouse ?? '-' }}</span>
                                          </div>

                                        </div>
                                        <span>
                                            <span>
                                                Tsh. {{ number_format($top_shop->total_selling ?? 0 )}}
                                         </span>
                                    </span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-secondary text-white mr-2">
                                                <i class="fa fa-user"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Customer</span>
                                            <span class="text-muted d-block text-success">{{ $top_customer->customer_name ?? '-'}}</span>
                                          </div>
                                        </div>
                                        <span> Tsh. {{ number_format($top_customer->total_selling ?? 0) }}</span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-success text-white mr-2">
                                                <i class="fa fa-shopping-cart"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Product</span>
                                            <span class="text-muted d-block text-success">{{ $top_product->item ?? '-' }}</span>
                                          </div>
                                        </div>
                                        <span>Tsh. {{ number_format($top_product->total_value ?? 0) }}</span>
                                      </li>
                                    </ul>
                                  </div>
                              </div>
                        </div>

                    </div>

                </div>
              </div>
            </div>


          </div>
        </div>




  <div  class="offcanvas offcanvas-right kt-color-panel p-0 kt_notes_panel" backdrop="static">
    <div class="offcanvas-header d-flex align-items-center justify-content-between pb-3">
      <h4 class="font-size-h4 font-weight-bold m-0">Checklist Master
      </h4>
      <a href="#" class="btn btn-sm btn-icon btn-light btn-hover-primary kt_notes_panel_close" >
        <svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-x" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"></path>
        </svg>
      </a>
    </div>

  
<div class="row container-fluid">               
            <div class="col-xl-12 col-md-12">                       
            @isset($metadatas)


 <form  method="post"  action="{{ route('dashboard-checklist.store') }}" enctype="multipart/form-data">
                          @csrf                           
    <input type="hidden" name="_method" value="post">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="qnID" id="qnID" value="">
    <input type="hidden" name="qnAID[]" id="qnAID" value="">
    <input type="hidden" name="aID" id="aID" value="">
          
<div class="row">
 <div class="card-body"  style="background-color:#b2ca5d !important">
<label class="text-dark" ><b>Indicator Questions</b></label>

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
<input type="checkbox"  onclick="myFunctionxx()" id="statusx" name="statusx" value="0" @if ($p->id==$chkp->asset_id) checked @endif>
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
  <iframe name="print_frame" width="0" height="0"  src="about:blank"></iframe>





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

</script>

<script type="text/javascript">

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
</body>
</html>
</div>
