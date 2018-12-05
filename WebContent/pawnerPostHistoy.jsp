<!-- 
// page : pawner-post-history
// version : 3.1
// task : pawner approve
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawner-post-history</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/history.css">
<link rel="stylesheet" href="css/loadingPage.css">
<link rel="stylesheet" href="css/profileCard.css">
<link rel="stylesheet" href="css/sorting.css">
<link rel="stylesheet" href="css/popupShowImage.css">
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
	<!-- loading page -->
	<jsp:include page="loadingpage.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1>การดำเนินการและประวัติการจำนำ</h1>
			<em></em>
		</div>
	</div>
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด
			<i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Gold')">ทองคำ</button>
		<button class="filter-btn" onclick="filterSelection('Laptop')">
			แลปทอ็อป
			<i class="fas fa-laptop"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Tv')">
			โทรทัศน์
			<i class="fas fa-tv-retro"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Smartphone')">
			โทรศัพท์
			<i class="fas fa-mobile-alt"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Watch')">
			นาฬิกา
			<i class="fas fa-watch"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Camera')">
			กล้องถ่ายรูป
			<i class="fas fa-camera-retro"></i>
		</button>
	</div>
	<div id="noitem">ไม่มีรายการ</div>
	<section id="sorting" style="height: auto">
		<div class="timeline">
			<c:forEach items="${estimatesListComplete}" var="post">
				<div class="timeline-list filter-column ${post.pawnerPostId.pawnerPostItemType}">
					<i class="fas fa-check"></i>
					<div class="timeline-title">
						<div class="mr-auto">
							<span>เลขที่การจำนำ #</span>
							<i>
								ลงจำนำวันที่
								<fmt:formatDate pattern="d MMM yyyy" value="${post.estimateAccessDate }" />
							</i>
							<!----- for pawnshop ----->
							<div class="d-inline-flex">
								จำนำที่ โรงรับจำนำ
								<div class="profile-card-head is-collapsed">
									<div class="card-inner js-expander">&nbsp;&nbsp; ${post.pawnshopId.pawnshopName}</div>
									<div class="profile-card">
										<div class="profile-card-circle">
											<img src="img/logos/logo.png">
										</div>
										<span>${post.pawnshopId.pawnshopName}</span>
										<span>${post.pawnshopId.pawnshopProvince}</span>
										<span>${post.pawnshopId.pawnshopTel}</span>
										<span class="closed">&times;</span>
									</div>
								</div>
							</div>
						</div>
						<div class="p-2">
							<i>
								จำนำวันที่
								<fmt:formatDate pattern="d MMM yyyy" value="${post.estimateAccessDate }" />
							</i>
							<i style="color: #ff3300; font-weight: bold"> เสนอราคาไว้ที่ ${post.estimatePriceMin} - ${post.estimatePriceMax} บาท </i>
						</div>
					</div>
					<line-x></line-x>
					<!-- item -->
					<div class="timeline-detail">
						<!----- image ------>
						<div class="timeline-img">
							<img src="img/uploadImge/${post.pawnerPostId.pawnerPostPicture }" />
						</div>
						<!----- detail ------>
						<div>
							<span>${post.pawnerPostId.pawnerPostName}</span>
							<ul>
								<!-- Watch,Electronic -->
								<c:if test="${post.pawnerPostId.pawnerPostModel != null}">
									<li>รุ่น : ${post.pawnerPostId.pawnerPostModel}</li>
									<li>หมายเลขประจำเครื่อง : ${post.pawnerPostId.pawnerPostSerial}</li>
									<li>ปีที่ซื้อสินค้า : ${post.pawnerPostId.pawnerPostPurchase}</li>
								</c:if>
								<c:if test="${post.pawnerPostId.pawnerPostProduction != null}">
									<li>ปีที่ผลิตสินค้า : ${post.pawnerPostId.pawnerPostProduction}</li>
								</c:if>
								<!-- Gold -->
								<c:if test="${post.pawnerPostId.pawnerPostPure != null}">
									<li>ยี่ห้อ : ${post.pawnerPostId.pawnerPostBrand}</li>
									<li>ความบริสุทธ์ : ${post.pawnerPostId.pawnerPostPure}</li>
									<li>น้ำหนัก : ${post.pawnerPostId.pawnerPostWeigh}</li>
									<li>ชนิดหรือรูปแบบของทองคำ : ${post.pawnerPostId.pawnerPostCategory}</li>
								</c:if>
								<!-- Electronic tv com telephone -->
								<c:if test="${post.pawnerPostId.pawnerPostSize != null}">
									<li>ขนาดหน้าจอ : ${post.pawnerPostId.pawnerPostSize}</li>
								</c:if>
								<!-- Electronic camera com telephone -->
								<c:if test="${post.pawnerPostId.pawnerPostBattery != null}">
									<li>
										<span class="fas fa-check" aria-hidden="true"> </span>
										Battery
									</li>
								</c:if>
								<!-- Electronic com telephone -->
								<c:if test="${post.pawnerPostId.pawnerPostHarddisk != null}">
									<li>Harddisk : ${post.pawnerPostId.pawnerPostHarddisk}</li>
								</c:if>
								<!-- Electronic com-->
								<c:if test="${post.pawnerPostId.pawnerPostRam != null}">
									<li>Ram : ${post.pawnerPostId.pawnerPostRam}</li>
								</c:if>
								<!-- Watch -->
								<c:if test="${post.pawnerPostId.pawnerPostCase != null}">
									<li>ชนิดของหน้าปัด : ${post.pawnerPostId.pawnerPostCase}</li>
									<li>ชนิดของสายรัดข้อมือ : ${post.pawnerPostId.pawnerPostBracelet}</li>
									<c:if test="${post.pawnerPostId.pawnerPostDiamond != null}">
										<li>เพรช : ${post.pawnerPostId.pawnerPostDiamond}</li>
									</c:if>
									<c:if test="${post.pawnerPostId.pawnerPostPackage != null}">
										<li>
											<span class="fas fa-check" aria-hidden="true"> </span>
											กล้องบรรจุสินค้า
										</li>
									</c:if>
								</c:if>
								<!-- Electronic tv -->
								<c:if test="${post.pawnerPostId.panwePostRemote != null}">
									<li>
										<span class="fas fa-check" aria-hidden="true"> </span>
										Remote
									</li>
								</c:if>
								<!-- Watch,Electronic -->
								<c:if test="${post.pawnerPostId.pawnerPostWarranty != null}">
									<li>
										<span class="fas fa-check" aria-hidden="true"> </span>
										การประกันสินค้า
									</li>
								</c:if>
								<li>${post.pawnerPostId.pawnerPostDescription}</li>
							</ul>
						</div>
						<!----- end detail ------>
					</div>
					<!----- end item ------>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- pop up show image -->
	<div class="show-image">
		<div class="overlay"></div>
		<i class="fas fa-times-circle close"></i>
		<div class="img-show">
			<img src="">
		</div>
	</div>
	<script src="js/popupShowImage.js"></script>
	"
	<!-- end  -->
	<!-- sorting -->
	<script src="js/sorting.js"></script>
	<!-- profile Card -->
	<script src="js/profileCard.js"></script>
	<!-- cd-timeline -->
	<script type="text/javascript">
	/* loading page */
	window.onload = function loading() {
	    if (window.location.hash) {
		document.body.style.overflowY = "auto";
		document.getElementById("loadpage").style.display = "none";
	    }
	    setTimeout(function() {
		if (!window.location.hash) {
		    window.location = window.location + '#loaded';
		    window.location.reload();
		}
	    }, 1000);
	}
    </script>
</body>
</html>