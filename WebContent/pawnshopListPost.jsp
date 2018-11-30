<!-- 
// page : pawnshop-track-pledge
// version : 3.2
// task : pawnshop approve
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawnshop-post</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/history.css">
</head>
<body class="bg-glay">
	<jsp:include page="navbar.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div class="">
			<h1>ประวัติการปล่อยของหลุดจำนำ</h1>
			<em></em>
		</div>
	</div>
	<section style="height: auto">
		<!-- note -->
		<div class="note">
			<span> ***หมายเหตุ </span>
			<span>
				<i class="fas fa-hourglass-half"></i>
				= สินค้ายังไม่ถูกซื้อ ,
			</span>
			<span>
				<i class="fas fa-walking"></i>
				= กำลังเดินทางมารับสินค้า ,
			</span>
			<span>
				<i class="fas fa-check"></i>
				= สินค้าถูกขายแล้ว
			</span>
		</div>
		<div id="content">
			<ul class="timeline">
				<li class="event" id="noOrder">
					<h3>ไม่มีรายการ</h3>
				</li>
				<c:forEach items="${pawnshopPosts}" var="postw">
					<input type="hidden" value="hide" id="hide" />
					<li class="event" data-date="<fmt:formatDate pattern="dd MMM yyyy"
								value="${postw.pawnshopPostDate }"/>">
						<c:if test="${postw.pawnshopPostStatus == 'waiting'}">
							<!-- icon waiting -->
							<i class="fas fa-hourglass-half bg-warring"></i>
						</c:if>
						<c:forEach items="${order}" var="post">
							<c:if test="${post.pawnshopPostId.pawnshopPostId == postw.pawnshopPostId}">
								<c:if test="${post.pawnshopPostId.pawnshopPostStatus == 'coming'}">
									<!-- icon coming -->
									<i class="fas fa-walking bg-info"></i>
								</c:if>
								<c:if test="${post.pawnshopPostId.pawnshopPostStatus == 'complete'}">
									<!-- icon complete -->
									<i class="fas fa-check bg-success"></i>
								</c:if>
							</c:if>
						</c:forEach>
						<div class="d-flex">
							<div class="mr-auto">
								<h3>${postw.pawnshopPostName}</h3>
								<p>
									<strong>รายละเอียด</strong>
								</p>
								<div class="price_single">
									<div class="preview">
										<ul class="row">
											<!-- Watch,Electronic -->
											<c:if test="${postw.pawnshopPostModel != null}">
												<li class="col-md-6">
													<p>รุ่น : ${postw.pawnshopPostModel}</p>
												</li>
												<li class="col-md-6">
													<p>หมายเลขประจำเครื่อง : ${postw.pawnshopPostSerial}</p>
												</li>
												<li class="col-md-6">
													<p>ปีที่ซื้อสินค้า : ${postw.pawnshopPostPurchase}</p>
												</li>
											</c:if>
											<c:if test="${postw.pawnshopPostProduction != null}">
												<li class="col-md-6">
													<p>ปีที่ผลิตสินค้า : ${postw.pawnshopPostProduction}</p>
												</li>
											</c:if>
											<!-- Gold -->
											<c:if test="${postw.pawnshopPostPure != null}">
												<li class="col-md-6">
													<p>ยี่ห้อ : ${postw.pawnshopPostBrand}</p>
												</li>
												<li class="col-md-6">
													<p>ความบริสุทธ์ : ${postw.pawnshopPostPure}</p>
												</li>
												<li class="col-md-6">
													<p>น้ำหนัก : ${postw.pawnshopPostWeigh}</p>
												</li>
												<li class="col-md-6">
													<p>ชนิดหรือรูปแบบของทองคำ : ${postw.pawnshopPostCategory}</p>
												</li>
											</c:if>
											<!-- Electronic tv com telephone -->
											<c:if test="${postw.pawnshopPostSize != null}">
												<li class="col-md-6">
													<p>ขนาดหน้าจอ : ${postw.pawnshopPostSize}</p>
												</li>
											</c:if>
											<!-- Electronic camera com telephone -->
											<c:if test="${postw.pawnshopPostBattery != null}">
												<li class="col-md-6">
													<span class="fas fa-check" aria-hidden="true"> </span>
													Battery
												</li>
											</c:if>
											<!-- Electronic com telephone -->
											<c:if test="${postw.pawnshopPostHarddisk != null}">
												<li class="col-md-6">
													<p>Harddisk : ${postw.pawnshopPostHarddisk}</p>
												</li>
											</c:if>
											<!-- Electronic com-->
											<c:if test="${postw.pawnshopPostRam != null}">
												<li class="col-md-6">
													<p>Ram : ${postw.pawnshopPostRam}</p>
												</li>
											</c:if>
											<!-- Watch -->
											<c:if test="${postw.pawnshopPostCase != null}">
												<li class="col-md-6">
													<p>ชนิดของหน้าปัด : ${postw.pawnshopPostCase}</p>
												</li>
												<li class="col-md-6">
													<p>ชนิดของสายรัดข้อมือ : ${postw.pawnshopPostBracelet}</p>
												</li>
												<c:if test="${postw.pawnshopPostDiamond != null}">
													<li class="col-md-6">
														<p>เพรช : ${postw.pawnshopPostDiamond}</p>
													</li>
												</c:if>
												<c:if test="${postw.pawnshopPostPackage != null}">
													<li class="col-md-6">
														<span class="fas fa-check" aria-hidden="true"> </span>
														กล้องบรรจุสินค้า
													</li>
												</c:if>
											</c:if>
											<!-- Electronic tv -->
											<c:if test="${postw.pawnshopPostRemote != null}">
												<li class="col-md-6">
													<span class="fas fa-check" aria-hidden="true"> </span>
													Remote
												</li>
											</c:if>
											<!-- Watch,Electronic -->
											<c:if test="${postw.pawnshopPostWarranty != null}">
												<li class="col-md-6">
													<span class="fas fa-check" aria-hidden="true"> </span>
													การประกันสินค้า
												</li>
											</c:if>
											<li class="col-md-6">
												<p>${postw.pawnshopPostDescription}</p>
											</li>
										</ul>
										<c:forEach items="${order}" var="post">
											<c:if test="${post.pawnshopPostId.pawnshopPostId == postw.pawnshopPostId}">
												<c:if test="${post.pawnshopPostId.pawnshopPostStatus == 'coming'}">
													<!------ from ------>
													<p>ถูกซ้อโดย : คุณ ${post.pawnerId.pawnerFirstname} ${post.pawnerId.pawnerLastname} จาก ${post.pawnerId.pawnerProvince}</p>
													<!----- for pawnshop ----->
													<div class="">
														<p>
															ราคาที่ขาย:
															<span style="color: #ff3300; font-weight: bold"> ${post.pawnshopPostId.pawnshopPostPrice} บาท </span>
														</p>
													</div>
													<form action="pawnshop-complete-post.html" method="post">
														<input type="hidden" name="pawnshopPostId" value="${post.pawnshopPostId.pawnshopPostId}">
														<input type="hidden" name="status" value="complete">
														<button class="item-popup-tocart" type="submit">ขายแล้ว</button>
													</form>
													<form action="pawnshop-complete-post.html" method="post">
														<input type="hidden" name="pawnshopPostId" value="${post.pawnshopPostId.pawnshopPostId}">
														<input type="hidden" name="status" value="waiting">
														<button class="item-popup-tocart" type="submit">ไม่มีคนมารับของ</button>
													</form>
												</c:if>
												<c:if test="${post.pawnshopPostId.pawnshopPostStatus == 'complete'}">
													<!------ from ------>
													<p>ถูกซื้อโดย : คุณ ${post.pawnerId.pawnerFirstname} ${post.pawnerId.pawnerLastname} จาก ${post.pawnerId.pawnerProvince}</p>
													<!----- for pawnshop ----->
													<div class="">
														<p>
															ราคาที่ขาย:
															<span style="color: #ff3300; font-weight: bold"> ${post.pawnshopPostId.pawnshopPostPrice} บาท </span>
														</p>
													</div>
												</c:if>
											</c:if>
										</c:forEach>
										<c:if test="${postw.pawnshopPostStatus == 'waiting'}">
											<!------ from ------>
											<p style="color: #ff3300; font-weight: bold">สินค้ายังไม่ถูกซื้อ</p>
										</c:if>
									</div>
								</div>
							</div>
							<!----- image ------>
							<div class="p-2">
								<img src="img/uploadImge/${postw.pawnshopPostPicture }" style="height: auto; width: 300px" />
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</section>
	<script type="text/javascript">
		window.onload = function() {
			var x = document.getElementById("hide").value;
			var order = document.getElementById("noOrder");
			if (x == 'hide')
				order.style.display = "none";
		}
	</script>
	<!-- Old source code -->
	<!-- <script type="text/javascript">
		$('div span a').click(function() {
			$(this).text(function(i, old) {
				return old == 'more' ? 'less' : 'more';
			});
		});
	</script> -->
	<%-- <section>
		<!-- ---------------- status approve ----------------- -->
		<c:forEach items="${pawnshopPosts}" var="post">
			<div class="container">

				<c:if test="${post.pawnshopPostStatus == 'waiting'}">
					<div class="history-main offer-danger border-danger">
						<div class="shape">
							<div class="shape-text">กำลังดำเนินการ</div>
						</div>
				</c:if>

				<c:if test="${post.pawnshopPostStatus == 'complete'}">
					<div class="history-main offer-success border-success">
						<div class="shape">
							<div class="shape-text">เสร็จสิน</div>
						</div>
				</c:if>

				<c:if test="${post.pawnshopPostStatus == 'coming'}">
					<div class="history-main offer-warning border-warning">
						<div class="shape">
							<div class="shape-text">กำลังมารับของ</div>
						</div>
				</c:if>
				<div class="d-flex history-title">
					<div class="mr-auto p-2">
						<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
							value="${post.pawnshopPostDate }" />
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
									src="images/imageUpload/${post.pawnshopPostPicture }" />
							</div>
						</div>
						<div class="col-md-7 single-top-in">
							<div class="span_2_of_a1 simpleCart_shelfItem">
								<h3>${post.pawnshopPostName }${post.pawnshopPostBrand }</h3>
								<p class="in-para">รายละเอียด</p>
								<div class="price_single">
									<div class="preview">
										<ul class="row">
											<!-- Watch,Electronic -->
											<li class="col-md-12">ราคา: ${post.pawnshopPostPrice}
												บาท</li>
											<c:if test="${post.pawnshopPostModel != null}">
												<li class="col-md-6">รุ่น : ${post.pawnshopPostModel}</li>
												<li class="col-md-6">หมายเลขประจำเครื่อง :
													${post.pawnshopPostSerial}</li>
												<li class="col-md-6">ปีที่ซื้อสินค้า :
													${post.pawnshopPostPurchase }</li>

											</c:if>

											<c:if test="${post.pawnshopPostProduction != null}">

												<li class="col-md-6">ปีที่ผลิตสินค้า :
													${post.pawnshopPostProduction}</li>
											</c:if>

											<!-- Gold -->
											<c:if test="${post.pawnshopPostPure != null}">
												<li class="col-md-6">ยี่ห้อ : ${post.pawnshopPostBrand }</li>
												<li class="col-md-6">ความบริสุทธ์ :
													${post.pawnshopPostPure }</li>
												<li class="col-md-6">น้ำหนัก : ${post.pawnshopPostWeigh }</li>
												<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
													${post.pawnshopPostCategory }</li>
											</c:if>


											<!-- Electronic tv com telephone -->
											<c:if test="${post.pawnshopPostSize != null}">
												<li class="col-md-6">ขนาดหน้าจอ :
													${post.pawnshopPostSize }</li>
											</c:if>

											<!-- Electronic camera com telephone -->
											<c:if test="${post.pawnshopPostBattery != null}">
												<li class="col-md-6"><span class="fas fa-check"
													aria-hidden="true"> </span>Battery</li>
											</c:if>

											<!-- Electronic com telephone -->
											<c:if test="${post.pawnshopPostHarddisk != null}">
												<li class="col-md-6">Harddisk :
													${post.pawnshopPostHarddisk }</li>
											</c:if>

											<!-- Electronic com-->
											<c:if test="${post.pawnshopPostRam != null}">
												<li class="col-md-6">Ram : ${post.pawnshopPostRam }</li>
											</c:if>

											<!-- Watch -->
											<c:if test="${post.pawnshopPostCase != null}">
												<li class="col-md-6">ชนิดของหน้าปัด :
													${post.pawnshopPostCase }</li>
												<li class="col-md-6">ชนิดของสายรัดข้อมือ :
													${post.pawnshopPostBracelet }</li>
												<c:if test="${post.pawnshopPostDiamond != null}">
													<li class="col-md-6">เพรช : ${post.pawnshopPostDiamond }</li>
												</c:if>
												<c:if test="${post.pawnshopPostPackage != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
												</c:if>
											</c:if>

											<!-- Electronic tv -->
											<c:if test="${post.pawnshopPostRemote != null}">
												<li class="col-md-6"><span class="fas fa-check"
													aria-hidden="true"> </span> Remote</li>
											</c:if>


											<!-- Watch,Electronic -->
											<c:if test="${post.pawnshopPostWarranty != null}">
												<li class="col-md-6"><span class="fas fa-check"
													aria-hidden="true"> </span> การประกันสินค้า</li>
											</c:if>
										</ul>
									</div>
									<c:if test="${post.pawnshopPostStatus == 'coming'}">
										<form action="pawnshop-complete-post.html" method="post">
											<input type="hidden" name="pawnshopPostId"
												value="${post.pawnshopPostId}"><input type="hidden"
												name="status" value="complete">
											<button class="item-popup-tocart" type="submit">ขายแล้ว</button>
										</form>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>


	</section> --%>
</body>
</html>