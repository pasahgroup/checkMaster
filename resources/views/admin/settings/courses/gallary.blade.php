@extends('layouts.app')
@section('content')
				<!--begin::Content-->
				<div class="content d-flex flex-column flex-column-fluid" id="tc_content">
					<!--begin::Subheader-->
					<div class="subheader py-2 py-lg-6 subheader-solid">
						<div class="container-fluid">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb bg-white mb-0 px-0 py-2">
									<li class="breadcrumb-item active" aria-current="page">Gallary Settings</li>
									<li class="breadcrumb-item active" aria-current="page">Gallary</li>
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
											<div class="card card-custom gutter-b bg-transparent shadow-none border-0" >
												<div class="card-header align-items-center  border-bottom-dark px-0">
													<div class="card-title mb-0">
														<h5 class="card-label mb-0 font-weight-bold text-body">Gallary List
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

										<div class="col-12 ">
											<div class="card card-custom gutter-b bg-white border-0" >
												<div class="card-body" >
													<div >
														<div class=" table-responsive" id="printableTable">
                                                            <table id="orderTable" class="display" style="width:100%">

																<thead class="text-body">
																	<tr>
																		<th>ID</th>
																		<th>Course name</th>
																		<th>Title</th>
																			<th>Sub-course Name</th>
																		
																		<th>Photo</th>
																		<th>Video Url</th>
																		<th>Description</th>
																		<th>Date Created</th>																		
																	<th>Status</th>

						<th class="no-sort text-right">Action</th>
																	</tr>
																</thead>
					<tbody class="kt-table-tbody text-dark">
                    @foreach ($gallaries as $gallary)
				<tr class="kt-table-row kt-table-row-level-0">
				<td >{{ $gallary->id }}</td>
				<td>{{ $gallary->course_name}}</td>
					<td>{{ $gallary->title}}</td>
					<td>{{ $gallary->subcourse_name }}</td>
			
				<td><div class="logo mr-auto"><img src="{{ URL::asset('/storage/img/'.$gallary->photo) }}" width="60" height="40"></div></td>
				<td>{{ $gallary->video_url }}</td>				
					<td>{{ $gallary->description }}</td>
					<td>{{ $gallary->updated_at }}</td>
					<td>{{ $gallary->status }}</td>

				<td>
 <!-- start Modal -->
  <div class="modal fade" id="issue{{ $gallary->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Edit   {{ $gallary->title}}:{{ $gallary->subcourse_name }}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="{{ route('gallary.update',$gallary->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="_method" value="PUT">
                <div class="row">
                    <div class="col-12">

                    	<div class="form-group">
                        <label class="text-dark">Category</label>
                         <select name="category_id" id="category_id" class="form-control">
                                                                <option value="{{$gallary->course_id}}" selected>{{$gallary->course_name}}</option>
                                                                @foreach($courses as $course)
                                                                <option value="{{$course->id}}">{{$course->course_name}}</option>
                                                                @endforeach
                                                            </select>


                  </div>


                 <div class="form-group">
                        <label class="text-dark">Photo/Video Title</label>
                         <select name="title_name" id="title_name" class="form-control">
                                                                <option selected>{{$gallary->title}}</option>
                                                                @foreach($titles as $title)
                                                                <option value="{{$title->title_name}}">{{$title->title_name}}</option>
                                                                @endforeach
                                                            </select>
                                                     
                  </div>




                    	<div class="form-group">
                        <label class="text-dark">Sub-category</label>

                           <select name="subcategory_id" id="subcategory_id" class="form-control">
                                                                <option selected>{{$gallary->subcourse_name}}</option>
                                                              @foreach($subcourses as $subcourse)
                                                                <option value="{{$subcourse->id}}">{{$subcourse->subcourse_name}}</option>
                                                                @endforeach
                                                            </select>


                  </div>

                                         

                          <div class="form-group">
                            <div class="row">
                          	<div class="col-3">
                 <div class="logo mr-auto"><img src="{{ URL::asset('/storage/img/'.$gallary->photo) }}" width="120" height="100"></div>
                     </div>
                     	<div class="col-7"> 
                     	<input type="file" class="d-block w-100" id="attachment" name="attachment[]" accept="image/*">
                                                       
                                                        </div>
                                                    </div>
                                                     <small  class="form-text text-muted">please edit photo</small>
                  </div>


                       <div class="form-group">
                        <label class="text-dark">Video Url</label>
                        <input type="text" name="video_url" id="video_url" class="form-control" value="{{ $gallary->video_url }}">
                  </div>
                        										 <div class="col-md-12">
                        <label class="text-dark">Description</label>
                        <textarea class="form-control" rows="3" id="description" name="description" maxlength="440">{{ $gallary->description }} </textarea>
                  </div>  

                     <div class="form-group">
                        <label class="text-dark">Status</label>
                         <select name="status" id="status" class="form-control">
                                                            <option value="{{ $gallary->status }}" selected>{{ $gallary->status }} </option>
                                                                <option>Active</option>
                                                                <option>Inative</option>
                                                            </select>
               
                  </div>


                </div>
                </div>


     <div class="form-group">
                            <div class="row">
                          	<div class="col-2">
                     <button type="button" class="btn btn-primary" data-dismiss="modal" aria-label="Close">Close</button>
                </div>
                     	<div class="col-10">
                     	<button type="submit" class="btn btn-success float-right" >Update</button>
                                                       
                                                        </div>
                                                    </div>
                  </div>
              </form>
        </div>
      </div>
    </div>
  </div>
  {{-- end of modal --}}


																			<div class="card-toolbar text-right">
																				<button class="btn p-0 shadow-none" type="button" id="dropdowneditButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
																					<span class="svg-icon">
																						<svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-three-dots text-body" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																							<path fill-rule="evenodd" d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"></path>
																						</svg>
																					</span>
																				</button>
																				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdowneditButton2"  style="position: absolute; transform: translate3d(1001px, 111px, 0px); top: 0px; left: 0px; will-change: transform;">

                                    @if(($gallary->status)!="Stop")
 <a href="javascript:void(0)" class="btn-success dropdown-item click-edit" id="click-edit1" data-toggle="modal" data-target="#issue{{ $gallary->id }}">Edit</a>
 <!-- <a href="{{ route('edit-course',$gallary->id) }}" class="btn-success dropdown-item click-delete" id="click-edit1">Edit2</a> -->
<a href="{{ route('delete-gallary',$gallary->id) }}" class="btn-success dropdown-item click-delete" id="click-edit1" onclick="return confirm(id='Are you sure you want to delete this  {{$gallary->course_name}}')">Delete</a>

                                    @endif
																				</div>
																				</div>
																		</td>
																	</tr>
                              @endforeach

																</tbody>
															</table>
														</div>
													</div>


												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

	<div  class="offcanvas offcanvas-right kt-color-panel p-5 kt_notes_panel">
		<div class="offcanvas-header d-flex align-items-center justify-content-between pb-3">
			<h4 class="font-size-h4 font-weight-bold m-0">Register Gallary
			</h4>
			<a href="#" class="btn btn-sm btn-icon btn-light btn-hover-primary kt_notes_panel_close" >
				<svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-x" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"></path>
				</svg>
			</a>
		</div>
		
		       <form  method="post"  action="{{ route('gallary.store') }}" enctype="multipart/form-data">
                             @csrf
    <input type="hidden" name="_method" value="post">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">



															<div class="form-group row">


             <div class="col-md-12">
                     		<label class="text-dark">Category</label>
                         <select name="category_id" id="category_id" class="form-control">
                         	<option>--select category--</option>
                        
                         	  @foreach ($courses as $course)
                                                               <option value="{{ $course->id }}">{{ $course->course_name }}</option>
                                                                 @endforeach
                                                            </select>
                                                        </div>


                                                                     <div class="col-md-12">
                     		<label class="text-dark">Sub category</label>
                         <select name="subcategory_id" id="subcategory_id" class="form-control">
                         	<option>--select sub category--</option>
                                                              
                                                                
                         	  @foreach ($subcourses as $subcourse)
                                                                <option value="{{ $subcourse->id }}">{{ $subcourse->subcourse_name }}</option>
                                                                 @endforeach
                                                            </select>
                                                        </div>



																<div class="col-md-12">
																	<label >Photo/Video Title</label>
																		<input type="text" name="title" id="title" class="form-control border-dark"  placeholder="" value="{{ $profile->company_name??'' }}">
																	
																</div>

																<div class="col-md-12">
																	<label >Upload photo</label>
																		<input type="file" class="d-block w-100" id="attachment" name="attachment[]" accept="image/*" required>
																
																</div>

																
                                                                <div class="col-md-12">
																	<label >Video Url</label>
																	<input class="form-control" type="text" name="video_url" id="video_url">
																</div>

																 <div class="col-md-12">
                        <label class="text-dark">Description</label>
                        <textarea class="form-control" rows="3" id="description" name="description" maxlength="440"></textarea>
                  </div>
                         
                         <div class="col-md-12">
                     		<label class="text-dark">Status</label>
                         <select name="status" id="status" class="form-control">
                         	<option>--select status--</option>
                                                                <option>Active</option>
                                                                <option>Inactive</option>
                                                            </select>
                                                        </div>

															
																<div class="col-md-12">
																		<br>
																	<button type="submit" class="btn btn-primary float-right">Save</button>
																</div>

															</div>
														</form>
	</div>
	<iframe name="print_frame" width="0" height="0"  src="about:blank"></iframe>

</body>
</html>
@endsection
