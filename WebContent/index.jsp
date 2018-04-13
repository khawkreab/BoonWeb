<!-- 
// page : index
// version : 1.0
// task : new
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Boonyong</title>

</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!--banner-->
<div class="">
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
					<img class="d-block img-fluid" src="img/bgIndex.jpg"
						alt="Second slide">
					<div class="carousel-caption d-none d-md-block">
						<h3></h3>
						<p></p>
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
				role="button" data-slide="prev">
				<h1>
					<i class="fas fa-arrow-alt-circle-left"
						aria-hidden="true"></i>
				</h1> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"><h1>
					<i class="fas fa-arrow-alt-circle-right"
						aria-hidden="true"></i>
				</h1> <span class="sr-only">Next</span> </a>
		</div>
</div>

	<!--content-->
	<%-- <div class="content">
		<div class="container">
			<!--products-->
			<div class="content-mid">
				<div class="mid-popular">
					<c:forEach items="${post}" var="post">
						<div class="col-md-3 item-grid simpleCart_shelfItem">
							<div class=" mid-pop">
								<div class="pro-img">
									<img src="images/pc4.jpg" class="img-responsive" alt="">
									<div class="zoom-icon ">
										<a class="picture" href="images/pc4.jpg" rel="title"
											class="b-link-stripe b-animate-go  thickbox"><i
											class="glyphicon glyphicon-search icon "></i></a>
									</div>
								</div>
								<div class="mid-1">
									<div class="women">
										<div class="women-top">
											<span>#</span>
											<h6>
												<a href="single.html">${pawnshopPosts.pawnshopPostName}
													- ${pawnshopPosts.pawnshopPostBrand}</a>
											</h6>
										</div>
										<div class="img item_add">
											<a href="#"><img src="images/ca.png" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="mid-2">
										<p>
											<em class="item_price">${pawnshopPosts.pawnshopId.pawnshopProvince }</em>
										</p>
										<div class="block">
											<div class="starbox small ghosting"></div>
										</div>

										<div class="clearfix"></div>
									</div>

								</div>
							</div>
						</div>
					</c:forEach>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--//products-->
		</div>
	</div> --%>
	<!-- ----------------------------------------------------------------------------------------------- -->
	<div class="container">
		<div class="dev-title">
			<h1>Welcome to Team Develop</h1>
			<h6>We are UBfor </h6>
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
							<span class="dev-img-circle"> <img src="img/team/profile(khawkreab).jpg">
							</span> <span class="dev-detail">I'm a developer </span>
						</div>
					</div>
					<div class="carousel-item">
						<div class="inline-block">
							<span class="dev-img-circle"> <img class="dev-img-circle"
								src="img/team/profile(Dream).jpg">
							</span> <span class="dev-detail">I'm a developer</span>
						</div>
					</div>
					<div class="carousel-item">
						<div class="inline-block">
							<span class="dev-img-circle"> <img class="dev-img-circle"
								src="img/team/profile(Ter).jpg">
							</span> <span class="dev-detail">I'm a developer</span>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#teamdev" role="button"
					data-slide="prev"> <i
					class="fas fa-chevron-square-left color-black" aria-hidden="true"></i>
					<span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#teamdev" role="button"
					data-slide="next"> <i
					class="fas fa-chevron-square-right color-black" aria-hidden="true"></i>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	
		<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>	
</body>
</html>