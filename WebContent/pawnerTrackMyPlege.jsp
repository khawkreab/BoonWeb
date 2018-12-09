<!-- 
// page : pawner-track-pledge
// version : 3.2
// task : pawner approve
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="th">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title></title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/timeline.css">
<link rel="stylesheet" href="css/loadingPage.css">
<link rel="stylesheet" href="css/profileCard.css">
<link rel="stylesheet" href="css/sorting.css">
</head>
<body style="background-color: #eee; overflow: hidden;">
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!-- loading page -->
	<jsp:include page="loadingpage.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1>สถานะการจำนำ</h1>
			<em></em>
		</div>
	</div>
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด
			<i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('waiting')">
			รอการประเมิน
			<i class="fas fa-hourglass-half"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('process')">
			รอการยืนยัน
			<i class="fas fa-handshake"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('approve')">
			ปริ้นใบจำนำ
			<i class="fas fa-print"></i>
		</button>
	</div>
	<!-- not have item -->
	<div id="noitem">ไม่มีรายการ</div>
	<!-- sort status all -->
	<section id="cd-timeline" id="sorting" class="cd-container">
		<c:forEach items="${pawnerPostsProcess}" var="postprocess">
			<c:if test="${postprocess.pawnerPostStatus == 'process' || postprocess.pawnerPostStatus == 'waiting' || postprocess.pawnerPostStatus == 'approve'}">
				<div class="cd-timeline-block filter-column ${postprocess.pawnerPostStatus}" id="item${postprocess.pawnerPostId}">
					<!-------- icon -------->
					<c:if test="${postprocess.pawnerPostStatus == 'waiting'}">
						<div class="cd-timeline-img cd-wait">
							<i class="fas fa-hourglass-half"></i>
						</div>
					</c:if>
					<c:if test="${postprocess.pawnerPostStatus == 'process'}">
						<div class="cd-timeline-img cd-process">
							<i class="fas fa-handshake"></i>
						</div>
					</c:if>
					<c:if test="${postprocess.pawnerPostStatus == 'approve'}">
						<div class="cd-timeline-img bg-info">
							<i class="fas fa-print"></i>
						</div>
					</c:if>
					<!--------- end icon --------->
					<div class="cd-timeline-content">
						<!-- date -->
						<span class="cd-date">
							<fmt:setLocale value="th-TH" />
							<fmt:formatDate pattern="dd MMM yyyy" value="${postprocess.pawnerPostDate }" />
						</span>
						<!-- item -->
						<div class="cd-timeline-detail">
							<div class="cd-timeline-detail-img">
								<img src="img/uploadimg/pawnerPost/${postprocess.pawnerPostPicture}">
							</div>
							<div>
								<h2>${postprocess.pawnerPostName }</h2>
								<ul>
									<!-- Watch,Electronic -->
									<c:if test="${postprocess.pawnerPostModel != null}">
										<li>รุ่น : ${postprocess.pawnerPostModel}</li>
										<li>หมายเลขประจำเครื่อง : ${postprocess.pawnerPostSerial}</li>
										<li>ปีที่ซื้อสินค้า : ${postprocess.pawnerPostPurchase }</li>
									</c:if>
									<c:if test="${postprocess.pawnerPostProduction != null}">
										<li>ปีที่ผลิตสินค้า : ${postprocess.pawnerPostProduction}</li>
									</c:if>
									<!-- Gold -->
									<c:if test="${postprocess.pawnerPostPure != null}">
										<li>ความบริสุทธ์ : ${postprocess.pawnerPostPure  }</li>
										<li>น้ำหนัก : ${postprocess.pawnerPostWeigh }</li>
										<li>ชนิดหรือรูปแบบของทองคำ : ${postprocess.pawnerPostCategory }</li>
									</c:if>
									<!-- Electronic tv com telephone -->
									<c:if test="${postprocess.pawnerPostSize != null}">
										<li>ขนาดหน้าจอ : ${postprocess.pawnerPostSize }</li>
									</c:if>
									<!-- Electronic camera com telephone -->
									<c:if test="${postprocess.pawnerPostBattery != null}">
										<li>
											<span class="fas fa-check" aria-hidden="true"> </span>
											Battery
										</li>
									</c:if>
									<!-- Electronic com telephone -->
									<c:if test="${postprocess.pawnerPostHarddisk != null}">
										<li>Harddisk : ${ postprocess.pawnerPostHarddisk }</li>
									</c:if>
									<!-- Electronic com-->
									<c:if test="${postprocess.pawnerPostRam != null}">
										<li>Ram : ${postprocess.pawnerPostRam }</li>
									</c:if>
									<!-- Watch -->
									<c:if test="${postprocess.pawnerPostCase != null}">
										<li>ชนิดของหน้าปัด : ${postprocess.pawnerPostCase }</li>
										<li>ชนิดของสายรัดข้อมือ : ${postprocess.pawnerPostBracelet }</li>
										<c:if test="${postprocess.pawnerPostDiamond != null}">
											<li>เพรช : ${postprocess.pawnerPostDiamond }</li>
										</c:if>
										<c:if test="${postprocess.pawnerPostPackage != null}">
											<li>
												<span class="fas fa-check" aria-hidden="true"> </span>
												กล้องบรรจุสินค้า
											</li>
										</c:if>
									</c:if>
									<!-- Electronic tv -->
									<c:if test="${postprocess.panwePostRemote != null}">
										<li>
											<span class="fas fa-check" aria-hidden="true"> </span>
											Remote
										</li>
									</c:if>
									<!-- Watch,Electronic -->
									<c:if test="${postprocess.pawnerPostModel != null}">
										<li>
											<span class="fas fa-check" aria-hidden="true"> </span>
											การประกันสินค้า
										</li>
									</c:if>
								</ul>
								<c:if test="${postprocess.pawnerPostDescription != null || postprocess.pawnerPostDescription != ''}">
									<i class="quick small">เพิ่มเติม</i>
									<span class="quick_desc">${postprocess.pawnerPostDescription }</span>
								</c:if>
							</div>
						</div>
						<!---------- process  ---------->
						<c:if test="${postprocess.pawnerPostStatus == 'process'}">
							<line-x></line-x>
							<div class="history-show-estimate">
								<div class="row d-flex">
									<div class="col-md-4">โรงรับจำนำที่มาเสนอราคา</div>
									<div class="ml-auto col-md-2">ราคาต่ำสุด</div>
									<div class="col-md-2">ราคาสูงสุด</div>
									<div class="col-md-2"></div>
								</div>
								<ul style="list-style: none;">
									<c:forEach items="${estimatesList}" var="estimate">
										<c:if test="${estimate.pawnerPostId.pawnerPostId == postprocess.pawnerPostId }">
											<li style="margin-bottom: 12px;">
												<div class="row d-flex">
													<div class="col-md-4">
														<div class="profile-card-head is-collapsed">
															<div class="card-inner js-expander">&nbsp;&nbsp; ${estimate.pawnshopId.pawnshopName}</div>
															<div class="profile-card">
																<div class="profile-card-circle">
																	<img src="img/logos/logo.png">
																</div>
																<span>${estimate.pawnshopId.pawnshopName}</span>
																<i>${estimate.pawnshopId.pawnshopProvince}</i>
																<i>${estimate.pawnshopId.pawnshopTel}</i>
																<span class="closed">&times;</span>
															</div>
														</div>
													</div>
													<div class="ml-auto col-md-2">${estimate.estimatePriceMin}</div>
													<div class="col-md-2">${estimate.estimatePriceMax}</div>
													<div class="col-md-2">
														<form action="pawner-approve.html" method="post">
															<input type="hidden" name="estimateId" value="${estimate.estimateId}">
															<input type="hidden" name="pawnerPostId" value="${estimate.pawnerPostId.pawnerPostId}">
															<button class="btn-custom btn-custom-defalt small" type="submit">รับข้อเสนอ</button>
														</form>
													</div>
												</div>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
						</c:if>
						<!-- approve -->
						<c:if test="${postprocess.pawnerPostStatus == 'approve'}">
							<line-x></line-x>
							<div class="history-show-estimate">
								<c:forEach items="${estimatesApprove}" var="estimate">
									<c:if test="${estimate.pawnerPostId.pawnerPostId == postprocess.pawnerPostId }">
										<div class="row d-flex">
											<div class="col-md-5 d-inline-flex">
												โรงรับจำนำ
												<!-- profile card -->
												<div class="profile-card-head is-collapsed">
													<div class="card-inner js-expander">&nbsp;&nbsp; ${estimate.pawnshopId.pawnshopName}</div>
													<div class="profile-card">
														<div class="profile-card-circle">
															<img src="img/logos/logo.png">
														</div>
														<span>${estimate.pawnshopId.pawnshopName}</span>
														<i>${estimate.pawnshopId.pawnshopProvince}</i>
														<i>${estimate.pawnshopId.pawnshopTel}</i>
														<span class="closed">&times;</span>
													</div>
												</div>
											</div>
											<div class="col-md-4 ml-auto">
												<i>
													เสนอราคาไว้ที่
													<span style="color: #ff3300; font-weight: bold;">${estimate.estimatePriceMin}-${estimate.estimatePriceMax} บาท</span>
												</i>
											</div>
											<div class="col-md-2">
												<a href="#" onClick="select(${estimate.estimateId}); return false;" class="btn-custom btn-custom-sky small">
													<i class="fas fa-print" style="margin: auto;"></i>
													<span style="margin-left: 5px;">พิมพ์ใบจำนำ</span>
												</a>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</c:if>
					</div>
					<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->
			</c:if>
		</c:forEach>
	</section>
	<!-- --------------------------------------------------------------------------------- -->
	<!-- import profile Card js -->
	<script src="js/profileCard.js"></script>
	<!-- loading page -->
	<script src="js/loadingpage.js"></script>
	<script type="text/javascript">
	/* loading page */
	window.onload = function loading() {
	    if (window.location.hash) {
		document.body.style.overflowY = "auto";
		document.getElementById("loadpage").style.display = "none";
	    }

	    if (!window.location.hash) {
		loadingpage("");
		setTimeout(function() {
		    window.location = window.location + '#loaded';
		    window.location.reload();
		}, 600);
	    }
	}
    </script>
	<!-- sorting -->
	<script src="js/sorting.js">
	
    </script>
	<!-- print page -->
	<script>
	function select(e) {
	   var w = window.open("print-pledge.html?pledgeNo="+e, "_blank",
	    "width=950,height=700"); 
	    w.print();
	}
    </script>
</body>
</html>