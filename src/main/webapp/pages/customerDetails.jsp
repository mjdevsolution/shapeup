<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Customer Details</h1>
				<ol class="breadcrumb">
					<li><a href="#">
							<i class="fa fa-dashboard"></i> Home
						</a></li>
					<li class="active">Customer</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<form:form action="" method="GET">

					<div class="row">
						<div class="col-xs-12">

							<div class="box">
								<div class="box-header">
									<h3 class="box-title">Registered Customers</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body table-responsive">
									<table id="example1" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>ID</th>
												<th>First Name</th>
												<th>Middle Name</th>
												<th>Last Name</th>
												<th></th>
											</tr>
										</thead>

									</table>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
					</div>
				</form:form>
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->

	</tiles:putAttribute>
</tiles:insertDefinition>

<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
<!-- page script -->
<script type="text/javascript">
	$(function() {

		$("#example1")
				.dataTable(
						{
							"bProcessing" : false,
							"bServerSide" : false,
							"sort" : "position",
							"sAjaxSource" : "customerDetails",
							"aoColumns" : [
									{
										"mData" : "id"
									},
									{
										"mData" : "firstName"
									},
									{
										"mData" : "middleName"
									},
									{
										"mData" : "lastName"
									},
									{
										"mData" : null,
										"sClass" : "center",
										"fnRender" : function(oObj) {
											return '<a href=\"editCustomer?customerId=' + 
			                                oObj.aData.id + '\">Edit</a>';
										}
									} ]
						});

	});
</script>





