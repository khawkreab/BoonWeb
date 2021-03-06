<!-- 
// page : pawnshop-track-pledge
// version : 3.2
// task : pawnshop approve
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>ประวัติการปล่อยของหลุดจำนำ</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/history.css">
<link rel="stylesheet" href="css/timeline.css">
<link rel="stylesheet" href="css/loadingPage.css">
<link rel="stylesheet" href="css/profileCard.css">
<link rel="stylesheet" href="css/sorting.css">
</head>
<body class="bg-glay">
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!-- loading page -->
	<div class="loadpage" id="loadpage">
		<div class='loading'>
			<span> <span></span> <span></span> <span></span> <span></span>
			</span>
			<div class='loading-base'>
				<span></span>
				<div class='loading-face'></div>
			</div>
		</div>
		<div class='loading-longfazers'>
			<span></span> <span></span> <span></span> <span></span>
		</div>
		<i class="loading-text">Loading . . .</i>
	</div>
	<!--banner-->
	<div class="banner-top">
		<div class="">
			<h1>ประวัติการปล่อยของหลุดจำนำ</h1>
			<em></em>
			<div class="backhome">
				<a href="index.html">หน้าหลัก</a>
				<i class="fas fa-angle-right" style="color: black;"></i>
				<a href="pawnshop-list-post.html#loaded">ประวัติการปล่อยของหลุดจำนำ</a>
			</div>
		</div>
	</div>
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด <i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('waiting')">
			สินค้ายังไม่ถูกซื้อ <i class="fas fa-hourglass-half"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('coming')">
			กำลังเดินทางมารับสินค้า <i class="fas fa-walking"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('complete')">
			สินค้าถูกขายแล้ว <i class="fas fa-check"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('delete')">
			ยกเลิกการปล่อยของหลุดจำนำ
			<i class="fas fa-trash-alt"></i>
		</button>
		
	</div>
	<!-- not have item -->
	<div id="noitem">ไม่มีรายการ</div>
	<section style="height: auto">
		<div class="timeline">
			<!----------- list ----------->
			<c:forEach items="${pawnshopPosts}" var="post">
				<div id="${post.pawnshopPostCode}" class="timeline-list filter-column ${post.pawnshopPostStatus}">
					<c:if test="${post.pawnshopPostStatus == 'waiting'}">
						<i class="fas fa-hourglass-half"></i>
					</c:if>
					<c:if test="${post.pawnshopPostStatus == 'coming'}">
						<i class="fas fa-walking"></i>
					</c:if>
					<c:if test="${post.pawnshopPostStatus == 'complete'}">
						<i class="fas fa-check"></i>
					</c:if>
					<c:if test="${post.pawnshopPostStatus == 'delete'}">
							<i class="fas fa-trash-alt"></i>
					</c:if>
					<div class="timeline-title">
						<div class="mr-auto">
							<span>เลขที่ #${post.pawnshopPostCode}</span> <i> ลงขายวันที่
								<fmt:formatDate pattern="dd MMM yyyy"
									value="${post.pawnshopPostDate}" />
							</i>
							<!----- for pawnshop ----->
							<div class="d-inline-flex">
								<c:forEach items="${order}" var="postw">
									<c:if
										test="${postw.pawnshopPostId.pawnshopPostId == post.pawnshopPostId}">
										<c:if
											test="${postw.pawnshopPostId.pawnshopPostStatus == 'coming'}">
											<!------ from ------>
											<p>ถูกซื้อโดย : คุณ ${postw.pawnerId.pawnerFirstname}
												${postw.pawnerId.pawnerLastname} จาก
												${postw.pawnerId.pawnerProvince}</p>
										</c:if>
										<c:if
											test="${postw.pawnshopPostId.pawnshopPostStatus == 'complete'}">
											<!------ from ------>
											<p>ถูกซื้อโดย : คุณ ${postw.pawnerId.pawnerFirstname}
												${postw.pawnerId.pawnerLastname} จาก
												${postw.pawnerId.pawnerProvince}</p>
										</c:if>
									</c:if>
								</c:forEach>
							</div>
						</div>
						<div class="p-2">
							<c:if test="${post.pawnshopPostStatus == 'waiting'}">
								<form action="pawnshopPost-delete.html" method="post">
									<input type="hidden" name="pawnshopPostId" value="${post.pawnshopPostId}">
									<button class="btn-custom btn-custom-defalt small" type="submit">ยกเลิกการปล่อยของหลุดจำนำ</button>
								</form>
							</c:if>
							<c:if test="${post.pawnshopPostStatus == 'delete'}">
								<i style="color: #ff3300; font-weight: bold">ยกเลิกการปล่อยของหลุดจำนำ</i>
							</c:if>
							<c:if test="${post.pawnshopPostStatus == 'complete'}">
								<i style="color: #ff3300; font-weight: bold">สินค้าถูกขายแล้ว</i>
							</c:if>
							<i style="color: #ff3300; font-weight: bold"> ขายในราคา
								${post.pawnshopPostPrice} บาท </i>
							<c:forEach items="${order}" var="postw">
								<c:if
									test="${postw.pawnshopPostId.pawnshopPostId == post.pawnshopPostId}">
									<c:if
										test="${postw.orderStatus == 'coming'}">
										<div class="d-inline-flex">
											<form action="pawnshop-complete-post.html" method="post">
												<input type="hidden" name="pawnshopPostId"
													value="${postw.pawnshopPostId.pawnshopPostId}"> <input
													type="hidden" name="status" value="complete">
													<input
													type="hidden" name="code" value="${post.pawnshopPostCode}">
												<button class="btn-custom btn-custom-defalt"
													style="margin-right: 10px" type="submit">ขายแล้ว</button>
											</form>
											<form action="pawnshop-complete-post.html" method="post">
												<input type="hidden" name="pawnshopPostId"
													value="${postw.pawnshopPostId.pawnshopPostId}"> <input
													type="hidden" name="status" value="waiting">
													<input
													type="hidden" name="code" value="${post.pawnshopPostCode}">
												<button class="btn-custom btn-custom-sky" type="submit">ไม่มีคนมารับของ</button>
											</form>
										</div>
									</c:if>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<line-x></line-x>
					<!-- item -->
					<div class="timeline-detail">
						<!----- image ------>
						<div class="timeline-img">
							<img
								src="img/uploadimg/pawnshopPost/${post.pawnshopPostPicture }" />
						</div>
						<!----- detail ------>
						<div>
							<span>${post.pawnshopPostName}</span>
							<ul>
								<!-- Watch,Electronic -->
								<c:if test="${post.pawnshopPostModel != null}">
									<li>รุ่น : ${post.pawnshopPostModel}</li>
									<li>หมายเลขประจำเครื่อง : ${post.pawnshopPostSerial}</li>
									<li>ปีที่ซื้อสินค้า : <fmt:formatDate
											pattern="d MMMM yyyy" value="${post.pawnshopPostPurchase}" /></li>
								</c:if>
								<c:if test="${post.pawnshopPostTypeCamera != null}">
									<li>ชนิดของกล้อง : ${post.pawnshopPostTypeCamera}</li>
									<li>ชนิดของเลนกล้อง : ${post.pawnshopPostCameraLen}</li>
								</c:if>
								<!-- Gold -->
								<c:if test="${post.pawnshopPostPure != null}">
									<li>ยี่ห้อ : ${post.pawnshopPostBrand}</li>
									<li>ความบริสุทธ์ : ${post.pawnshopPostPure}</li>
									<li>น้ำหนัก : ${post.pawnshopPostWeigh}</li>
									<li>รูปแบบของทองคำ : ${post.pawnshopPostCategory}</li>
								</c:if>
								<!-- Electronic tv com telephone -->
								<c:if test="${post.pawnshopPostSize != null}">
									<li>ขนาดหน้าจอ : ${post.pawnshopPostSize}</li>
								</c:if>
								<!-- Electronic camera com telephone -->
								<c:if test="${post.pawnshopPostBattery != null}">
									<li><span class="fas fa-check" aria-hidden="true">
									</span> แบตเตอรี่</li>
								</c:if>
								<!-- Electronic com telephone -->
								<c:if test="${post.pawnshopPostHarddisk != null}">
									<li>ฮาร์ดดิส : ${post.pawnshopPostHarddisk}</li>
								</c:if>
								<!-- Electronic com-->
								<c:if test="${post.pawnshopPostRam != null}">
									<li>แรม : ${post.pawnshopPostRam}</li>
								</c:if>
								<!-- Watch -->
								<c:if test="${post.pawnshopPostCase != null}">
									<li>ชนิดของหน้าปัด : ${post.pawnshopPostCase}</li>
									<li>ชนิดของสายรัดข้อมือ : ${post.pawnshopPostBracelet}</li>
									<c:if test="${post.pawnshopPostDiamond != null}">
										<li>เพรช : ${post.pawnshopPostDiamond}</li>
									</c:if>
									<c:if test="${post.pawnshopPostPackage != null}">
										<li><span class="fas fa-check" aria-hidden="true">
										</span> กล้องบรรจุภัฑณ์</li>
									</c:if>
								</c:if>
								<!-- Electronic tv -->
								<c:if test="${post.pawnshopPostRemote != null}">
									<li><span class="fas fa-check" aria-hidden="true">
									</span> รีโมท</li>
								</c:if>
								<!-- Watch,Electronic -->
								<c:if test="${post.pawnshopPostWarranty != null}">
									<li><span class="fas fa-check" aria-hidden="true">
									</span>การประกันสินค้า</li>
								</c:if>
								<c:if
									test="${post.pawnshopPostDescription != null && post.pawnshopPostDescription != ''}">
									<i class="quick small">เพิ่มเติม
										${post.pawnshopPostDescription} </i>
								</c:if>
							</ul>
						</div>
						<!----- end detail ------>
					</div>
					<!----- end item ------>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- sorting -->
	<script src="js/sorting.js"></script>
	<script src="js/profileCard.js"></script>
	<!-- cd-timeline -->
	<script type="text/javascript">
		<script type="text/javascript">
		window.onload = function() {
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