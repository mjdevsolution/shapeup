<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/customers" var="customersUrl" />

<header class="header">

	<a href="${customersUrl}" class="logo">
		<!-- Add the class icon to your logo image or logo icon to add the margining -->
		Shape Up
	</a>

	<nav class="navbar navbar-static-top" role="navigation">

		<!-- Sidebar toggle button-->
		<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</a>

		<div class="navbar-right">
			<ul class="nav navbar-nav">

				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="glyphicon glyphicon-user"></i> <span><sec:authentication property="principal.name" /><i
							class="caret"></i></span>
					</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header bg-light-blue"><img src="resources/img/avatar3.png" class="img-circle"
							alt="User Image" />
							<p>
								<sec:authentication property="principal.name" />
								- Web Developer <small>Member since Nov. 2014</small>
							</p></li>

						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-right">
								<a href="login" class="btn btn-default btn-flat">Sign out</a>
							</div>
						</li>

					</ul></li>
			</ul>
		</div>
	</nav>

</header>
