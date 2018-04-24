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

.bill {
	border: 1px solid;
}
</style>
</head>

<body>
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">
			<div class="history-filter">
				<div class="d-flex">
					<div class="mr-auto p-2">ประวัติการจำนำ</div>
				</div>
			</div>
		</div>
		<c:forEach items="${pawnerPosts}" var="post">
			<div class="container">
				<div class="history-main">
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
								value="${post.pawnerPostDate }" />
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
										src="images/imageUpload/${post.pawnerPostPicture }" />
								</div>
							</div>
							<div class="col-md-7 single-top-in">
								<div class="span_2_of_a1 simpleCart_shelfItem">
									<h3>${post.pawnerPostName }-${post.pawnerPostBrand }</h3>
									<p class="in-para">รายละเอียด</p>
									<div class="price_single">
										<div class="preview">
											<ul class="row">
												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostModel != null}">
													<li class="col-md-6">รุ่น : ${post.pawnerPostModel}</li>
													<li class="col-md-6">หมายเลขประจำเครื่อง :
														${post.pawnerPostSerial}</li>
													<li class="col-md-6">ปีที่ซื้อสินค้า :
														${post.pawnerPostPurchase }</li>
													<li class="col-md-6">ปีที่ผลิตสินค้า :
														${post.pawnerPostProduction}</li>
												</c:if>

												<!-- Gold -->
												<c:if test="${post.pawnerPostPure != null}">
													<li class="col-md-6">ยี่ห้อ : ${post.pawnerPostBrand }</li>
													<li class="col-md-6">ความบริสุทธ์ :
														${post.pawnerPostPure }</li>
													<li class="col-md-6">น้ำหนัก : ${post.pawnerPostWeigh }</li>
													<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
														${post.pawnerPostCategory }</li>
												</c:if>


												<!-- Electronic tv com telephone -->
												<c:if test="${post.pawnerPostSize != null}">
													<li class="col-md-6">ขนาดหน้าจอ :
														${post.pawnerPostSize }</li>
												</c:if>

												<!-- Electronic camera com telephone -->
												<c:if test="${post.pawnerPostBattery != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span>Battery</li>
												</c:if>

												<!-- Electronic com telephone -->
												<c:if test="${post.pawnerPostHarddisk != null}">
													<li class="col-md-6">Harddisk :
														${post.pawnerPostHarddisk }</li>
												</c:if>

												<!-- Electronic com-->
												<c:if test="${post.pawnerPostRam != null}">
													<li class="col-md-6">Ram : ${post.pawnerPostRam }</li>
												</c:if>

												<!-- Watch -->
												<c:if test="${post.pawnerPostCase != null}">
													<li class="col-md-6">ชนิดของหน้าปัด :
														${post.pawnerPostCase }</li>
													<li class="col-md-6">ชนิดของสายรัดข้อมือ :
														${post.pawnerPostBracelet }</li>
													<c:if test="${post.pawnerPostDiamond != null}">
														<li class="col-md-6">เพรช : ${post.pawnerPostDiamond }</li>
													</c:if>
													<c:if test="${post.pawnerPostPackage != null}">
														<li class="col-md-6"><span class="fas fa-check"
															aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
													</c:if>
												</c:if>

												<!-- Electronic tv -->
												<c:if test="${post.panwePostRemote != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> Remote</li>
												</c:if>


												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostWarranty != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> การประกันสินค้า</li>
												</c:if>
											</ul>
										</div>
									</div>
									<h4 class="quick">รายละเอียดเพิ่มเติม</h4>
									<p class="quick_desc">${post.pawnerPostDescription }</p>
									<c:if test="${post.pawnerPostStatus == 'complete'}">
										<div class="line margin-lr-1"></div>
										<div class="history-show-estimate">
											<div id="showlist${post.pawnerPostId}" class="collapse">
												<div class="row">
													<div class="col-md-6">Pawn Shop</div>
													<div class="col-md-2">min</div>
													<div class="col-md-2">max</div>
													<div class="col-md-2">*****</div>
												</div>
												<ul>
													<c:forEach items="${estimatesList}" var="estimate">
														<c:if
															test="${estimate.pawnerPostId.pawnerPostId == post.pawnerPostId }">

															<li>
																<div class="row">
																	<div class="col-md-6">
																		${estimate.pawnshopId.pawnshopName}</div>
																	<div class="col-md-2">${estimate.estimatePriceMin}</div>
																	<div class="col-md-2">${estimate.estimatePriceMax}</div>
																	<div class="col-md-2"></div>
																</div>
															</li>
														</c:if>
													</c:forEach>
												</ul>
											</div>
										</div>
									</c:if>
								</div>
							</div>
						</div>
					</div>
					<c:if test="${post.pawnerPostStatus == 'approve'}">
					
					<a href="#" id="${pawnshopPost.pawnshopPostId}"
									onClick="select(this); return false;"
									data-cart='{"pawnshopPostId":"${post.pawnerPostId}","pawnshopPostName":"${post.pawnerPostName }"}'
									class="hvr-skew-backward" 	>พิมใบแสดงการจำนำ</a>
					</c:if>
				</div>
			</div>
		</c:forEach>

	</section>

<script>
function select(e) {
    
    var cart = {}
    cart = JSON.parse(e.getAttribute('data-cart'))
    
    document.getElementById("nan").innerHTML = cart.pawnshopPostName
    console.log("this show pawnshopPostName => "+cart.pawnshopPostName)
    window.print();
}
</script>

	<div class="line margin-lr-1"></div>
	<div class="printable">
		<div class="popup" data-popup="popup">
			<div>
				<p style="font-size: 32px; border-bottom: 1px solid;">ใบยืนยันการจำนำ</p>
				<div class="row">
					<div class="col-sm-6">
						<p>ที่อยู๋โรงรับจำนำ</p>
						<p>ในนี้ใสที่อยู๋โรงรับจำนำที่ get from database</p>
					</div>
					<div class="col-sm-6">
						<table id="meta">
							<tr>
								<td id="nan">รหัสโพส</td>
								<td>
									<div>xxx</div>
								</td>
							</tr>
							<tr>
								<td>ชื่อโพส</td>
							</tr>
							<tr>
								<td>วันที่ยืนยันราคา</td>
								<td>
									<div>xxx</div>
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
							<div class="delete-wpr">
								<p>pawnerPostItemType</p>
							</div>
						</td>
						<td class="description">
							<p>เอารายละเอียดทั้งหมดมาใส</p>
						</td>
						<td>
							<p>xxx</p>
						</td>
						<td>
							<p>$650.00</p>
						</td>
						<td><span>$650.00</span></td>
					</tr>
					<tr>
						<td colspan="5">
							<p>รูปสินค้า</p>
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