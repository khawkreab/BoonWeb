<!-- 
// page : pawner-post-history
// version : 3.1
// task : pawner approve
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
			<h1>การดำเนินการและประวัติการจำนำ</h1>
			<em></em>
		</div>
	</div>
	<div id="noitem">ไม่มีรายการ</div>
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
	<section class="bg-glay" style="height: auto">
		<div class="note">
			<span> ***หมายเหตุ </span> <span> <i class="fas fa-check"></i>
				= เสร็จสิ้น
			</span>
		</div>
		<div id="content">
			<ul class="timeline">
				<li class="event" id="noOrder">
					<h3>ไม่มีรายการ</h3>
				</li>
				<c:forEach items="${estimatesListComplete}" var="post">
					<input type="hidden" value="hide" id="hide" />
					<li class="event filter-column ${post.pawnerPostId.pawnerPostItemType}"
						data-date="<fmt:formatDate pattern="dd MMM yyyy"
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
													<p>หมายเลขประจำเครื่อง :
														${post.pawnerPostId.pawnerPostSerial}</p>
												</li>
												<li class="col-md-6">
													<p>ปีที่ซื้อสินค้า :
														${post.pawnerPostId.pawnerPostPurchase}</p>
												</li>
											</c:if>
											<c:if
												test="${post.pawnerPostId.pawnerPostProduction != null}">
												<li class="col-md-6">
													<p>ปีที่ผลิตสินค้า :
														${post.pawnerPostId.pawnerPostProduction}</p>
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
													<p>ชนิดหรือรูปแบบของทองคำ :
														${post.pawnerPostId.pawnerPostCategory}</p>
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
												<li class="col-md-6"><span class="fas fa-check"
													aria-hidden="true"> </span> Battery</li>
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
													<p>ชนิดของสายรัดข้อมือ :
														${post.pawnerPostId.pawnerPostBracelet}</p>
												</li>
												<c:if test="${post.pawnerPostId.pawnerPostDiamond != null}">
													<li class="col-md-6">
														<p>เพรช : ${post.pawnerPostId.pawnerPostDiamond}</p>
													</li>
												</c:if>
												<c:if test="${post.pawnerPostId.pawnerPostPackage != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
												</c:if>
											</c:if>
											<!-- Electronic tv -->
											<c:if test="${post.pawnerPostId.panwePostRemote != null}">
												<li class="col-md-6"><span class="fas fa-check"
													aria-hidden="true"> </span> Remote</li>
											</c:if>
											<!-- Watch,Electronic -->
											<c:if test="${post.pawnerPostId.pawnerPostWarranty != null}">
												<li class="col-md-6"><span class="fas fa-check"
													aria-hidden="true"> </span> การประกันสินค้า</li>
											</c:if>
											<li class="col-md-6">
												<p>${post.pawnerPostId.pawnerPostDescription}</p>
											</li>
										</ul>
										<!------ from pawner  ------>
										<div class="col-md-5 d-inline-flex">
											จำนำที่ :
											<div class="profile-card-head is-collapsed">
												<div class="card-inner js-expander">&nbsp;&nbsp;
													${post.pawnshopId.pawnshopName}</div>
												<div class="profile-card">
													<div class="profile-card-circle">
														<img src="img/logos/logo.png">
													</div>
													<span>${post.pawnshopId.pawnshopName}</span> <span>${post.pawnshopId.pawnshopProvince}</span>
													<span>${post.pawnshopId.pawnshopTel}</span> <span
														class="closed">&times;</span>
												</div>
											</div>
										</div>
										<!----- for pawnshop ----->
										<div class="">
											<p>
												ราคาที่ได้รับ: <span
													style="color: #ff3300; font-weight: bold">
													${post.estimatePriceMin} - ${post.estimatePriceMax} บาท </span>
											</p>
										</div>
									</div>
								</div>
							</div>
							<!----- image ------>
							<div class="p-2">
								<img
									src="img/uploadImge/${post.pawnerPostId.pawnerPostPicture }"
									style="height: auto; width: 300px" />
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</section>
	<!-- sorting -->
	<script src="js/sorting.js">
	<!-- profile Card -->
		<script src="js/profileCard.js">
	</script>
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
	<%-- <section>
		<!-- ---------------- status approve ----------------- -->
		<c:forEach items="${estimatesListApprove}" var="post">
			<div class="container">
				<div class="history-main offer-warning border-warning">
					<div class="shape">
						<div class="shape-text">กำลังดำเนินการ</div>
					</div>
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
								value="${post.pawnerPostId.pawnerPostDate }" />
						</div>
						<div class="ml-auto p-2">
							<span></span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">
								<div class="pro-img">
									<img class="img-responsive"
										src="img/uploadImge/${post.pawnerPostId.pawnerPostPicture }" />
								</div>
							</div>
							<div class="col-md-7 single-top-in">
								<div class="span_2_of_a1 simpleCart_shelfItem">
									<h3>${post.pawnerPostId.pawnerPostName }
										${post.pawnerPostId.pawnerPostBrand }</h3>
									<p class="in-para">รายละเอียด</p>
									<div class="price_single">
										<div class="preview">
											<ul class="row">
												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostId.pawnerPostModel != null}">
													<li class="col-md-6">รุ่น :
														${post.pawnerPostId.pawnerPostModel}</li>
													<li class="col-md-6">หมายเลขประจำเครื่อง :
														${post.pawnerPostId.pawnerPostSerial}</li>
													<li class="col-md-6">ปีที่ซื้อสินค้า :
														${post.pawnerPostId.pawnerPostPurchase }</li>

												</c:if>

												<c:if
													test="${post.pawnerPostId.pawnerPostProduction != null}">

													<li class="col-md-6">ปีที่ผลิตสินค้า :
														${post.pawnerPostId.pawnerPostProduction}</li>
												</c:if>

												<!-- Gold -->
												<c:if test="${post.pawnerPostId.pawnerPostPure != null}">
													<li class="col-md-6">ยี่ห้อ :
														${post.pawnerPostId.pawnerPostBrand }</li>
													<li class="col-md-6">ความบริสุทธ์ :
														${post.pawnerPostId.pawnerPostPure }</li>
													<li class="col-md-6">น้ำหนัก :
														${post.pawnerPostId.pawnerPostWeigh }</li>
													<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
														${post.pawnerPostId.pawnerPostCategory }</li>
												</c:if>


												<!-- Electronic tv com telephone -->
												<c:if test="${post.pawnerPostId.pawnerPostSize != null}">
													<li class="col-md-6">ขนาดหน้าจอ :
														${post.pawnerPostId.pawnerPostSize }</li>
												</c:if>

												<!-- Electronic camera com telephone -->
												<c:if test="${post.pawnerPostId.pawnerPostBattery != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span>Battery</li>
												</c:if>

												<!-- Electronic com telephone -->
												<c:if test="${post.pawnerPostId.pawnerPostHarddisk != null}">
													<li class="col-md-6">Harddisk :
														${post.pawnerPostId.pawnerPostHarddisk }</li>
												</c:if>

												<!-- Electronic com-->
												<c:if test="${post.pawnerPostId.pawnerPostRam != null}">
													<li class="col-md-6">Ram :
														${post.pawnerPostId.pawnerPostRam }</li>
												</c:if>

												<!-- Watch -->
												<c:if test="${post.pawnerPostId.pawnerPostCase != null}">
													<li class="col-md-6">ชนิดของหน้าปัด :
														${post.pawnerPostId.pawnerPostCase }</li>
													<li class="col-md-6">ชนิดของสายรัดข้อมือ :
														${post.pawnerPostId.pawnerPostBracelet }</li>
													<c:if test="${post.pawnerPostId.pawnerPostDiamond != null}">
														<li class="col-md-6">เพรช :
															${post.pawnerPostId.pawnerPostDiamond }</li>
													</c:if>
													<c:if test="${post.pawnerPostId.pawnerPostPackage != null}">
														<li class="col-md-6"><span class="fas fa-check"
															aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
													</c:if>
												</c:if>

												<!-- Electronic tv -->
												<c:if test="${post.pawnerPostId.panwePostRemote != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> Remote</li>
												</c:if>


												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostId.pawnerPostWarranty != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> การประกันสินค้า</li>
												</c:if>
											</ul>
										</div>
									</div>
									<div class="history-show-estimate">
										<div class="row h6">
											<div class="col-md-6">โรงรับจำนำ</div>
											<div class="col-md-3">ราคาน้อยสุด</div>
											<div class="col-md-3">ราคามากสุด</div>
										</div>
										<ul>
											<li>
												<div class="row small">
													<div class="col-md-6">
														${post.pawnshopId.pawnshopName}</div>
													<div class="col-md-3">${post.estimatePriceMin}</div>
													<div class="col-md-3">${post.estimatePriceMax}</div>
												</div>
											</li>
										</ul>
									</div>
									<a id="${post.pawnerPostId.pawnerPostId}"
										onClick="select(this); return false;"
										data-cart='{"pawnerFirstname":"${post.pawnerPostId.pawnerId.pawnerFirstname}",
										"pawnerLastname":"${post.pawnerPostId.pawnerId.pawnerLastname}",
										"pawnerPostName":"${post.pawnerPostId.pawnerPostName }","pawnerPostDate":"${post.pawnerPostId.pawnerPostDate}",
										"pawnerPostItemType":"${post.pawnerPostId.pawnerPostItemType}","pawnerPostBrand":"${post.pawnerPostId.pawnerPostBrand}",
										"panwePostRemote":"${post.pawnerPostId.panwePostRemote}","pawnerPostBattery":"${post.pawnerPostId.pawnerPostBattery}",
										"pawnerPostBracelet":"${post.pawnerPostId.pawnerPostBracelet}","pawnerPostCameraLen":"${post.pawnerPostId.pawnerPostCameraLen}",
										"pawnerPostCapacity":"${post.pawnerPostId.pawnerPostCapacity}","pawnerPostCase":"${post.pawnerPostId.pawnerPostCase}",
										"pawnerPostDescription":"${post.pawnerPostId.pawnerPostDescription}","pawnerPostDevice":"${post.pawnerPostId.pawnerPostDevice}",
										"pawnerPostDiamond":"${post.pawnerPostId.pawnerPostDiamond}","pawnerPostHarddisk":"${post.pawnerPostId.pawnerPostHarddisk}",
										"pawnerPostModel":"${post.pawnerPostId.pawnerPostModel}","pawnerPostPackage":"${post.pawnerPostId.pawnerPostPackage}",
										"pawnerPostProduction":"${post.pawnerPostId.pawnerPostProduction}","pawnerPostPurchase":"${post.pawnerPostId.pawnerPostPurchase}",
										"pawnerPostSerial":"${post.pawnerPostId.pawnerPostSerial}","pawnerPostStatus":"${post.pawnerPostId.pawnerPostStatus}",
										"pawnerPostTypeCamera":"${post.pawnerPostId.pawnerPostTypeCamera}","pawnerPostWarranty":"${post.pawnerPostId.pawnerPostWarranty}",
										"pawnerPostWeigh":"${post.pawnerPostId.pawnerPostWeigh}","pawnerPostRam":"${post.pawnerPostId.pawnerPostRam}",
										"pawnerPostPure":"${post.pawnerPostId.pawnerPostPure}","estimatePriceMin":"${post.estimatePriceMin}",
										"estimatePriceMax":"${post.estimatePriceMax}","estimateDate":"${post.estimateDate}",
										"pawnerPostPicture":"${post.pawnerPostId.pawnerPostPicture}",
										"pawnShopname":"${post.pawnshopId.pawnshopName}",
										"pawnshopProvince":"${post.pawnshopId.pawnshopProvince}",
										"pawnshopPostcodes":"${post.pawnshopId.pawnshopPostcodes}",
										"pawnshopParish":"${post.pawnshopId.pawnshopParish}",
										"pawnshopTel":"${post.pawnshopId.pawnshopTel}"
										}'
										class="hvr-skew-backward">พิมใบแสดงการจำนำ</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

		<!-- ---------------- status complete ----------------- -->
		<c:forEach items="${estimatesListComplete}" var="post">
			<div class="container">
				<div class="history-main offer-success border-success">
					<div class="shape">
						<div class="shape-text">เสร็จสิ้น</div>
					</div>

					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
								value="${post.pawnerPostId.pawnerPostDate }" />
						</div>
						<div class="ml-auto p-2">
							<span></span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">
								<div class="pro-img">
									<img class="img-responsive"
										src="images/imageUpload/${post.pawnerPostId.pawnerPostPicture }" />
								</div>
							</div>
							<div class="col-md-7 single-top-in">
								<div class="span_2_of_a1 simpleCart_shelfItem">
									<h3>${post.pawnerPostId.pawnerPostName }
										${post.pawnerPostId.pawnerPostBrand }</h3>
									<p class="in-para">รายละเอียด</p>
									<div class="price_single">
										<div class="preview">
											<ul class="row">
												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostId.pawnerPostModel != null}">
													<li class="col-md-6">รุ่น :
														${post.pawnerPostId.pawnerPostModel}</li>
													<li class="col-md-6">หมายเลขประจำเครื่อง :
														${post.pawnerPostId.pawnerPostSerial}</li>
													<li class="col-md-6">ปีที่ซื้อสินค้า :
														${post.pawnerPostId.pawnerPostPurchase }</li>
													<li class="col-md-6">ปีที่ผลิตสินค้า :
														${post.pawnerPostId.pawnerPostProduction}</li>
												</c:if>

												<!-- Gold -->
												<c:if test="${post.pawnerPostId.pawnerPostPure != null}">
													<li class="col-md-6">ยี่ห้อ :
														${post.pawnerPostId.pawnerPostBrand }</li>
													<li class="col-md-6">ความบริสุทธ์ :
														${post.pawnerPostId.pawnerPostPure }</li>
													<li class="col-md-6">น้ำหนัก :
														${post.pawnerPostId.pawnerPostWeigh }</li>
													<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
														${post.pawnerPostId.pawnerPostCategory }</li>
												</c:if>


												<!-- Electronic tv com telephone -->
												<c:if test="${post.pawnerPostId.pawnerPostSize != null}">
													<li class="col-md-6">ขนาดหน้าจอ :
														${post.pawnerPostId.pawnerPostSize }</li>
												</c:if>

												<!-- Electronic camera com telephone -->
												<c:if test="${post.pawnerPostId.pawnerPostBattery != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span>Battery</li>
												</c:if>

												<!-- Electronic com telephone -->
												<c:if test="${post.pawnerPostId.pawnerPostHarddisk != null}">
													<li class="col-md-6">Harddisk :
														${post.pawnerPostId.pawnerPostHarddisk }</li>
												</c:if>

												<!-- Electronic com-->
												<c:if test="${post.pawnerPostId.pawnerPostRam != null}">
													<li class="col-md-6">Ram :
														${post.pawnerPostId.pawnerPostRam }</li>
												</c:if>

												<!-- Watch -->
												<c:if test="${post.pawnerPostId.pawnerPostCase != null}">
													<li class="col-md-6">ชนิดของหน้าปัด :
														${post.pawnerPostId.pawnerPostCase }</li>
													<li class="col-md-6">ชนิดของสายรัดข้อมือ :
														${post.pawnerPostId.pawnerPostBracelet }</li>
													<c:if test="${post.pawnerPostId.pawnerPostDiamond != null}">
														<li class="col-md-6">เพรช :
															${post.pawnerPostId.pawnerPostDiamond }</li>
													</c:if>
													<c:if test="${post.pawnerPostId.pawnerPostPackage != null}">
														<li class="col-md-6"><span class="fas fa-check"
															aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
													</c:if>
												</c:if>

												<!-- Electronic tv -->
												<c:if test="${post.pawnerPostId.panwePostRemote != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> Remote</li>
												</c:if>


												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostId.pawnerPostWarranty != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> การประกันสินค้า</li>
												</c:if>
											</ul>
										</div>
									</div>
									<div class="history-show-estimate">
										<div class="row h6">
											<div class="col-md-6">โรงรับจำนำ</div>
											<div class="col-md-3">ราคาน้อยสุด</div>
											<div class="col-md-3">ราคามากสุด</div>
										</div>
										<ul>
											<li>
												<div class="row small">
													<div class="col-md-6">
														${post.pawnshopId.pawnshopName}</div>
													<div class="col-md-3">${post.estimatePriceMin}</div>
													<div class="col-md-3">${post.estimatePriceMax}</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section>



	<script>
		function select(e) {

			var cart = {}
			cart = JSON.parse(e.getAttribute('data-cart'))

			$("#pawnerPostName").text(cart.pawnerPostName)
			$("#pawnerPostNames").text(cart.pawnerPostName)
			$("#pawnerName").text(cart.pawnerFirstname +" "+ cart.pawnerLastname)
			$("#pawnerPostItemType").text(cart.pawnerPostItemType)
			$("#panwePostRemote").text(cart.panwePostRemote)
			$("#pawnerPostBattery").text(cart.pawnerPostBattery)
			$("#pawnerPostBracelet").text(cart.pawnerPostBracelet)
			$("#pawnerPostBrand").text(cart.pawnerPostBrand)
			$("#pawnerPostCameraLen").text(cart.pawnerPostCameraLen)
			$("#pawnerPostCapacity").text(cart.pawnerPostCapacity)
			$("#pawnerPostCase").text(cart.pawnerPostCase)
			$("#pawnerPostCategory").text(cart.pawnerPostCategory)
			$("#pawnerPostDate").text(cart.pawnerPostDate)
			$("#pawnerPostDescription").text(cart.pawnerPostDescription)
			$("#pawnerPostDevice").text(cart.pawnerPostDevice)
			$("#pawnerPostDiamond").text(cart.pawnerPostDiamond)
			$("#pawnerPostHarddisk").text(cart.pawnerPostHarddisk)
			$("#pawnerPostModel").text(cart.pawnerPostModel)
			$("#pawnerPostPackage").text(cart.pawnerPostPackage)
			$("#pawnerPostProduction").text(cart.pawnerPostProduction)
			$("#pawnerPostPure").text(cart.pawnerPostPure)
			$("#pawnerPostSerial").text(cart.pawnerPostSerial)
			$("#pawnerPostRam").text(cart.pawnerPostRam)
			$("#pawnerPostSize").text(cart.pawnerPostSize)
			$("#pawnerPostStatus").text(cart.pawnerPostStatus)
			$("#pawnerPostTypeCamera").text(cart.pawnerPostTypeCamera)
			$("#pawnerPostWarranty").text(cart.pawnerPostWarranty)
			$("#pawnerPostWeigh").text(cart.pawnerPostWeigh)
			$("#estimatePriceMin").text(cart.estimatePriceMin)
			$("#estimatePriceMax").text(cart.estimatePriceMax)
			$("#estimateDate").text(cart.estimateDate)

			
			/* pawnshop */
			$("#pawnShopname").text(cart.pawnShopname)
			$("#pawnshopProvince").text(cart.pawnshopProvince)
			$("#pawnshopPostcodes").text(cart.pawnshopPostcodes)
			$("#pawnshopParish").text(cart.pawnshopParish)
			$("#pawnshopTel").text(cart.pawnshopTel)

			var originalContents = document.documentElement.innerHTML;

			document.documentElement.innerHTML = document
					.getElementById('printable').innerHTML;
			window.print();
			document.body.innerHTML = originalContents;
		}
	</script>


	<!-- -------------------- print page --------------------------- -->
	<div id="printable">
		<div class="popup" data-popup="popup">
			<div>
				<p style="font-size: 32px; border-bottom: 1px solid;">ใบยืนยันการจำนำ</p>
				<div>

						<div style="text-align: right;">
							<h5>ที่อยู๋โรงรับจำนำ</h5>
							<i id="pawnShopname"></i><br> <i id="pawnshopParish"></i> <i
								id="pawnshopProvince"></i> <i id="pawnshopPostcodes"> </i><br>
							โทร. <i id="pawnshopTel"></i> 
						</div>
						<div>
							<table style="width: 100%; margin: 30px 0;">
								<tr>
									<td>ชื่อ <i id="pawnerName"></i></td>
								</tr>
								<tr>
									<td>ชื่อของจำนำ <i id="pawnerPostName"></i></td>
								</tr>
								<tr>
									<td>วันที่ลงของจำนำ <i id="pawnerPostDate"></i></td>
								</tr>
							</table>
						</div>
					</div>
					<table
						style="width: 100%; text-align: center; border-spacing: 0px; border-color: #f80000; border-width: 0; border-left: 0; border-right: 0; border-bottom: 0; border-top: 0;"
						border="1">
						<tr>
							<th>ชื่อของจำนำ</th>
							<th>รายละเอียด</th>
							<th>วันที่เสนอราคา</th>
							<th>ราคาที่เสนอ</th>
						</tr>
						<tr class="item-row">
							<td>
								<div id="pawnerPostNames"></div>
							</td>
							<td class="description"><i id="panwePostRemote"></i> <i
								id="pawnerPostBattery"></i> <i id="pawnerPostBracelet"></i> <i
								id="pawnerPostCategory"></i> <i id="pawnerPostBrand"></i> <i
								id="pawnerPostCameraLen"></i> <i id="pawnerPostCapacity"></i> <i
								id="pawnerPostCase"></i> <i id="pawnerPostCategory"></i> <i
								id="pawnerPostDescription"></i> <i id="pawnerPostDevice"></i> <i
								id="pawnerPostDiamond"></i> <i id="pawnerPostHarddisk"></i> <i
								id="pawnerPostModel"></i> <i id="pawnerPostPackage"></i> <i
								id="pawnerPostProduction"></i> <i id="pawnerPostPure"></i> <i
								id="pawnerPostSerial"></i> <i id="pawnerPostRam"></i> <i
								id="pawnerPostSize"></i> <i id="pawnerPostTypeCamera"></i> <i
								id="pawnerPostWarranty"></i> <i id="pawnerPostWeigh"></i></td>
							<td>
								<p id="estimateDate"></p>
							</td>
							<td><i id="estimatePriceMin"></i> - <i id="estimatePriceMax"></i>
								บาท</td>
						</tr>
					</table>
					<div style="text-align: center; margin-top: 50px;">

						<img src="img/logos/Artboard.png" style="height: 25px;" />
						<p>b2pawn.com</p>
					</div>
				</div>
			</div>
		</div> --%>
</body>
</html>