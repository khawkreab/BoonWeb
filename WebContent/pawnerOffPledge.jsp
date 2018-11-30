
<!-- 
// page : pawner-out-off-pledge
// version : 1.0
// task : new
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/pawnerCard.css" rel="stylesheet">
<title>รายการของหลุดจำนำ</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
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
			<div class="shop-card fas">
			<a class="ashop-card fas" href="#"></a>
				<div style="height: 200px;">
					<div class="date">
						<span class="day">
							<fmt:formatDate pattern="dd" value="${pawnshopPosts.pawnshopPostDate }" />
						</span>
						<span class="month">
							<fmt:formatDate pattern="MMM" value="${pawnshopPosts.pawnshopPostDate }" />
						</span>
						<span class="year">
							<fmt:formatDate pattern="yyyy" value="${pawnshopPosts.pawnshopPostDate }" />
						</span>
					</div>
					<div class="title-bar">
						<div class="title">${pawnshopPosts.pawnshopPostName}</div>
						<div class="desc">${pawnshopPosts.pawnshopId.pawnshopProvince}</div>
					</div>
					<figure>
						<img src="img/uploadImge/${pawnshopPosts.pawnshopPostPicture}" />
					</figure>
				</div>
				<div class="cta d-flex">
					<div class="price mr-auto p-2">${pawnshopPosts.pawnshopPostPrice}฿</div>
					<div class="p-2 ly"></div>
					<a href="post-item-detail.html?item=${pawnshopPosts.pawnshopPostId}">
						<button class="btn">
							<i class="fas fa-cart-arrow-down" style="font-size: 1.25rem;"></i>
						</button>
					</a>
				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		$(document).ready(function() {
			var card = $('.shop-card').length;

			console.log("card => " + card)
			if (card == 0) {
				$('#checkpost').text("ไม่มีรายการของหลุดจำนำ")
			}

		});
	</script>
</body>
</html>
