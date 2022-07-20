<div>
 <div class="content d-flex flex-column flex-column-fluid" id="tc_content">
        <!--begin::Subheader-->
        <div class="subheader py-2 py-lg-6 subheader-solid">
            <div class="container-fluid">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-white mb-0 px-0 py-2">
                        <li class="breadcrumb-item active" aria-current="page">General Settings</li>
                         <li class="breadcrumb-item active" aria-current="page">Register Item or Asset Name:(AN)</li>

                    </ol>
                </nav>
            </div>
        </div>
        <hr>

            <div class="row container">
                <div class="col-xl-12 col-md-12">
                    <div class="card card-custom gutter-b bg-white border-0">
                      
                            @if($message)
                            <div class="alert alert-danger">
                              <h5   class="text-center">{{ $message }}</h5>
                            </div>
                            @endif
                       



                                 <div class="card card-custom gutter-b bg-white border-0   table-contentpos">
                            @isset($metadatas)
                                <div>                                                         

                                <div>
                                           <form  method="post"  action="{{ route('propertyTest.store') }}" enctype="multipart/form-data">
                             @csrf
                           

                                
       <div class="form-group">
            <label class="text-dark" >Property Name</label>
                        <select wire:model.defer="site_id" name="site_id" id="site_id" class="form-control" required>
                          <option value="">--- Select property name ---</option>
                            @foreach ($sites as $site)
                          <option value="{{$site->id}}">{{$site->property_name}}</option>

                            @endforeach
                        </select>
        </div>

                                     
     <!--  <div class="form-group">
            <label class="text-dark" >Asset Location</label>
                        <select name="lacation_id" id="lacation_id" class="form-control" required>
                          <option value="">--- Select group name ---</option>
                            @foreach ($metanames as $metaname)
                          <option value="{{$metaname->id}}">{{$metaname->metaname_name}}</option>

                            @endforeach
                        </select>
          </div> -->

          <div class="form-group">
            <label class="text-dark">Asset classified into(Metaname)</label>
                        <select wire:model="metaname_id" name="metaname_id" id="metaname_id" class="form-control" required>
                          <option value="">--- Select metaname ---</option>
                            @foreach ($metanames as $metaname)
                          <option value="{{$metaname->id}}">{{$metaname->metaname_name}}</option>

                            @endforeach
                        </select>
                </div>

                                        <input type="hidden" name="_method" value="post">
                                               <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                               
                                          <div class="form-group">
                                               <table class="table table-responsive table-hover">
                                                   <thead>
                                                    
                                                   </thead>
                                                   <tbody>
                                              
                                                @foreach ($metadatas as $metadata )
                                                       <tr>

                                                           <td>{{ $metadata->metadata_name  }}</td>
                                                           
                                                           @if($metadata->datatype !='textarea')
                                                            <td> <input type="{{$metadata->datatype}}" name="{{$metadata->datatype_name}}" required=""></td>
                                                            @else
                                                            <td>
                                                                   <textarea name="{{$metadata->datatype_name}}" required=""></textarea>
                                                                   @endif
                                                          </td>     

                                                       </tr>

                                                       @endforeach

                                                   </tbody>                                                    
                                               </table>
                                       </div>
     <div class="col-md-4">                              
<button  class="btn-sm btn btn-primary float-right" type="submit">Save <i class="fas fa-save"></i></button>
</div>
                                   </form>

                                </div>
                        </div>
@endisset

     

       



<!-- start of price change Modal -->
{{-- <div class="modal fade" id="editprice" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Change price for this Item</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="modal-body">

        <table id="orderTable" class="display" style="width:100%">
            <thead>
                <tr>

                    <th>Name</th>
                    <th>Price</th>
                    <th class=" text-right no-sort"></th>
                </tr>
            </thead>
            <tbody>
              
            </tbody>
        </table>
    </div>
  </div>
  end of price modal

            </div>
        </div> --}}
   </div>


<div class="modal fade text-left" id="folderpop" tabindex="-1" role="dialog" aria-labelledby="myModalLabel14" style="display: none;" aria-hidden="true">
<div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg " role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="myModalLabel14">Draft Orders</h3>
        <button type="button" class="close rounded-pill btn btn-sm btn-icon btn-light btn-hover-primary m-0" data-dismiss="modal" aria-label="Close">
          <svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-x" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"></path>
          </svg>
        </button>
      </div>
      <div class="modal-body pos-ordermain">
          <div class="row">
           

            </div>
            </div>

          </div>
      </div>

    </div>


{{-- Start of Discount
<div class="modal fade text-left" id="discountpop" tabindex="-1" role="dialog" aria-labelledby="myModalLabel122" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable  modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title" id="myModalLabel122">Add Discount</h3>
            <button type="button" class="close rounded-pill btn btn-sm btn-icon btn-light btn-hover-primary m-0" data-dismiss="modal" aria-label="Close">
              <svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-x" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"></path>
              </svg>
            </button>
          </div>
          <form action="{{ route('pos.update',$id) }}" method="POST">
              @csrf
              <input type="hidden" name="_method" value="PUT">
          <div class="modal-body">
              <div class="row">
                  <div class="col-12">
                    <label  class="text-body">Discount</label>
                    <fieldset class="form-group mb-3 d-flex">
                        <input type="hidden" name="order_id" value="{{ $id }}">
                        <input type="number" name="discount" min="0" max="{{ $po->subtotal*0.3 }}" class="form-control bg-white"  placeholder="Enter Discount">
                        <button type="submit" class="btn-secondary btn ml-2 white pt-1 pb-1 d-flex align-items-center justify-content-center">Apply</button>
                    </fieldset>
                    <input type="submit" name="discountoff" value="Reset Discount" class="btn btn-danger white pt-1 pb-1 justify-content-center">
                    <div class="p-3 bg-light-dark d-flex justify-content-between border-bottom">

                        <h5 class="font-size-bold mb-0">Discount Applied of:</h5>
                        <h5 class="font-size-bold mb-0">Tsh. {{ $po->discount }}</h5>
                    </div>
                  </div>
              </div>
          </div>
        </form>
        </div>
    </div>
</div> --}}


</div>
<script type="text/javascript">
  $(document).ready(function() {
$('.mdb-select').materialSelect();
});
</script>