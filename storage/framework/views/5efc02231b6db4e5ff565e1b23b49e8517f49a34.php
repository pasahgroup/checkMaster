<?php $__env->startSection('content'); ?>
				<!--begin::Content-->
				<div class="content d-flex flex-column flex-column-fluid" id="tc_content">
					<!--begin::Subheader-->
					<div class="subheader py-2 py-lg-6 subheader-solid">
						<div class="container-fluid">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb bg-white mb-0 px-0 py-2">
									<li class="breadcrumb-item " aria-current="page">Settings</li>
									<li class="breadcrumb-item active" aria-current="page">Users</li>
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
														<h3 class="card-label mb-0 font-weight-bold text-body">Role & Permission
														</h3>
													</div>
												</div>
											</div>
										</div>
									</div>
						<?php if($datas !="[]"): ?>
						<div class="row row-sm">
							<div class="col-md-8 col-lg-12">
								<div class="card custom-card">
									<div class="card-header  border-bottom-0 pb-0">
										<div class="page-header">
											<div class="d-flex">
											<h3>Roles</h3>
											</div>
									<div class="d-flex">

										<button type="button" class="btn btn-primary ripple my-2 btn-icon-text text-right" data-target="#modaldemo3" data-toggle="modal">
										  <i class="fe fe-plus mr-2"></i> New Role
										</button>
									</div>
								</div>
							</div>
									<div class="card-body">
										<div class="table-responsive border">
											<table class="table mb-0 table-hover">
														<thead>
															<tr>
																<th>ID</th>
																<th>Name</th>
																<th>Permissions</th>
																<th style="width:20%">Action</th>
															</tr>
														</thead>
														<tbody>
													<?php $__currentLoopData = $datas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
													<tr class="border-bottom">
														<td scope="row"><?php echo e($value->id); ?></td>
														<td scope="row"><?php echo e($value->name); ?></td>
														<td scope="row">
                                                            <form action="<?php echo e(route('roles.destroy', $value->id)); ?>" method="POST" >
															<?php $__currentLoopData = $rolepermission; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rolepermit): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
																<?php if($rolepermit->rolename == $value->name ): ?>

																<?php echo method_field('PUT'); ?>
																<input type="hidden" name="_method" value="delete">
																<input type="hidden" name="users" value="users">
																<input type="hidden" name="revoke" value="revoke">
																		<?php echo e(csrf_field()); ?>

																<button type="submit"  name="permission" class="btn btn-sm btn-primary" value="<?php echo e($rolepermit->permission_name); ?>" onclick="return confirm(id='Are you sure you want to revoke this permission to this role?')" style="margin-bottom:3px;"><i class="fa fa-minus"></i> <?php echo e($rolepermit->permission_name); ?></button>
																<?php endif; ?>
															<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        </form>
														</td>

														<td>
															<div class="button-list">
																<form action="<?php echo e(route('roles.destroy', $value->id)); ?>" method="POST" >
																	<a href="#" class="btn btn-sm btn-outline-primary" data-target="#roletopermission<?php echo e($value->id); ?>" data-toggle="modal" title="Add Permission"><i class="fa fa-plus"></i>  Permission </a>
																<?php echo method_field('PUT'); ?>
																<input type="hidden" name="_method" value="delete">
																<input type="hidden" name="users" value="users">
																<input type="hidden" name="role" value="role">
																		<?php echo e(csrf_field()); ?>

																<button type="submit" class="btn btn-sm btn-danger" onclick="return confirm(id='swal-warning')" title="Delete"><i class="fa fa-trash"></i></button>
															</form>
															</div>
														</td>
													</tr>

						
						<div class="modal" id="roletopermission<?php echo e($value->id); ?>" style="display: none;" aria-hidden="true">
							<div class="modal-dialog modal-md" role="document">
								<div class="modal-content modal-content-demo">
									<div class="modal-header">
										<h6 class="modal-title">Assign permission to <span class="alert alert-primary"><?php echo e($value->name); ?></span> role</h6>
										<button aria-label="Close" class="close" data-dismiss="modal" type="button">
											<span aria-hidden="true">×</span></button> </div> <div class="modal-body">

												
												<form method="POST" action="<?php echo e(route('roles.store')); ?>">
													<?php echo csrf_field(); ?>
												<div class="container">
												<div class="row">

													<div class="col-md-12 col-lg-12">
														<input type="hidden" name="role_id" value="<?php echo e($value->id); ?> ">
														<div class="form-group row">
															<label for="name" class="col-form-label "><?php echo e(__('Permission')); ?></label>
															<select name="permission_id" class="form-control" id="">
																<?php $__currentLoopData = $permission; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $permit): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

																<option value="<?php echo e($permit->id); ?>"><?php echo e($permit->name); ?></option>

																<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
															</select>
													</div>
												</div>
												<input type="hidden" name="roletopermission" value="roletopermission">
													</div>
													</div>

												

											</div> <div class="modal-footer">
												<button class="btn ripple btn-primary" type="submit">Save changes</button>
											</form>
												<button class="btn ripple btn-secondary" data-dismiss="modal" type="button">Close</button>
											</div>
										</div>
									</div>
								</div>
						

											<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
										</tbody>
									</table>

										</div>
									</div>
								</div>
							</div>

						</div>
						<?php else: ?>
						<h4 class="alert alert-danger text-center">No role or Permission registered. </h4>
						<?php endif; ?>
						<!-- End Row -->

						
						<div class="modal" id="modaldemo3" style="display: none;" aria-hidden="true">
							<div class="modal-dialog modal-md" role="document">
								<div class="modal-content modal-content-demo">
									<div class="modal-header">
										<h6 class="modal-title">Add New Role</h6>
										<button aria-label="Close" class="close" data-dismiss="modal" type="button">
											<span aria-hidden="true">×</span></button> </div> <div class="modal-body">

												
												<form method="POST" action="<?php echo e(route('roles.store')); ?>">
													<?php echo csrf_field(); ?>
								<div class="container">
								<div class="row">
										<div class="col-md-12 col-lg-12">
											<div class="form-group row">
												<label for="name" class="col-form-label "><?php echo e(__('Role')); ?></label>
													<input id="name" type="text" class="form-control" name="name"  required autocomplete="name" autofocus placeholder="Name">
												<input type="hidden" name="role" value="Role">
										</div>
									</div>
									</div>
									</div>
											
											</div> <div class="modal-footer">
												<button class="btn ripple btn-primary" type="submit">Save changes</button>
											</form>
												<button class="btn ripple btn-secondary" data-dismiss="modal" type="button">Close</button>
											</div>
										</div>
									</div>
								</div>
						


						
						<div class="modal" id="modalPermission" style="display: none;" aria-hidden="true">
							<div class="modal-dialog modal-sm" role="document">
								<div class="modal-content modal-content-demo">
									<div class="modal-header">
										<h6 class="modal-title">Add New Permission</h6>
										<button aria-label="Close" class="close" data-dismiss="modal" type="button">
											<span aria-hidden="true">×</span></button> </div> <div class="modal-body">

												
												<form method="POST" action="<?php echo e(route('roles.store')); ?>">
													<?php echo csrf_field(); ?>

								<div class="container">
								<div class="row">
										<div class="col-md-12 col-lg-12">
											<div class="form-group row">
												<label for="name" class="col-form-label "><?php echo e(__('Permission')); ?></label>
                                            <select name="name" class="form-control">
                                                <?php $__currentLoopData = $warehouses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $warehouse): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option><?php echo e($warehouse->warehouse); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>


											<input type="hidden" name="permission" value="Permission">
										</div>
									</div>
									</div>
									</div>

												

											</div> <div class="modal-footer">
												<button class="btn ripple btn-primary" type="submit">Save changes</button>
											</form>
												<button class="btn ripple btn-secondary" data-dismiss="modal" type="button">Close</button>
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


					</div>

				</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\horesyf\resources\views/admin/settings/users/roles.blade.php ENDPATH**/ ?>