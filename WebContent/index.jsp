<!-- 
// page : index
// version : 1.1
// task : --
// edit by : 
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
	    pause: true,
	    interval: 4000,
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

	<section id="as">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-4">
					<div class="product">
						<div class="img-container">
							<img
								src="https://images.unsplash.com/photo-1491553895911-0055eca6402d?dpr=1&auto=compress,format&fit=crop&w=1400&h=&q=80&cs=tinysrgb&crop=">
						</div>
						<div class="product-info">
							<div class="product-content">
								<h6>Nike Airmax</h6>

							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="product">
						<div class="img-container">
							<img
								src="https://images.unsplash.com/photo-1491553895911-0055eca6402d?dpr=1&auto=compress,format&fit=crop&w=1400&h=&q=80&cs=tinysrgb&crop=">
						</div>
						<div class="product-info">
							<div class="product-content">
								<h6>Nike Airmax</h6>

							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="product">
						<div class="img-container">
							<img
								src="https://images.unsplash.com/photo-1491553895911-0055eca6402d?dpr=1&auto=compress,format&fit=crop&w=1400&h=&q=80&cs=tinysrgb&crop=">
						</div>
						<div class="product-info">
							<div class="product-content">
								<h6>Nike Airmax</h6>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>


	</section>

	
	<jsp:include page="teamdev.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>