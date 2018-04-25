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
	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h1 class="text-uppercase">
						<strong class="text-white">จำนำง่าย จ่ายคล่อง ต้องบุญยง</strong>
					</h1>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5">“บุญยง เป็นสื่อกลางในการจำนำ
						ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<a class="btn btn-primary btn-xl js-scroll-trigger"
						href="#services">คลิกเพื่อดูรายละเอียด</a>
				</div>
			</div>
		</div>
	</header>

	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">บริการของเรา</h2>
					<hr class="my-4">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fas fa-4x fa-gem text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">สะดวก ในการ จำนำ และประเมินราคา</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fas fa-4x fa-newspaper text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">ทรัพย์หลุดจำนำ ราคาพิเศษ Update ทุกวัน</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fas fa-4x fa-heart text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">พร้อมเคียงข้างทุกปัญหาการเงิน</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fas fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">สานฝันธุรกิจของคุณ</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ----------------------------------------------------------------------------------------------- -->
	<!-- 	<div class="container">
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
 -->
	<jsp:include page="footer.jsp"></jsp:include>


	<script>
		$(document).ready(function() {
			// Add smooth scrolling to all links
			$("a").on('click', function(event) {

				// Make sure this.hash has a value before overriding default behavior
				if (this.hash !== "") {
					// Prevent default anchor click behavior
					event.preventDefault();

					// Store hash
					var hash = this.hash;

					// Using jQuery's animate() method to add smooth page scroll
					// The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
					$('html, body').animate({
						scrollTop : $(hash).offset().top
					}, 1000, function() {

						// Add hash (#) to URL when done scrolling (default click behavior)
						window.location.hash = hash;
					});
				} // End if
			});
		});
	</script>
</body>
</html>