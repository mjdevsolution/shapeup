<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="mjeyakaran">
<meta name="keyword" content="shape up">

<!-- CSS -->
<link href="resources/css/style.css" rel="stylesheet">

<title>Shape Up</title>

<!-- CSS -->
<link href="resources/css/style.css" rel="stylesheet">
<body>

	<div id="header">
		<tiles:insertAttribute name="header" />
	</div>

	<div id="panelwrap">
		<tiles:insertAttribute name="body" />
	</div>

	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>

	<!--common script for all pages-->
	<!-- <script src="resources/js/common-scripts.js"></script> -->

</body>
</html>
