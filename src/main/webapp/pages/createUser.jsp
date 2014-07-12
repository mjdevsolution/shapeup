<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">


		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!-- page start-->

				<div class="row">
					<div class="col-lg-12">
						<!--breadcrumbs start -->
						<ul class="breadcrumb">
							<li><a href="#"><i class="icon-home"></i> Dealer Management </a></li>
							<li class="active">Dealer Management Wizard</li>
						</ul>
						<!--breadcrumbs end -->
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> Dealer Management Wizard </header>
							<div class="panel-body">
								<div class="stepy-tab">
									<ul id="default-titles" class="stepy-titles clearfix">
										<li id="default-title-0" class="current-step">
											<div>Create New User</div>
										</li>
										<li id="default-title-1" class="">
											<div>Account</div>
										</li>
										<li id="default-title-2" class="">
											<div>Commission</div>
										</li>
									</ul>
								</div>

								<form class="form-horizontal" id="default">

									<fieldset title="Create New User" class="step" id="default-step-0">
										<legend> </legend>
										<div class="form-group">
											<label class="col-lg-2 control-label">Title</label>
											<div class="col-lg-10">
												<select class="form-control m-bot15" placeholder="Title">
													<option>Mr.</option>
													<option>Option 2</option>
													<option>Option 3</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">First Name</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="First Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Last Name</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Last Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Middle Name</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Middle Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Type</label>
											<div class="col-lg-10">
												<select class="form-control m-bot15" placeholder="Type">
													<option>Dealer</option>
													<option>Option 2</option>
													<option>Option 3</option>
												</select>
											</div>
										</div>

										<div class="form-group ">
											<label for="email" class="control-label col-lg-2">Email</label>
											<div class="col-lg-10">
												<input class="form-control " id="email" name="email" type="email" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">User Name</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Username">
											</div>
										</div>

										<div class="form-group ">
											<label for="password" class="control-label col-lg-2">Password</label>
											<div class="col-lg-10">
												<input class="form-control " id="password" name="password" type="password" />
											</div>
										</div>

										<div class="form-group ">
											<label for="confirm_password" class="control-label col-lg-2">Confirm Password</label>
											<div class="col-lg-10">
												<input class="form-control " id="confirm_password" name="confirm_password" type="password" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Image TODO</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Image">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Gender</label>
											<div class="col-lg-10">
												<select class="form-control m-bot15" placeholder="Gender">
													<option>Male</option>
													<option>Female</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Identification Type</label>
											<div class="col-lg-10">
												<select class="form-control m-bot15" placeholder="Type">
													<option>NIC</option>
													<option>Password</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Identification Number</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Number">
											</div>
										</div>

									</fieldset>

									<fieldset title="Account" class="step" id="default-step-1">
										<legend> </legend>
										<div class="form-group">
											<label class="col-lg-2 control-label">Phone</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Phone">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Mobile</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Mobile">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Address</label>
											<div class="col-lg-10">
												<textarea class="form-control" cols="60" rows="5"></textarea>
											</div>
										</div>

									</fieldset>

									<fieldset title="Commission" class="step" id="default-step-2">
										<legend> </legend>
										<div class="form-group">
											<label class="col-lg-2 control-label">Full Name</label>
											<div class="col-lg-10">
												<p class="form-control-static">Tawseef Ahmed</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Email Address</label>
											<div class="col-lg-10">
												<p class="form-control-static">tawseef@vectorlab.com</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">User Name</label>
											<div class="col-lg-10">
												<p class="form-control-static">tawseef</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Phone</label>
											<div class="col-lg-10">
												<p class="form-control-static">01234567</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Mobile</label>
											<div class="col-lg-10">
												<p class="form-control-static">01234567</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-2 control-label">Address</label>
											<div class="col-lg-10">
												<p class="form-control-static">Dreamland Ave, Suite 73 AU, PC 1361 P: (123) 456-7891</p>
											</div>
										</div>
									</fieldset>

									<input type="submit" class="finish btn btn-danger" value="Finish" />
								</form>
							</div>
						</section>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->

	</tiles:putAttribute>
</tiles:insertDefinition>

<!--script for this page-->
<script src="resources/js/jquery.stepy.js"></script>


<script>
	//step wizard

	$(function() {
		$('#default').stepy({
			backLabel : 'Previous',
			block : true,
			nextLabel : 'Next',
			titleClick : true,
			titleTarget : '.stepy-tab'
		});
	});
</script>