<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas">

	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="resources/img/avatar3.png" class="img-circle" alt="User Image" />
			</div>
			<div class="pull-left info">

				<p>
					Hello,
					<sec:authentication property="principal.name" />
				</p>

			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">

			<li><a href="#">
					<i class="fa fa-dashboard"></i> <span>Dashboard</span>
				</a></li>

			<li class="treeview"><a href="#">
					<i class="fa fa-bar-chart-o"></i> <span>Charts</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
				<ul class="treeview-menu">
					<li><a href="#">
							<i class="fa fa-angle-double-right"></i> Morris
						</a></li>
					<li><a href="#">
							<i class="fa fa-angle-double-right"></i> Flot
						</a></li>
					<li><a href="#">
							<i class="fa fa-angle-double-right"></i> Inline charts
						</a></li>
				</ul></li>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>