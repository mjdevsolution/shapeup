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

<body class="bg-black">

	<div class="form-box" id="login-box">
		<div class="header">Sign In</div>
		<form action="<c:url value='j_spring_security_check'/>" method="POST">
			<div class="body bg-gray">
				<div class="form-group">
					<input type="text" name=j_username class="form-control" placeholder="User ID" />
				</div>
				<div class="form-group">
					<input type="password" name="j_password" class="form-control" placeholder="Password" />
				</div>
				<div class="form-group">
					<input type="checkbox" name="remember_me" />
					Remember me
				</div>
			</div>
			<div class="footer">
				<button type="submit" class="btn bg-olive btn-block">Sign me in</button>

				<p>
					<a href="#">I forgot my password</a>
				</p>

				<a href="register.html" class="text-center">Register a new membership</a>
			</div>
		</form>

		<div class="margin text-center">
			<span>Sign in using social networks</span> <br />
			<button class="btn bg-light-blue btn-circle">
				<i class="fa fa-facebook"></i>
			</button>
			<button class="btn bg-aqua btn-circle">
				<i class="fa fa-twitter"></i>
			</button>
			<button class="btn bg-red btn-circle">
				<i class="fa fa-google-plus"></i>
			</button>

		</div>
	</div>


	<!-- jQuery 2.0.2 -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>