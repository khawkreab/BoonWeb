<!-- 
// page : pawner-track-pledge
// version : 3.2
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
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>สถานะการจำนำ</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/timeline.css">
<link rel="stylesheet" href="css/loadingPage.css">
<style>
.popup {
	width: 100%;
	height: 100%;
	display: none;
	position: fixed;
	top: 0px;
	left: 0px;
	background: rgba(0, 0, 0, 0.75);
}
</style>
</head>
<body style="background-color: #eee; overflow: hidden;">
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
			<h1>สถานะการจำนำ</h1>
			<em></em>
		</div>
	</div>
	<section id="cd-timeline" class="cd-container">
		<c:forEach items="${pawnerPostsProcess}" var="postprocess">
			<c:if
				test="${postprocess.pawnerPostStatus == 'process' || postprocess.pawnerPostStatus == 'waiting' || postprocess.pawnerPostStatus == 'approve'}">
				<div class="cd-timeline-block">
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
						<span class="cd-date"> <fmt:formatDate pattern="dd"
								value="${postprocess.pawnerPostDate }" /> <fmt:formatDate
								pattern="MMM" value="${postprocess.pawnerPostDate }" /> <fmt:formatDate
								pattern="yyyy" value="${postprocess.pawnerPostDate }" />
						</span>
						<!--  -->
						<h2>${postprocess.pawnerPostName }${postprocess.pawnerPostBrand }${postprocess.pawnerPostTypeCamera }${postprocess.pawnerPostCameraLen }</h2>
						<ul class="row">
							<!-- Watch,Electronic -->
							<c:if test="${postprocess.pawnerPostModel != null}">
								<li class="col-md-6">รุ่น : ${postprocess.pawnerPostModel}</li>
								<li class="col-md-6">หมายเลขประจำเครื่อง :
									${postprocess.pawnerPostSerial}</li>
								<li class="col-md-6">ปีที่ซื้อสินค้า :
									${postprocess.pawnerPostPurchase }</li>
							</c:if>
							<c:if test="${postprocess.pawnerPostProduction != null}">
								<li class="col-md-6">ปีที่ผลิตสินค้า :
									${postprocess.pawnerPostProduction}</li>
							</c:if>
							<!-- Gold -->
							<c:if test="${postprocess.pawnerPostPure != null}">
								<li class="col-md-6">ความบริสุทธ์ :
									${postprocess.pawnerPostPure  }</li>
								<li class="col-md-6">น้ำหนัก :
									${postprocess.pawnerPostWeigh }</li>
								<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
									${postprocess.pawnerPostCategory }</li>
							</c:if>
							<!-- Electronic tv com telephone -->
							<c:if test="${postprocess.pawnerPostSize != null}">
								<li class="col-md-6">ขนาดหน้าจอ :
									${postprocess.pawnerPostSize }</li>
							</c:if>
							<!-- Electronic camera com telephone -->
							<c:if test="${postprocess.pawnerPostBattery != null}">
								<li class="col-md-6"><span class="fas fa-check"
									aria-hidden="true"> </span> Battery</li>
							</c:if>
							<!-- Electronic com telephone -->
							<c:if test="${postprocess.pawnerPostHarddisk != null}">
								<li class="col-md-6">Harddisk : ${ postprocess.pawnerPostHarddisk }</li>
							</c:if>
							<!-- Electronic com-->
							<c:if test="${postprocess.pawnerPostRam != null}">
								<li class="col-md-6">Ram : ${postprocess.pawnerPostRam }</li>
							</c:if>
							<!-- Watch -->
							<c:if test="${postprocess.pawnerPostCase != null}">
								<li class="col-md-6">ชนิดของหน้าปัด :
									${postprocess.pawnerPostCase }</li>
								<li class="col-md-6">ชนิดของสายรัดข้อมือ :
									${postprocess.pawnerPostBracelet }</li>
								<c:if test="${postprocess.pawnerPostDiamond != null}">
									<li class="col-md-6">เพรช :
										${postprocess.pawnerPostDiamond }</li>
								</c:if>
								<c:if test="${postprocess.pawnerPostPackage != null}">
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
								</c:if>
							</c:if>
							<!-- Electronic tv -->
							<c:if test="${postprocess.panwePostRemote != null}">
								<li class="col-md-6"><span class="fas fa-check"
									aria-hidden="true"> </span> Remote</li>
							</c:if>
							<!-- Watch,Electronic -->
							<c:if test="${postprocess.pawnerPostModel != null}">
								<li class="col-md-6"><span class="fas fa-check"
									aria-hidden="true"> </span> การประกันสินค้า</li>
							</c:if>
						</ul>
						<i class="quick small">เพิ่มเติม</i> <span class="quick_desc">${postprocess.pawnerPostDescription }</span>
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
								<ul>
									<c:forEach items="${estimatesList}" var="estimate">
										<c:if
											test="${estimate.pawnerPostId.pawnerPostId == postprocess.pawnerPostId }">
											<li style="margin-bottom: 12px;">
												<div class="row d-flex">
													<div class="col-md-4">${estimate.pawnshopId.pawnshopName}</div>
													<div class="ml-auto col-md-2">${estimate.estimatePriceMin}</div>
													<div class="col-md-2">${estimate.estimatePriceMax}</div>
													<div class="col-md-2">
														<form action="pawner-approve.html" method="post">
															<input type="hidden" name="estimateId"
																value="${estimate.estimateId}"> <input
																type="hidden" name="pawnerPostId"
																value="${estimate.pawnerPostId.pawnerPostId}">
															<button class="btn-custom btn-custom-defalt small"
																type="submit">รับข้อเสนอ</button>
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
									<c:if
										test="${estimate.pawnerPostId.pawnerPostId == postprocess.pawnerPostId }">
										<div class="row d-flex">
											<div class="col-md-5">
												<p>โรงรับจำนำ ${estimate.pawnshopId.pawnshopName} ณ
													จังหวัด ${estimate.pawnshopId.pawnshopProvince}</p>
											</div>
											<div class="col-md-4 ml-auto">
												<p>
													ด้วยราคา <span style="color: #ff3300; font-weight: bold;">${estimate.estimatePriceMin}-${estimate.estimatePriceMax}
														บาท</span>
												</p>
											</div>
											<div class="col-md-2">
												<p>
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
														class="btn-custom btn-custom-sky small"> <i
														class="fas fa-print" style="margin: auto;"></i> <span
														style="margin-left: 5px;">พิมพ์ใบจำนำ</span>
													</a>
												</p>
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
	<script>
		function select(e) {

			var cart = {}
			cart = JSON.parse(e.getAttribute('data-cart'))

			$("#pawnerPostName").text(cart.pawnerPostName)
			$("#pawnerPostNames").text(cart.pawnerPostName)
			$("#pawnerName").text(
					cart.pawnerFirstname + " " + cart.pawnerLastname)
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

			var w = window.open("", "", "width=1000,height=700");
			var toNewWindow = $("#printable").html();
			$(w.document.body).html(toNewWindow);
			w.print();
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
						<i id="pawnShopname"></i> <br> <i id="pawnshopParish"></i> <i
							id="pawnshopProvince"></i> <i id="pawnshopPostcodes"> </i> <br>
						โทร. <i id="pawnshopTel"></i>
					</div>
					<div>
						<table style="width: 100%; margin: 30px 0;">
							<tr>
								<td>ชื่อ <i id="pawnerName"></i>
								</td>
							</tr>
							<tr>
								<td>ชื่อของจำนำ <i id="pawnerPostName"></i>
								</td>
							</tr>
							<tr>
								<td>วันที่ลงของจำนำ <i id="pawnerPostDate"></i>
								</td>
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
					<img src="img/logos/logo.png" style="height: 25px;" />
					<p>b2pawn.com</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>