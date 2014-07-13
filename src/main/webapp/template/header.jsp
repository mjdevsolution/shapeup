<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!--header start-->
<header class="header white-bg">

	<div class="sidebar-toggle-box">
		<div data-original-title="Toggle Navigation" data-placement="right" class="icon-reorder tooltips"></div>
	</div>

	<!--logo start-->
	<a href="#" class="logo">
		<span>Shape Up Management System</span>
	</a>
	<!--logo end-->

	<div class="top-nav ">
		<ul class="nav pull-right top-menu">
			<li><input type="text" class="form-control search" placeholder="Search"></li>

			<!-- user login dropdown start-->
			<li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#">
					<img alt="" src="resources/img/avatar1_small.jpg"> <span class="username"><sec:authentication
							property="principal.name" /></span> <b class="caret"></b>
				</a>
				<ul class="dropdown-menu extended logout">
					<div class="log-arrow-up"></div>
					<li><a href="login">
							<i class="icon-key"></i> Log Out
						</a></li>
				</ul></li>
			<!-- user login dropdown end -->

		</ul>
	</div>
</header>
<!--header end-->