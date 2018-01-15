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

<title>Bounyong</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!-- Header -->
	<header class="masthead" id="#">
		<div class="container">
			<!--  -->
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel" data-interval="5000">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="d-block img-fluid" src="img/header-bg.jpg"
							alt="First slide">
						<div class="carousel-caption d-none d-md-block">
							<h3>..aaaa.</h3>
							<p>..bbbbb.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="img/header-bg.jpg"
							alt="Second slide">
						<div class="carousel-caption d-none d-md-block">
							<h3>.ccccc..</h3>
							<p>..dddd.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="img/header-bg.jpg"
							alt="Third slide">
						<div class="carousel-caption d-none d-md-block">
							<h3>.fffff..</h3>
							<p>..ggggggg.</p>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</header>

	<!-- Services -->
	

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>