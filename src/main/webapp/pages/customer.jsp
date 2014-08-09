<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html"%>

<c:url value="/addCustomer" var="addCustomerUrl" />

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<aside class="right-side">
			<section class="content-header">
				<h1>New Registration</h1>
				<ol class="breadcrumb">
					<li><a href="#">
							<i class="fa fa-dashboard"></i> Home
						</a></li>
					<li><a href="#">Customer</a></li>
					<li class="active">Registration</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<form:form id="form" action="${addCustomerUrl}" method="post" modelAttribute="customerForm"
					cssClass="form-horizontal" role="form">

					<%-- <form:hidden path="customer" /> --%>
					<form:hidden path="customer.id" />

					<div class="row">
						<div class="col-md-12">
							<div class="box box-primary">

								<div class="box-header">
									<h3 class="box-title">Member Information</h3>
								</div>

								<div class="row">
									<div class="col-md-4">
										<div class="form-horizontal">
											<div class="box-body">

												<html:inputField name="customer.firstName" label="First Name" forId="firstNameId" placeholder="First Name" />
												<html:inputField name="customer.middleName" label="Middle Name" forId="middleNameId" placeholder="Middle Name" />
												<html:inputField name="customer.lastName" label="Last Name" forId="lastNameId" placeholder="Last Name" />
												<html:inputField name="customer.nicNo" label="NIC No." forId="nicNoId" placeholder="NIC No." />


												<div class="form-group">
													<label for="dateOfBirthId" class="col-lg-4 col-sm-4 control-label">Date of Birth</label>
													<div class="col-lg-8">
														<form:input path="customer.dateOfBirth" size="16" placeholder="DD-MM-YYYY"
															cssClass="form-control default-date-picker" id="dateOfBirthId" />
													</div>
												</div>
												<div class="form-group">
													<label for="exampleInputEmail1" class="col-lg-4 col-sm-4 control-label">Gender</label>
													<div class="col-lg-8">
														<form:select class="form-control" path="customer.gender">
															<form:option class="form-control" value="M">Male</form:option>
															<form:option class="form-control" value="F">Female</form:option>
														</form:select>
													</div>
												</div>
											</div>

										</div>

									</div>
									<div class="col-md-4">
										<div class="form-horizontal">
											<div class="box-body">

												<div class="form-group">
													<label for="addressLineOneId" class="col-lg-4 col-sm-4 control-label">Address</label>
													<div class="col-lg-8">
														<form:input path="personalAddress.lineOne" cssClass="form-control" id="addressLineOneId"
															placeholder="Address Line 1" />
													</div>
												</div>
												<div class="form-group">
													<label for="addressLineTwoId" class="col-lg-4 col-sm-4 control-label"></label>
													<div class="col-lg-8">
														<form:input path="personalAddress.lineTwo" cssClass="form-control" id="addressLineTwoId"
															placeholder="Address Line 2" />
													</div>
												</div>
												<div class="form-group">
													<label for="cityId" class="col-lg-4 col-sm-4 control-label">City</label>
													<div class="col-lg-8">
														<form:input path="personalAddress.city" cssClass="form-control" id="cityId" placeholder="City" />
													</div>
												</div>
												<div class="form-group">
													<label for="mobileNoId" class="col-lg-4 col-sm-4 control-label">Mobile No.</label>
													<div class="col-lg-8">
														<form:input path="personalAddress.phoneNo" cssClass="form-control" id="mobileNoId"
															placeholder="Mobile No." />
													</div>
												</div>
												<div class="form-group">
													<label for="faxId" class="col-lg-4 col-sm-4 control-label">Fax</label>
													<div class="col-lg-8">
														<form:input path="" cssClass="form-control" id="faxId" placeholder="Fax" />
													</div>
												</div>
												<div class="form-group">
													<label for="emailId" class="col-lg-4 col-sm-4 control-label">Email</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="emailId" placeholder="Email">
													</div>
												</div>

											</div>
										</div>
									</div>

									<div class="col-md-4">
										<div class="form-horizontal">
											<div class="box-body">

												<img id="profile_picture" src="${customerForm.image}" />
												<input id="profile_picture_upload" type="file" name="profile_picture">

											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="box box-primary">

								<div class="box-header">
									<h3 class="box-title">Membership</h3>
								</div>

								<div class="row">
									<div class="col-md-4">
										<div class="form-horizontal">
											<div class="box-body">

												<div class="form-group">
													<label for="typeId" class="col-lg-4 col-sm-4 control-label">Type</label>
													<div class="col-lg-8">
														<select class="form-control" id="typeId">
															<option>Individual</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label for="periodId" class="col-lg-4 col-sm-4 control-label">Period</label>
													<div class="col-lg-8">
														<select class="form-control" id="periodId">
															<option>3 Months</option>
															<option>6 Months</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label for="enrolmentFeeId" class="col-lg-4 col-sm-4 control-label">Enrolment Fee</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="enrolmentFeeId" placeholder="Enrolment Fee">
													</div>
												</div>
												<div class="form-group">
													<label for="feeId" class="col-lg-4 col-sm-4 control-label">Fee</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="feeId" placeholder="Fee">
													</div>
												</div>
											</div>

										</div>
									</div>

									<div class="col-md-4">
										<div class="form-horizontal">
											<div class="box-body">

												<div class="form-group">
													<label for="startDateId" class="col-lg-4 col-sm-4 control-label">Start Date</label>
													<div class="col-lg-8">
														<input type="date" class="form-control" id="startDateId" placeholder="Start Date">
													</div>
												</div>
												<div class="form-group">
													<label for="expireDateId" class="col-lg-4 col-sm-4 control-label">Expire Date</label>
													<div class="col-lg-8">
														<input type="date" class="form-control" id="expireDateId" placeholder="Expire Date">
													</div>
												</div>
												<div class="form-group">
													<label for="allowedMemberId" class="col-lg-4 col-sm-4 control-label">Allowed Member</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="allowedMemberId" placeholder="Allowed Member">
													</div>
												</div>
												<div class="form-group">
													<label for="existingMemberId" class="col-lg-4 col-sm-4 control-label">Existing Member</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="existingMemberId" placeholder="Existing Member">
													</div>
												</div>

											</div>
										</div>
									</div>

									<div class="col-md-4">
										<div class="form-horizontal">
											<div class="box-body">

												<div class="form-group">
													<label for="primeMemberNoId" class="col-lg-4 col-sm-4 control-label">Prime Member No.</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="primeMemberNoId" placeholder="Prime Member No.">
													</div>
												</div>

											</div>
										</div>
									</div>

								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<button class="btn bg-olive margin">Submit</button>
								</div>
							</div>

						</div>
					</div>
				</form:form>

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->

	</tiles:putAttribute>
</tiles:insertDefinition>


<script type="text/javascript">
	$(function() {
		$('.default-date-picker').datepicker({
			format : 'dd-mm-yyyy'
		});

		$('#profile_picture_upload')
				.fileupload(
						{
							dataType : 'json',
							url : '/shapeup/upload',

							done : function(e, data) {
								$('#profile_picture').attr('src',
										data.result.fileName);
							},

							fail : function(e, data) {
								$('#profile_picture')
										.attr('src',
												'resources/imageuploads/default_profile_picture.png');
							}
						});
	});
</script>





