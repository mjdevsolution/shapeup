<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!--header start-->

<div class="title">

	<a href="#">Shape Up</a>

</div>

<div id="menus" class="left">

	<a href="#">Home</a>
	<a href="#">About Me</a>
	<a href="#">Contact Us</a>

</div>

<div class="login right">

	<form action="<c:url value='j_spring_security_check'/>" method="POST">

		<input type="text" name='j_username' placeholder="User ID" autofocus>
		<input type="password" name='j_password' placeholder="Password">

		<button class="btn btn-lg btn-login btn-block" type="submit">Sign in</button>

	</form>

</div>

<div class="clear"></div>

<!--header end-->