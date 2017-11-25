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
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">

<%if (session.getAttribute("isLogin") == "no") { 
response.sendRedirect("index.jsp");
}
%>

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">

			<!-- ----------------------------------------------------------------------------  -->
			<div class="card" style="width: 20rem;">
				<div class="card-img">
					<img class="card-img-top" src="img/header-bg.jpg"
						alt="Card image cap">
				</div>
				<div class="card-block">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Cras justo odio</li>
				</ul>
			</div>
			<!-- ----------------------------------------------------------------------------  -->

			<div class="card" style="width: 20rem;">
			<div class="card-img">
				<img class="card-img-top" src="img/portfolio/01-full.jpg"
					alt="Card image cap"></div>
				<div class="card-block">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Cras justo odio</li>
				</ul>
			</div>
			<!-- ----------------------------------------------------------------------------  -->
				<div class="card" style="width: 20rem;">
				<div class="card-img">
					<img class="card-img-top" src="img/header-bg.jpg"
						alt="Card image cap">
				</div>
				<div class="card-block">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Cras justo odio</li>
				</ul>
			</div>
			<!-- ----------------------------------------------------------------------------  -->

			<div class="card" style="width: 20rem;">
			<div class="card-img">
				<img class="card-img-top" src="img/portfolio/01-full.jpg"
					alt="Card image cap"></div>
				<div class="card-block">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">Cras justo odio</li>
				</ul>
			</div>
			<!-- ----------------------------------------------------------------------------  -->
		</div>
	</section>

</body>
</html>