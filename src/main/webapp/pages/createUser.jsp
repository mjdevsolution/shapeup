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
							<li><a href="#">
									<i class="icon-home"></i> User Management
								</a></li>
							<li class="active">Create User</li>
						</ul>
						<!--breadcrumbs end -->
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">

							<section class="panel">

								<header class="panel-heading"> Member Information </header>

								<div class="panel-body">
									<form class="form-horizontal tasi-form" method="get">

										<div class="form-group">
											<label class="col-lg-2 control-label">First Name</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="First Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Middle Name</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Middle Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Last Name</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Last Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">NIC No.</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Number">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Date Of Birth</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Number">
											</div>
										</div>

									</form>
								</div>
							</section>

							<section class="panel">

								<header class="panel-heading"> Residence Address </header>

								<div class="panel-body">
									<form class="form-horizontal tasi-form" method="get">

										<div class="form-group">
											<label class="col-lg-2 control-label">Address</label>
											<div class="col-lg-10">
												<textarea class="form-control" cols="60" rows="5"></textarea>
											</div>
										</div>

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

										<div class="form-group ">
											<label for="email" class="control-label col-lg-2">Email</label>
											<div class="col-lg-10">
												<input class="form-control " id="email" name="email" type="email" />
											</div>
										</div>

									</form>
								</div>
							</section>

							<section class="panel">

								<header class="panel-heading"> Business Address </header>

								<div class="panel-body">
									<form class="form-horizontal tasi-form" method="get">

										<div class="form-group">
											<label class="col-lg-2 control-label">Occupation</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Middle Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Employee</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" placeholder="Middle Name">
											</div>
										</div>

										<div class="form-group">
											<label class="col-lg-2 control-label">Address</label>
											<div class="col-lg-10">
												<textarea class="form-control" cols="60" rows="5"></textarea>
											</div>
										</div>

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

										<div class="form-group ">
											<label for="email" class="control-label col-lg-2">Email</label>
											<div class="col-lg-10">
												<input class="form-control " id="email" name="email" type="email" />
											</div>
										</div>

									</form>
								</div>
							</section>

							<button type="submit" class="btn btn-info">Submit</button>

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