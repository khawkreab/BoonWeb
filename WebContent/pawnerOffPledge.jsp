
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
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/pawnerCard.css" rel="stylesheet">
<link rel="stylesheet" href="css/sorting.css">
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
	
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด <i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Gold')">
			ทองคำ</button>
		<button class="filter-btn" onclick="filterSelection('Laptop')">
			แลปทอ็อป<i class="fas fa-laptop"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Tv')">
			โทรทัศน์ <i class="fas fa-tv-retro"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Smartphone')">
			โทรศัพท์ <i class="fas fa-mobile-alt"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Watch')">
			นาฬิกา<i class="fas fa-watch"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Camera')">
			กล้องถ่ายรูป <i class="fas fa-camera-retro"></i>
		</button>
	</div>
	<div id="noitem">ไม่มีรายการ</div>
	<!--content-->
	<div class="container flex-wrap" id="sorting">
		<c:forEach items="${pawnshopPosts}" var="pawnshopPosts">
			<div
				class="shop-card fas filter-column ${pawnshopPosts.pawnshopPostItemType}">
				<div style="height: 200px;">
					<div class="date">
						<span class="day"> <fmt:formatDate pattern="dd"
								value="${pawnshopPosts.pawnshopPostDate }" />
						</span> <span class="month"> <fmt:formatDate pattern="MMM"
								value="${pawnshopPosts.pawnshopPostDate }" />
						</span> <span class="year"> <fmt:formatDate pattern="yyyy"
								value="${pawnshopPosts.pawnshopPostDate }" />
						</span>
					</div>
					<figure>
						<a class="shop-card-a fas"
							href="post-item-detail.html?item=${pawnshopPosts.pawnshopPostId}"></a>
						<img src="img/uploadImge/${pawnshopPosts.pawnshopPostPicture}" />
					</figure>
				</div>
				<div class="cta d-flex">
					<div class="mr-auto">
						<div>
							<div class="title">${pawnshopPosts.pawnshopPostName}</div>
							<div class="desc" style="text-align: -webkit-left;">${pawnshopPosts.pawnshopId.pawnshopProvince}</div>
						</div>
					</div>
					<div class=" ly" style="padding: 0 10px;">
						<p class="price" style="margin-bottom: 0;">${pawnshopPosts.pawnshopPostPrice}</p>
						<p style="margin-bottom: 0;">บาท</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- sorting -->
	<script src="js/sorting.js"></script>
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
