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

<style>
body {
	width: 100%;
	background-image: url("img/background/background.jpg");
	background-size: cover;
	overflow-x: hidden;
}
</style>
</head>

<body id="page-top">

	<!-- ----------------------------login---------------------------------------- -->
	<%
		if (session.getAttribute("isLogin") == "yes") {
	%>
	<!-- ----------------------------pawner login---------------------------------------- -->
	<%
		if (session.getAttribute("userType") == "pawner") {
	%>


	<header class="masthead text-center text-white d-flex" style="height: 678px;">
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
					<p class="text-faded mb-5">“บุญยง เป็นสื่อกลางในการจำนำ
						ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<a class="btn btn-primary btn-xl js-scroll-trigger" href="#plage">วิธีการจำนำของ</a>
				</div>
			</div>
		</div>
	</header>

	<section id="plage">
		<div class="container">
			<img alt="" src="img/Manual.jpg" width="100%">
		</div>
	</section>

	<!-- ----------------------------pawn-shop login---------------------------------------- -->
	<%
		} else if (session.getAttribute("userType") == "pawnShop") {
	%>

	<!--banner-->
	<div class="banner-top">
		<h1 id="checkpost">รายการของจำนำ</h1>
		<em></em>
	</div>


	<div class="result-group">



		<c:forEach items="${pawnerPosts}" var="post">

			<div class="result">
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
			</div>
		</c:forEach>
	</div>

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
	<header class="d-flex"
		style="width: 100%; height: 100%; text-align: center; align-items: center;">
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
						<a class="btn btn-primary btn-xl js-scroll-trigger"
							href="#services">คลิกเพื่อดูรายละเอียด</a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<%
		}
	%>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!-- footer  -->
	<%-- <jsp:include page="footer.jsp"></jsp:include> --%>

</body>
</html>