<!-- 
// page : pawnshop-Track-estimate
// version : 1.2
// track : liSt pawner 
// edit by : Kwin
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>สถานะของการประเมิน</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/timeline.css">
<link rel="stylesheet" href="css/loadingPage.css">
<link rel="stylesheet" href="css/profileCard.css">
<link rel="stylesheet" href="css/sorting.css">
</head>
<body>
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
		<div>
			<h1>สถานะของการประเมิน</h1>
			<em></em>
		</div>
	</div>
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด <i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('process')">
			รอการตอบรับ <i class="fas fa-handshake"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('approve')">
			สินค้าจำนำกำลังเดินทาง <i class="fas fa-walking"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('denei')">
			ถูกปฏิเสธ <i class="fas fa-times"></i>
		</button>
	</div>
	<!-- not have item -->
	<div id="noitem">ไม่มีรายการ</div>
	<section id="cd-timeline" class="cd-container">
		<c:forEach items="${trackMyEstimate}" var="track">
			<c:if test="${track.estimateStatus != 'complete'}">
				<c:if test="${track.estimateStatus != 'approvedenei'}">
					<input type="hidden" value="hide" id="hide" />
					<div
						class="cd-timeline-block filter-column ${track.estimateStatus}">
						<!-------- icon -------->
						<c:if test="${track.estimateStatus == 'denei'}">
							<div class="cd-timeline-img cd-wait">
								<i class="fas fa-times-circle"></i>
							</div>
						</c:if>
						<c:if test="${track.estimateStatus == 'process'}">
							<div class="cd-timeline-img cd-wait">
								<i class="fas fa-hourglass-half"></i>
							</div>
						</c:if>
						<c:if test="${track.estimateStatus == 'approve'}">
							<div class="cd-timeline-img cd-process">
								<i class="fas fa-walking"></i>
							</div>
						</c:if>
						<!--------- end icon --------->
						<div class="cd-timeline-content">
							<!-- date -->
							<span class="cd-date"> <fmt:formatDate pattern="d"
									value="${track.pawnerPostId.pawnerPostDate }" /> <fmt:formatDate
									pattern="MMM" value="${track.pawnerPostId.pawnerPostDate }" />
								<fmt:formatDate pattern="yyyy"
									value="${track.pawnerPostId.pawnerPostDate }" />
							</span>
							<!-- item -->
							<div class="cd-timeline-detail">
								<div class="cd-timeline-detail-img">
									<img
										src="img/uploadimg/pawnerPost/${track.pawnerPostId.pawnerPostPicture}">
								</div>
								<div>
									<h2>${track.pawnerPostId.pawnerPostName }</h2>
									<ul>
										<!-- Watch,Electronic -->
										<c:if test="${track.pawnerPostId.pawnerPostModel != null}">
											<li>รุ่น : ${track.pawnerPostId.pawnerPostModel}</li>
											<li>ปีที่ซื้อสินค้า : <fmt:formatDate
													pattern="d MMMM yyyy"
													value="${track.pawnerPostId.pawnerPostPurchase }" /></li>
											<li>หมายเลขผลิตภัณฑ์ :
												${track.pawnerPostId.pawnerPostSerial}</li>
										</c:if>
										<c:if
											test="${track.pawnerPostId.pawnerPostTypeCamera != null}">
											<li>ชนิดของกล้อง :
												${track.pawnerPostId.pawnerPostTypeCamera}</li>
											<li>ชนิดของเลนกล้อง :
												${track.pawnerPostId.pawnerPostCameraLen}</li>
										</c:if>
										<c:if
											test="${track.pawnerPostId.pawnerPostProduction != null}">
											<li>ปีที่ผลิตสินค้า :
												${track.pawnerPostId.pawnerPostProduction}</li>
										</c:if>
										<!-- Gold -->
										<c:if test="${track.pawnerPostId.pawnerPostPure != null}">
											<li>ยี่ห้อ : ${track.pawnerPostId.pawnerPostBrand }</li>
											<li>ความบริสุทธ์ : ${track.pawnerPostId.pawnerPostPure  }</li>
											<li>น้ำหนัก : ${track.pawnerPostId.pawnerPostWeigh }</li>
											<li>ชนิดหรือรูปแบบของทองคำ :
												${track.pawnerPostId.pawnerPostCategory }</li>
										</c:if>
										<!-- Electronic tv com telephone -->
										<c:if test="${track.pawnerPostId.pawnerPostSize != null}">
											<li>ขนาดหน้าจอ : ${track.pawnerPostId.pawnerPostSize }</li>
										</c:if>
										<!-- Electronic camera com telephone -->
										<c:if test="${track.pawnerPostId.pawnerPostBattery != null}">
											<li><span class="fas fa-check" aria-hidden="true">
											</span> แบตเตอรี่</li>
										</c:if>
										<!-- Electronic com telephone -->
										<c:if test="${track.pawnerPostId.pawnerPostHarddisk != null}">
											<li>อาร์ดดิส : ${ track.pawnerPostId.pawnerPostHarddisk }</li>
										</c:if>
										<!-- Electronic com-->
										<c:if test="${track.pawnerPostId.pawnerPostRam != null}">
											<li>แรม : ${track.pawnerPostId.pawnerPostRam }</li>
										</c:if>
										<!-- Watch -->
										<c:if test="${track.pawnerPostId.pawnerPostCase != null}">
											<li>ชนิดของหน้าปัด : ${track.pawnerPostId.pawnerPostCase }</li>
											<li>ชนิดของสายรัดข้อมือ :
												${track.pawnerPostId.pawnerPostBracelet }</li>
											<c:if test="${track.pawnerPostId.pawnerPostDiamond != null}">
												<li>เพรช : ${track.pawnerPostId.pawnerPostDiamond }</li>
											</c:if>
											<c:if test="${track.pawnerPostId.pawnerPostPackage != null}">
												<li><span class="fas fa-check" aria-hidden="true">
												</span> กล้องบรรจุภัณฑ์</li>
											</c:if>
										</c:if>
										<!-- Electronic tv -->
										<c:if test="${track.pawnerPostId.panwePostRemote != null}">
											<li><span class="fas fa-check" aria-hidden="true">
											</span> รีโมท</li>
										</c:if>
										<!-- Watch,Electronic -->
										<c:if test="${track.pawnerPostId.pawnerPostModel != null}">
											<li><span class="fas fa-check" aria-hidden="true">
											</span> การประกันสินค้า</li>
										</c:if>
									</ul>
									<c:if
										test="${track.pawnerPostId.pawnerPostDescription != null && track.pawnerPostId.pawnerPostDescription != ''}">
										<i class="quick small">เพิ่มเติม
											${track.pawnerPostId.pawnerPostDescription } </i>
									</c:if>
								</div>
							</div>
							<!---------- approve  ---------->
							<c:if test="${track.estimateStatus == 'approve'}">
								<line-x></line-x>
								<div class="history-show-estimate">
									<div class="row d-flex">
										<div class="col-md-5 d-inline-flex">
											เจ้าของโพส คุณ &nbsp; <a
												href="profile.html?usercode=${track.pawnerPostId.pawnerId.pawnerUsercode}">
												${track.pawnerPostId.pawnerId.pawnerFirstname}
												${track.pawnerPostId.pawnerId.pawnerLastname}</a>
										</div>
										<div class="col-md-4 ml-auto">
											เสนอราคาที่ <span style="color: #ff3300; font-weight: bold;">${track.estimatePriceMin}&nbsp;-&nbsp;${track.estimatePriceMax}
												บาท</span>
										</div>
										<div class="col-md-3">
											<form action="pawnshop-estimate-approve.html" method="post">
												<input type="hidden" name="estimateId"
													value="${track.estimateId}"> <input type="hidden"
													name="pawnerPostId"
													value="${track.pawnerPostId.pawnerPostId}"> <input
													type="hidden" name="status" value="complete">
												<button class="btn-custom btn-custom-defalt small"
													type="submit">สินค้าจำนำถึงโรงรับจำนำแล้ว</button>
											</form>
										</div>
									</div>
								</div>
							</c:if>
							<!-- end approve -->
							<!---------- denei  ---------->
							<c:if test="${track.estimateStatus == 'denei'}">
								<line-x></line-x>
								<div class="history-show-estimate">
									<div class="row d-flex">
										<div class="col-md-5 d-inline-flex">
											เจ้าของโพส คุณ &nbsp; <a
												href="profile.html?usercode=${track.pawnerPostId.pawnerId.pawnerUsercode}">
												${track.pawnerPostId.pawnerId.pawnerFirstname}
												${track.pawnerPostId.pawnerId.pawnerLastname}</a>
										</div>
										<div class="col-md-4 ml-auto">
											เสนอราคาที่ <span style="color: #ff3300; font-weight: bold;">${track.estimatePriceMin}-${track.estimatePriceMax}
												บาท</span>
										</div>
										<div class="col-md-2">
											<span style="color: #ff3300; font-weight: bold;">ถูกปฏิเสธ</span>
										</div>
										<div class="col-md-1">
											<form action="pawnshop-estimate-approve.html" method="post">
												<input type="hidden" name="estimateId"
													value="${track.estimateId}"> <input type="hidden"
													name="pawnerPostId"
													value="${track.pawnerPostId.pawnerPostId}"> <input
													type="hidden" name="status" value="approvedenei">
												<button class="btn-custom btn-custom-defalt small"
													type="submit"
													style="position: absolute; top: 16px; left: -21px;">ฉันรู้แล้ว</button>
											</form>
										</div>
									</div>
								</div>
							</c:if>
							<!-- approve -->
							<!---------- process  ---------->
							<c:if test="${track.estimateStatus == 'process'}">
								<line-x></line-x>
								<div class="history-show-estimate">
									<div class="row d-flex">
										<div class="col-md-5 d-inline-flex">
											เจ้าของโพส คุณ &nbsp; <a
												href="profile.html?usercode=${track.pawnerPostId.pawnerId.pawnerUsercode}">
												${track.pawnerPostId.pawnerId.pawnerFirstname}
												${track.pawnerPostId.pawnerId.pawnerLastname}</a>
										</div>
										<div class="col-md-4 ml-auto">
											เสนอราคาที่ <span style="color: #ff3300; font-weight: bold;">${track.estimatePriceMin}-${track.estimatePriceMax}
												บาท</span>
										</div>
										<div class="col-md-3">
											สถานะ: <span style="color: #ff3300; font-weight: bold;">รอการตอบรับ</span>
										</div>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</c:if>
			</c:if>
		</c:forEach>
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