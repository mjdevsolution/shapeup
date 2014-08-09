<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/newCustomer" var="newCustomerUrl" />
<c:url value="/customers" var="customersUrl" />
<c:url value="/loadAttendance" var="loadAttendanceUrl" />

<aside class="left-side sidebar-offcanvas">

	<section class="sidebar">

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

		<ul class="sidebar-menu">

			<li class="treeview"><a href="${customersUrl}">
					<i class="fa fa-bar-chart-o"></i> <span>Customer</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
				<ul class="treeview-menu">
					<li><a href="${newCustomerUrl}">
							<i class="fa fa-angle-double-right"></i> Registration
						</a></li>
					<li><a href="${loadAttendanceUrl}">
							<i class="fa fa-angle-double-right"></i> Attendance
						</a></li>
				</ul></li>

		</ul>
	</section>
</aside>