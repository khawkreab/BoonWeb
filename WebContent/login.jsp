<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Login</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<style>
body {
	background-image: url(./img/header.jpg);
}
</style>

</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!-- Header -->
	<section id="#" style="text-align: center;">
		<div class="container">
			<div class="row-login col-5">
				<div class="main-login">
					<h5>Welcome</h5>
					<p></p>
					<%
						if (request.getAttribute("error") == "yes") {
					%>
					<p style="color: red">Login Failed. Please try again.</p>
					<%
						}
					%>
					<form:form method="POST" action="loginProcess.do"
						commandName="pawner">
						<div class="form-group">

							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-envelope fa" aria-hidden="true"></i>
									</span>
									<form:input class="form-control" placeholder="Email"
										path="email" autofocus="autofocus" required="required" />
									<form:errors path="email" />
								</div>
							</div>
						</div>


						<div class="form-group">

							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span>
									<form:password class="form-control" placeholder="password"
										path="password" required="required" />
									<form:errors path="password" />
								</div>
							</div>
						</div>




						<div class="cols-sm-12">
							<div class="input-group">
								<button class="btn-custom col-sm-3" type="submit">
									Login <i class="fa fa-chevron-right" aria-hidden="true"></i>
								</button>
								<span class="">
									<div class="btn-right-r50"></div>
								</span>

							</div>
						</div>
					</form:form>
				</div>

			</div>
		</div>
	</section>




	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/agency.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>