<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<html class="bg-black">

<head>

<meta charset="UTF-8">

<title>AdminLTE | Log in</title>

<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

<!-- bootstrap 3.0.2 -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />

</head>

<div class="wrapper row-offcanvas row-offcanvas-left">
	<!-- Right side column. Contains the navbar and content of the page -->
	<aside class="right-side">

		<!-- Main content -->
		<section class="content">

			<div class="error-page">
				<h2 class="headline text-info">401</h2>
				<div class="error-content">
					<h3>
						<i class="fa fa-warning text-yellow"></i> Unauthorized Access !!
					</h3>
					<p>
						<c:if test="${not empty error}">
							<div style="color: red">
								Your fake login attempt was bursted, dare again !!<br /> Caused :
								${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
							</div>
						</c:if>

						<a href="login">Login</a>
					</p>

				</div>
				<!-- /.error-content -->
			</div>
			<!-- /.error-page -->

		</section>
		<!-- /.content -->
	</aside>
	<!-- /.right-side -->
</div>
<!-- ./wrapper -->

<!-- jQuery 2.0.2 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>
