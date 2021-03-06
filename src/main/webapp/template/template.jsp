<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Shape Up | Dashboard</title>

<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

<!-- bootstrap 3.0.2 -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="resources/css/datepicker/datepicker.css" rel="stylesheet" type="text/css" />
<!-- DATA TABLES -->
<link href="resources/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />

</head>

<body class="skin-blue">

	<tiles:insertAttribute name="header" />

	<div class="wrapper row-offcanvas row-offcanvas-left">
		<tiles:insertAttribute name="menu" />
		<tiles:insertAttribute name="body" />
	</div>

	<tiles:insertAttribute name="footer" />

	<!-- jQuery 2.0.2 -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

	<script src="resources/js/vendor/jquery.ui.widget.js"></script>
	<script src="resources/js/jquery.iframe-transport.js"></script>
	<script src="resources/js/jquery.fileupload.js"></script>

	<!-- Bootstrap -->
	<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="resources/js/AdminLTE/demo.js" type="text/javascript"></script>
	<script src="resources/js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>

</body>

</html>
