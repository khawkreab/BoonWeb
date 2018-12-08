<!-- 
// page : pawnshop-estimate-list
// version : 1.0
// task : list Complete
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawner-track-pledge</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/history.css">
<link rel="stylesheet" href="css/timeline.css">
<link rel="stylesheet" href="css/loadingPage.css">
<link rel="stylesheet" href="css/profileCard.css">
<link rel="stylesheet" href="css/sorting.css">
</head>
<body class="bg-glay">
	<!-- Navigation -->
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
		<div class="">
			<h1>ประวัติการประเมิน</h1>
			<em></em>
		</div>
	</div>
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด <i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('complete')">
			สำเร็จ <i class="fas fa-check"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('approvedenei')">
			ถูกปฏิเสธ <i class="fas fa-times"></i> 
		</button>
	</div>
	<!-- not have item -->
	<div id="noitem">ไม่มีรายการ</div>
	<section style="height: auto;">
		<div class="timeline">
			<!----------- list ----------->
			<c:forEach items="${eList}" var="post">
				<c:if test="${post.estimateStatus != 'process' && post.estimateStatus != 'approve' && post.estimateStatus != 'denei'}">
					<div class="timeline-list filter-column ${post.estimateStatus}">
						<c:if test="${post.estimateStatus == 'approvedenei'}">
							<i class="fas fa-times"></i>
						</c:if>
						<c:if test="${post.estimateStatus == 'complete'}">
							<i class="fas fa-check"></i>
						</c:if>
						<div class="timeline-title">
							<div class="mr-auto">
								<span>เลขที่การจำนำ #</span>
								<i>
									ลงจำนำวันที่
									<fmt:formatDate pattern="dd MMM yyyy" value="${post.estimateAccessDate }" />
								</i>
								<!----- for pawnshop ----->
								<div class="d-inline-flex">
									จำนำที่ โรงรับจำนำ
									<div class="profile-card-head is-collapsed">
										<div class="card-inner js-expander">&nbsp;&nbsp; ${post.pawnerPostId.pawnerId.pawnerFirstname} ${post.pawnerPostId.pawnerId.pawnerLastname}</div>
										<div class="profile-card">
											<div class="profile-card-circle">
												<img src="img/logos/logo.png">
											</div>
											<span>${post.pawnerPostId.pawnerId.pawnerFirstname} ${post.pawnerPostId.pawnerId.pawnerLastname}</span>
											<span>${post.pawnerPostId.pawnerId.pawnerEmail}</span>
											<span>${post.pawnerPostId.pawnerId.pawnerProvince}</span>
											<span>Status:${post.estimateStatus}</span>
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
								<img src="img/uploadimg/pawnerPost/${post.pawnerPostId.pawnerPostPicture }" />
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
				</c:if>
			</c:forEach>
		</div>
	</section>
	<!-- sorting -->
	<script src="js/sorting.js"></script>
	
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