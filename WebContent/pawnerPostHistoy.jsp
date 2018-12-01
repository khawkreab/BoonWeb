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
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<!-- loading page -->
	<div class="loadpage" id="loadpage">
		<div class='loading'>
			<span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</span>
			<div class='loading-base'>
				<span></span>
				<div class='loading-face'></div>
			</div>
		</div>
		<div class='loading-longfazers'>
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
		<i class="loading-text">Loading . . .</i>
	</div>
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
		<div id="content">
			<div class="timeline">
				<div class="event" id="noOrder">
					<h3>ไม่มีรายการ</h3>
				</div>
				<c:forEach items="${estimatesListComplete}" var="post">
					<input type="hidden" value="hide" id="hide" />
					<div class="event filter-column ${post.pawnerPostId.pawnerPostItemType}" data-date="<fmt:formatDate pattern="dd MMM yyyy"
								value="${post.estimateAccessDate }"/>">
						<i class="fas fa-check bg-success"></i>
						<div class="d-flex">
							<div class="mr-auto">
								<h3>${post.pawnerPostId.pawnerPostName}</h3>
								<p>
									<strong>รายละเอียด</strong>
								</p>
								<div class="price_single">
									<div class="preview">
										<ul class="row">
											<!-- Watch,Electronic -->
											<c:if test="${post.pawnerPostId.pawnerPostModel != null}">
												<li class="col-md-6">
													<p>รุ่น : ${post.pawnerPostId.pawnerPostModel}</p>
												</li>
												<li class="col-md-6">
													<p>หมายเลขประจำเครื่อง : ${post.pawnerPostId.pawnerPostSerial}</p>
												</li>
												<li class="col-md-6">
													<p>ปีที่ซื้อสินค้า : ${post.pawnerPostId.pawnerPostPurchase}</p>
												</li>
											</c:if>
											<c:if test="${post.pawnerPostId.pawnerPostProduction != null}">
												<li class="col-md-6">
													<p>ปีที่ผลิตสินค้า : ${post.pawnerPostId.pawnerPostProduction}</p>
												</li>
											</c:if>
											<!-- Gold -->
											<c:if test="${post.pawnerPostId.pawnerPostPure != null}">
												<li class="col-md-6">
													<p>ยี่ห้อ : ${post.pawnerPostId.pawnerPostBrand}</p>
												</li>
												<li class="col-md-6">
													<p>ความบริสุทธ์ : ${post.pawnerPostId.pawnerPostPure}</p>
												</li>
												<li class="col-md-6">
													<p>น้ำหนัก : ${post.pawnerPostId.pawnerPostWeigh}</p>
												</li>
												<li class="col-md-6">
													<p>ชนิดหรือรูปแบบของทองคำ : ${post.pawnerPostId.pawnerPostCategory}</p>
												</li>
											</c:if>
											<!-- Electronic tv com telephone -->
											<c:if test="${post.pawnerPostId.pawnerPostSize != null}">
												<li class="col-md-6">
													<p>ขนาดหน้าจอ : ${post.pawnerPostId.pawnerPostSize}</p>
												</li>
											</c:if>
											<!-- Electronic camera com telephone -->
											<c:if test="${post.pawnerPostId.pawnerPostBattery != null}">
												<li class="col-md-6">
													<span class="fas fa-check" aria-hidden="true"> </span>
													Battery
												</li>
											</c:if>
											<!-- Electronic com telephone -->
											<c:if test="${post.pawnerPostId.pawnerPostHarddisk != null}">
												<li class="col-md-6">
													<p>Harddisk : ${post.pawnerPostId.pawnerPostHarddisk}</p>
												</li>
											</c:if>
											<!-- Electronic com-->
											<c:if test="${post.pawnerPostId.pawnerPostRam != null}">
												<li class="col-md-6">
													<p>Ram : ${post.pawnerPostId.pawnerPostRam}</p>
												</li>
											</c:if>
											<!-- Watch -->
											<c:if test="${post.pawnerPostId.pawnerPostCase != null}">
												<li class="col-md-6">
													<p>ชนิดของหน้าปัด : ${post.pawnerPostId.pawnerPostCase}</p>
												</li>
												<li class="col-md-6">
													<p>ชนิดของสายรัดข้อมือ : ${post.pawnerPostId.pawnerPostBracelet}</p>
												</li>
												<c:if test="${post.pawnerPostId.pawnerPostDiamond != null}">
													<li class="col-md-6">
														<p>เพรช : ${post.pawnerPostId.pawnerPostDiamond}</p>
													</li>
												</c:if>
												<c:if test="${post.pawnerPostId.pawnerPostPackage != null}">
													<li class="col-md-6">
														<span class="fas fa-check" aria-hidden="true"> </span>
														กล้องบรรจุสินค้า
													</li>
												</c:if>
											</c:if>
											<!-- Electronic tv -->
											<c:if test="${post.pawnerPostId.panwePostRemote != null}">
												<li class="col-md-6">
													<span class="fas fa-check" aria-hidden="true"> </span>
													Remote
												</li>
											</c:if>
											<!-- Watch,Electronic -->
											<c:if test="${post.pawnerPostId.pawnerPostWarranty != null}">
												<li class="col-md-6">
													<span class="fas fa-check" aria-hidden="true"> </span>
													การประกันสินค้า
												</li>
											</c:if>
											<li class="col-md-6">
												<p>${post.pawnerPostId.pawnerPostDescription}</p>
											</li>
										</ul>
										<!------ from pawner  ------>
										<div class="col-md-5 d-inline-flex">
											จำนำที่ :
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
										<!----- for pawnshop ----->
										<div class="">
											<p>
												ราคาที่ได้รับ:
												<span style="color: #ff3300; font-weight: bold"> ${post.estimatePriceMin} - ${post.estimatePriceMax} บาท </span>
											</p>
										</div>
									</div>
								</div>
							</div>
							<!----- image ------>
							<div class="p-2">
								<img src="img/uploadImge/${post.pawnerPostId.pawnerPostPicture }" style="height: auto; width: 300px" />
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
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

	    var x = document.getElementById("hide").value;
	    var order = document.getElementById("noOrder");
	    if (x == 'hide')
		order.style.display = "none";

	}
    </script>
</body>
</html>