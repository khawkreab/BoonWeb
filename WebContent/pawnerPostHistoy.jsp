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
<link rel="icon" href="img/logos/Artboard.png">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawner-post-history</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
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

@media print {
	body * {
		visibility: hidden;
	}
	.printable * {
		visibility: visible;
	}
	.popup {
		display: block;
	}
}

#meta {
	margin-top: 1px;
	width: 300px;
	float: right;
}

</style>
</head>

<body>
	<jsp:include page="navbar.jsp" />

	<section>
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
<<<<<<< HEAD
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
									<a href="#" id="${pawnshopPost.pawnshopPostId}"
										onClick="select(this); return false;"
										data-cart='{"pawnshopPostId":"${post.pawnerPostId.pawnerPostId}","pawnshopPostName":"${post.pawnerPostId.pawnerPostName }"}'
										class="hvr-skew-backward">พิมใบแสดงการจำนำ</a>
=======
										<a href="#" id="${post.pawnerPostId.pawnerPostId}"
										onClick="select(this); return false;"
										data-cart='{"pawnerPostId":"${post.pawnerPostId.pawnerId.pawnerEmail}",
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
										"pawnerPostPicture":"${post.pawnerPostId.pawnerPostPicture}"
										}'
										class="hvr-skew-backward">พิมใบแสดงการจำนำ</a>
									</c:if>
>>>>>>> doing
								</div>
							</div>
						</div>
					</div>
<<<<<<< HEAD
				</div>
			</div>
		</c:forEach>
=======
					
					<c:if test="${post.pawnerPostId.pawnerPostStatus == 'complete'}">
>>>>>>> doing

		<!-- ---------------- status complete ----------------- -->
		<c:forEach items="${estimatesListApprove}" var="post">
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
										<div class="row">
											<div class="col-md-6">โรงรับจำนำ</div>
											<div class="col-md-3">ราคาน้อยสุด</div>
											<div class="col-md-3">ราคามากสุด</div>
										</div>
										<ul>
											<li>
												<div class="row">
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
			$("#pawnerPostId").text(cart.pawnerPostId)
			$("#pawnerPostItemType").text(cart.pawnerPostItemType)
			$("#panwePostRemote").text(cart.panwePostRemote)
			$("#pawnerPostBattery").text(cart.pawnerPostBattery)
			$("#pawnerPostBracelet").text(cart.pawnerPostBracelet)
			$("#pawnerPostBrand").text(cart.pawnerPostBrand)
			$("#pawnerPostCameraLen").text(cart.pawnerPostCameraLen)
			$("#pawnerPostCapacity").text('r'+cart.pawnerPostCapacity)
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
			$("#pawnerPostPicture").append('<img style="width:200px;height:200px;" src="images/imageUpload/'+cart.pawnerPostPicture+'">')

			console.log("this show pawnshopPostName => "
					+ cart.pawnshopPostName)
			window.print();
		}
	</script>


<!-- -------------------- print page --------------------------- -->
	<div class="line margin-lr-1"></div>
	<div class="printable">
		<div class="popup" data-popup="popup">
			<div>
				<p style="font-size: 32px; border-bottom: 1px solid;">ใบยืนยันการจำนำ</p>
				<div>
					<div>
						<p>ที่อยู๋โรงรับจำนำ</p>
						<p>ในนี้ใสที่อยู๋โรงรับจำนำที่ get from database</p>
					</div>
					<div>
						<table id="meta">
							<tr>
								<td>ชื่อเจ้าของโพส</td>
								<td>
									<div id="pawnerPostId"></div>
								</td>
							</tr>
							<tr>
								<td>ชื่อโพส</td>
								<td>
									<div id="pawnerPostName"></div>
								</td>
							</tr>
							<tr>
								<td>วันที่โพส</td>
								<td>
									<div id="pawnerPostDate"></div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<table id="items">
					<tr>
						<th>ชนิดของสินค้า</th>
						<th>รายละเอียด</th>
						<th>วันที่เสนอราคา</th>
						<th>ราคาน้อยสุด</th>
						<th>ราคามากสุด</th>
					</tr>
					<tr class="item-row">
						<td class="item-name">
							<p id="pawnerPostItemType">pawnerPostItemType</p>
						</td>
						<td class="description">
							<ul>
								<li id="panwePostRemote"></li>
								<li id="pawnerPostBattery"></li>
								<li id="pawnerPostBracelet"></li>
								<li id="pawnerPostCategory"></li>
								<li id="pawnerPostBrand"></li>
								<li id="pawnerPostCameraLen"></li>
								<li id="pawnerPostCapacity"></li>
								<li id="pawnerPostCase"></li>
								<li id="pawnerPostCategory"></li>
								<li id="pawnerPostDescription"></li>
								<li id="pawnerPostDevice"></li>
								<li id="pawnerPostDiamond"></li>
								<li id="pawnerPostHarddisk"></li>
								<li id="pawnerPostModel"></li>
								<li id="pawnerPostPackage"></li>
								<li id="pawnerPostProduction"></li>
								<li id="pawnerPostPure"></li>
								<li id="pawnerPostSerial"></li>
								<li id="pawnerPostRam"></li>
								<li id="pawnerPostSize"></li>
								<li id="pawnerPostStatus"></li>
								<li id="pawnerPostTypeCamera"></li>
								<li id="pawnerPostWarranty"></li>
								<li id="pawnerPostWeigh"></li>
							</ul>
						</td>
						<td>
							<p id="estimateDate"></p>
						</td>
						<td>
							<p id="estimatePriceMin"></p>
						</td>
						<td><p id="estimatePriceMax"></p></td>
					</tr>
					<tr>
						<td colspan="5">
							<p>รูปสินค้า</p>
							<span id="pawnerPostPicture"></span>
						</td>
					</tr>
				</table>
				<div id="terms">
					<h5></h5>
					<p>
						<img src="img/logos/Artboard.png" style="height: 25px;" />b2pawn.com
					</p>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript">
		$('div span a').click(function() {
			$(this).text(function(i, old) {
				return old == 'more' ? 'less' : 'more';
			});
		});
	</script>
</body>

</html>