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
<link rel="icon" href="img/logos/Artboard.png">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawnshop-post</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div class="">
			<h1>ประวัติการปล่อยของหลุดจำนำ</h1>
			<em></em>
		</div>
	</div>
	<section>
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
											<c:if test="${post.pawnshopPostModel != null}">
												<li class="col-md-6">รุ่น : ${post.pawnshopPostModel}</li>
												<li class="col-md-6">หมายเลขประจำเครื่อง :
													${post.pawnshopPostSerial}</li>
												<li class="col-md-6">ปีที่ซื้อสินค้า :
													${post.pawnshopPostPurchase }</li>
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
												value="${post.pawnshopPostId}"><input
												type="hidden" name="status" value="complete">
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


	</section>



	<script type="text/javascript">
		$('div span a').click(function() {
			$(this).text(function(i, old) {
				return old == 'more' ? 'less' : 'more';
			});
		});
	</script>
</body>
</html>