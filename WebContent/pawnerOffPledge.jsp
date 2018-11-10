<!-- 
// page : pawner-out-off-pledge
// version : 1.0
// task : new
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<link href="css/pawnerCard.css" rel="stylesheet">
<title>รายการของหลุดจำนำ</title>
<%-- <script type="text/javascript">
	var checkLogin = <%= session.getAttribute("isLogin") %>;
	if(checkLogin !== null){
		sessionStorage.setItem("login", "yes");
	}
	</script>

<script src="js/checkLogin.js"></script> --%>
</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner-top">
		<div>
			<h1 id="checkpost">รายการของหลุดจำนำ</h1>
			<em></em>
		</div>
	</div>
	<!--content-->
	<div class="container flex-wrap">
		<c:forEach items="${pawnshopPosts}" var="pawnshopPosts">
			<div class="shop-card">
				<div style="height: 200px;">
					<div class="date">
						<span class="day">12</span> <span class="month">Aug</span> <span
							class="year">2016</span>
					</div>
					<div class="title-bar">
						<div class="title">${pawnshopPosts.pawnshopPostName}</div>
						<div class="desc">${pawnshopPosts.pawnshopId.pawnshopProvince}</div>
					</div>
					<figure>
						<%-- <img src="images/imageUpload/${pawnshopPosts.pawnshopPostPicture}" /> --%>
						<img src="img/icon/camera.png" />
					</figure>
				</div>
				<div class="cta d-flex">
					<div class="price mr-auto p-2">${pawnshopPosts.pawnshopPostPrice}฿</div>
					<div class="p-2 ly"></div>
					<button class="btn">
						<i class="fas fa-cart-arrow-down" style="font-size: 1.25rem;"></i>
					</button>
				</div>
			</div>
			<div class="card">

				<img class="card-img-top"
					src="images/imageUpload/${pawnshopPosts.pawnshopPostPicture}"
					alt="Card image cap"> <a
					href="post-item-detail.html?item=${pawnshopPosts.pawnshopPostId}">
					<span class="zoom-icon "> <i class="fas fa-search icon "></i>
				</span>
				</a>
				<div class="card-body">
					<form:form method="post" id="form">
						<span class="card-body-title"><a
							href="post-item-detail.html?item=${pawnshopPosts.pawnshopPostId}">
								${pawnshopPosts.pawnshopPostName}
								${pawnshopPosts.pawnshopPostBrand}</a></span>
						<span class="card-body-location"><i
							class="fas fa-map-marker-alt"></i>
							${pawnshopPosts.pawnshopId.pawnshopProvince }</span>
						<span class="card-body-price">${pawnshopPosts.pawnshopPostPrice}
							บาท</span>
					</form:form>
				</div>
			</div>

		</c:forEach>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>



	<script>
		$(document).ready(function() {
			var card = $('.card').length;

			console.log("card => " + card)
			if (card == 0) {
				$('#checkpost').text("ไม่มีรายการของหลุดจำนำ")
			}

		});
	</script>
</body>
</html>