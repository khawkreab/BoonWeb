
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
<title>รายการของลงจำนำ</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
</head>
<body id="page-top">
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1 id="checkpost">รายการของลงจำนำ</h1>
			<em></em>
			<div class="backhome">
				<a href="index.html">หน้าหลัก</a>
				<i class="fas fa-angle-right"></i>
				<a href="pawnshop-index.html#loaded">รายการของลงจำนำ</a>
			</div>
		</div>
	</div>
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด <i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Gold')">
			ทองคำ <i class="fas fa-square-full"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Laptop')">
			แลปทอ็อป <i class="fas fa-laptop"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Tv')">
			โทรทัศน์ <i class="fas fa-tv"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Smartphone')">
			โทรศัพท์ <i class="fas fa-mobile-alt"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Watch')">
			นาฬิกา <i class="fas fa-clock"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Camera')">
			กล้องถ่ายรูป <i class="fas fa-camera-retro"></i>
		</button>
	</div>
	<div id="noitem">ไม่มีรายการ</div>
	<!--content-->
	<div class="container flex-wrap" id="sorting">
		<c:forEach items="${pawnerPosts}" var="post">
			<c:if test="${post.pawnerPostStatus != 'delete' }">
				<div class="shop-card filter-column ${post.pawnerPostItemType}"
					data-aos="fade-up">
					<div style="height: 200px;">
						<div class="date">
							<span class="day"> <fmt:formatDate pattern="dd"
									value="${post.pawnerPostDate }" />
							</span> <span class="month"> <fmt:formatDate pattern="MMM"
									value="${post.pawnerPostDate }" />
							</span> <span class="year"> <fmt:formatDate pattern="yyyy"
									value="${post.pawnerPostDate }" />
							</span>
						</div>
						<figure>
							<img src="img/uploadimg/pawnerPost/${post.pawnerPostPicture}" />
						</figure>
					</div>
					<div class="cta d-flex">
						<div class="price mr-auto p-2">
							<div class="title">${post.pawnerPostName}</div>
							<div class="desc">จังหวัด  ${post.pawnerId.pawnerProvince }</div>
						</div>
						<div class="p-2 ly"></div>
						<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
							<button class="btn">
								<i class="fas fa-sign-in-alt" style="font-size: 1.25rem;"></i>
							</button>
						</a>
					</div>
				</div>
			</c:if>
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
				$('#checkpost').text("ไม่มีรายการของลงจำนำ")
			}

		});
	</script>

</body>
</html>

<%-- 
	<!-- ----------------------------shop-card-list ---------------------------------------- -->
	<section id="pledge" class="shop-card-list section-full">
		
	</section>
	 --%>