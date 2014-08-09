<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<aside class="right-side">
			<section class="content-header">
				<h1>
                        Attendance 
                        <small>Entry Form</small>
                    </h1>
                    
				<ol class="breadcrumb">
					<li><a href="#">
							<i class="fa fa-dashboard"></i> Home
						</a></li>
					<li><a href="#">Customer</a></li>
					<li class="active">Attendance</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
			
			<div class="row">

                        <div class="col-md-6">
                            <!-- Application buttons -->
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Member Detail</h3>
									<div class="box-tools">
                                        <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Membership No"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="box-body">
								
									<div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tr>
                                            <td>First Name:</td>
                                            <td>Mahendran</td>
                                        </tr>
                                        <tr>
                                            <td>Last Name:</td>
                                            <td>Sasikaran</td>
                                        </tr>
                                        <tr>
                                            <td>Membership expire on: </td>
                                            <td>14/11/2014</td>
                                        </tr>
										<tr>
											<td/>
											<td/>
										</tr>
                                    </table>
                                </div><!-- /.box-body -->
                                    
									<h2>9:31 PM</h2>
									<h2>Tuesday, August 5, 2014</h2>
                                    <a class="btn btn-app">
                                        <i class="fa fa-play"></i> Start
                                    </a>
                                    <a class="btn btn-app">
                                        <i class="fa fa-stop"></i> End
                                    </a>
									
									<p>Click <code>Start</code> to enter in time & Click <code>End</code> to enter out time:</p>
                                    
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                            

                        </div><!-- /.col -->
						
						<div class="col-xs-6">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">History</h3>
                                    
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover">
                                        <tr>
                                            <th>Date</th>
                                            <th>In Time</th>
                                            <th>Out Time</th>
                                        </tr>
                                        <tr>
                                            <td>11-7-2014</td>
                                            <td>10:18:50</td>
                                            <td>11:00:00</td>
                                        </tr>
                                        <tr>
                                            <td>11-7-2014</td>
                                            <td>10:18:50</td>
                                            <td>11:00:00</td>
                                        </tr>
                                        <tr>
                                            <td>11-7-2014</td>
                                            <td>10:18:50</td>
                                            <td>11:00:00</td>
                                        </tr>
                                        <tr>
                                            <td>11-7-2014</td>
                                            <td>10:18:50</td>
                                            <td>11:00:00</td>
                                        </tr>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div><!-- /. row -->
			
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

		$('#profile_picture_upload').fileupload({
			dataType : 'json',
			url : '/shapeup/upload',
			
			done : function(e, data) {
				$('#profile_picture').attr('src', data.result.fileName);
			},
			
			fail: function (e, data) {
				$('#profile_picture').attr('src', 'resources/imageuploads/default_profile_picture.png');
	          }
		});
	});
</script>





			