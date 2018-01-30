<!-- 
// page : index
// version : 2.0
// task : team dev
// edit by : khawkreab
 -->
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

<title>Boonyong</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Custom styles for this template -->
<!-- <link href="css/custom-style.min.css" rel="stylesheet"> -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">



<script>
	$(document).ready(function() {
		//Set the carousel options
		$('#quote-carousel').carousel({
			pause : true,
			interval : 4000,
		});
	});
</script>


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
							<h3>Pledge online</h3>
							<p>Updated every day</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="img/header-gold.jpg"
							alt="Second slide">
						<div class="carousel-caption d-none d-md-block">
							<h3>How to pledge</h3>
							<p>Easy Convenient Fast</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="img/header-bank.jpg"
							alt="Third slide">
						<div class="carousel-caption d-none d-md-block">
							<h3>BoonYong</h3>
							<p>Support your dream</p>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="fa fa-chevron-left" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="fa fa-chevron-right" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</header>

	<!-- Services -->




	<div class="container">
		<div class="box">
			<div class="box-sup">
				<div class="box-semi text-center">
					<h1>The 5 Step</h1>
					<h6>---- easy to pawn ----</h6>
					<br>
				</div>
				<div class="box-semi">
					<span class="time-line"></span>
					<ul>
						<li><span class="cycle">1</span> Enter item information</li>
						<li><span class="cycle">2</span> Upload picture and post item</li>
						<li><span class="cycle">3</span> Get offers from pawner shop</li>
						<li><span class="cycle">4</span> Walk in pawn shop</li>
						<li><span class="cycle">5</span> Deal rice again with pawn
							shop</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<!--  -->
	<div class="container">
		<div class="dev-title">
			<h1>Welcome to Team deverlop</h1>
			<h7>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</h7>
		</div>
	</div>
	<div class="container">
		<div class="dev">
			<div id="teamdev" class="carousel slide" data-ride="carousel"
				data-interval="5000">
				<ol class="carousel-indicators">
					<li data-target="#teamdev" data-slide-to="0" class="active"></li>
					<li data-target="#teamdev" data-slide-to="1"></li>
					<li data-target="#teamdev" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner margin-lr-20">
					<div class="carousel-item active">
						<div class="inline-block">
							<span class="dev-img-circle"> <img src="img/profile.jpg">
							</span> <span class="dev-detail">12345679879647964</span>
						</div>
					</div>
					<div class="carousel-item">
						<div class="inline-block">
							<span class="dev-img-circle"> <img class="dev-img-circle"
								src="img/profile(Dream).jpg">
							</span> <span class="dev-detail">794464113</span>
						</div>
					</div>
					<div class="carousel-item">
						<div class="inline-block">
							<span class="dev-img-circle"> <img class="dev-img-circle"
								src="img/profile(Ter).jpg">
							</span> <span class="dev-detail">232569821</span>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#teamdev" role="button"
					data-slide="prev"> <span class="fa fa-chevron-left"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#teamdev" role="button"
					data-slide="next"> <span class="fa fa-chevron-right"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>