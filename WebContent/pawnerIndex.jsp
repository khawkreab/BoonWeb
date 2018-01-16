<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>home page</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">

	<%
		if (session.getAttribute("isLogin") == "") {
			response.sendRedirect("index.jsp");
		}
	%>

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">

			<div class="box-left">จำนำของ</div>
			<div class="box-right">ซื้อของหลุดจำนำ</div>
			<div class="line-center"></div>
			<div class="box-center">OR</div>

			<!-- ----------------------------------------------------------------------------  -->
		</div>
	</section>

</body>
</html>