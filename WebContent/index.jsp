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
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>Boonyong</title>

<!-- import all css -->
<jsp:include page="importCSS.jsp" />


<!-- time line step css -->
<link rel="stylesheet" href="css/timelineStep.css">
<style type="text/css">
body {
	width: 100%;
	overflow-x: hidden;
	background-color: #222;
}
</style>
<link href="css/pawnerCard.css" rel="stylesheet">

</head>

<body id="page-top">


	<%
		if (session.getAttribute("isLogin") == "yes") {
	%>
	<!-- ----------------------------login---------------------------------------- -->
	<%
		if (session.getAttribute("userType") == "pawner") {
	%>
	<!-- ----------------------------pawner login---------------------------------------- -->
	<section class="masthead text-center text-white d-flex header">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h2 class="text-uppercase">
						<strong class="text-white">ยินดีต้อนรับ <br>คุณ <%=session.getAttribute("username")%>
							<br>สู่เว็บจำนำออนไลน์
						</strong>
					</h2>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5 animated lightSpeedIn delay-1s">“บุญยง
						เป็นสื่อกลางในการจำนำ
						ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<a href="#plage">
						<button class="btn-custom btn-custom-defalt">
							วิธีการจำนำของ</button>
					</a>
				</div>
			</div>
		</div>
	</section>

	<section id="plage">
		<ul id="timelinecountstep">
			<li class="timeline-step">
				<p>step 1</p>
			</li>
			<li class="timeline-step">
				<p>step 2</p>
			</li>
			<li class="timeline-step">
				<p>step 3</p>
			</li>
		</ul>
	</section>
	<section id="plage">
		<ul id="timelinecountstep2">
			<li class="timeline-step">
				<p>step 1</p>
			</li>
			<li class="timeline-step">
				<p>step 2</p>
			</li>
			<li class="timeline-step">
				<p>step 3</p>
			</li>
		</ul>
	</section>


	<%
		} else if (session.getAttribute("userType") == "pawnShop") {
	%>
	<!-- ----------------------------pawn-shop login---------------------------------------- -->
	<!--banner-->
	<section class="masthead text-center text-white d-flex header">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h2 class="text-uppercase">
						<strong class="text-white">ยินดีต้อนรับ <br>โรงรับจำนำ
							<%=session.getAttribute("username")%> <br>สู่เว็บจำนำออนไลน์
						</strong>
					</h2>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5 animated lightSpeedIn delay-1s">“บุญยง
						เป็นสื่อกลางในการจำนำ
						ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<a href="#pledge">
						<button class="btn-custom btn-custom-defalt">
							ประเมินของจำนำ</button>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- ----------------------------shop-card-list ---------------------------------------- -->
	<section id="pledge" class="shop-card-list">
		<c:forEach items="${pawnerPosts}" var="post">
			<div class="shop-card" data-aos="fade-up">
				<div style="height: 200px;">
					<div class="date">
						<span class="day">12</span> <span class="month">Aug</span> <span
							class="year">2016</span>
					</div>
					<div class="title-bar">
						<div class="title">${post.pawnerPostName}</div>
						<div class="desc">${post.pawnerId.pawnerProvince }</div>
					</div>
					<figure>
						<img src="img/uploadImge/${post.pawnerPostPicture}" />
					</figure>
				</div>
				<div class="cta d-flex">
					<div class="price mr-auto p-2">ประเมินราคา</div>
					<div class="p-2 ly"></div>
					<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}"><button
							class="btn">
							<i class="fas fa-sign-in-alt" style="font-size: 1.25rem;"></i>
						</button></a>
				</div>
			</div>
			<%-- 	<div class="result">
				<div class="row">
					<div class="col-md-4 float-left result-img">
						<img src="images/imageUpload/${post.pawnerPostPicture }"
							class="img-responsive" alt="">
					</div>
					<div class="col-md-8">
						<h2 class="featured">
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
								${post.pawnerPostName} - ${post.pawnerPostBrand} </a>
						</h2>
						<div class="info-r">
							ต้องการจำนำ <span class="color-orange">${post.pawnerPostName}</span>
							โพสเมื่อ วันที่<span class="color-black"><fmt:setLocale
									value="en_US" /> <fmt:formatDate type="date" dateStyle="long"
									value="${post.pawnerPostDate }" /></span> โดย <span
								class="color-orange">${post.pawnerId.pawnerFirstname }
								${post.pawnerId.pawnerLastname }</span> จากจังหวัด Province <span
								class="color-black"> ${post.pawnerId.pawnerProvince }</span>
						</div>
						<div>
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ประเมินเลย
							</a>
						</div>
					</div>
				</div>
			</div> --%>
		</c:forEach>
	</section>
	<script>
		$(document).ready(function() {
			var featured = $('.featured').length;

			console.log("featured => " + featured)
			if (featured == 0) {
				$('#checkpost').text("ไม่มีรายการของจำนำ")
			}
		});
	</script>
	<!-- ------------------------------not login-------------------------------------- -->
	<%
		}
		} else {
	%>

	<!--banner-->
	<!-- element -->
	<section class="d-flex header">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<div class="animated lightSpeedIn">
						<img src="img/logos/logofull.png" height="150px">
					</div>
					<h1 class="text-uppercase animated fadeInLeft">
						<strong class="text-white ">จำนำง่าย จ่ายคล่อง ต้องบุญยง</strong>
					</h1>
					<div class="text-uppercase animated bounceInLeft delay-1s">
						<hr>
					</div>
				</div>
				<div class="col-lg-8 mx-auto">
					<p
						class="text-faded mb-5 animated lightSpeedIn delay-1s text-white">“บุญยง
						เป็นสื่อกลางในการจำนำ
						ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<div class="animated fadeInLeft delay-1s">
						<a href="#services"><button
								class="btn-custom btn-custom-defalt">
								คลิกเพื่อดูรายละเอียด</button></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
		}
	%>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
	<script type="text/javascript" src="js/aos.js"></script>
	<script>
		AOS.init();
	</script>

	<!-- footer  -->
	<%-- <jsp:include page="footer.jsp"></jsp:include> --%>

</body>
</html>