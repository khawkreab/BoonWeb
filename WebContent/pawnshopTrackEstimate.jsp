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
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawnshop-track-estimate</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />


	<section>
		<div class="container">
			<div class="history-filter">
				<div class="d-flex">
					<div class="mr-auto p-2">สถานะของการปนะเมิณ</div>
				</div>
			</div>
		</div>
		<c:forEach items="${trackMyEstimate}" var="track">
			<div class="container">
				<div class="history-main">
					<div class="d-flex history-title">

						<div class="ml-auto p-2">
							<span>${track.pawnerPostId.pawnerPostItemType}</span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">

								<span class="history-img"><img class="img-responsive"
									src="images/imageUpload/${track.pawnerPostId.pawnerPostPicture}"
									width="300" /></span>
							</div>

							<div class="col-sm-7 single-top-in">
								<div class="span_2_of_a1 simpleCart_shelfItem">
									<h3>${track.pawnerPostId.pawnerPostName }-${track.pawnerPostId.pawnerPostBrand }</h3>
									<p class="in-para">รายละเอียด</p>
									<div class="col-md-12 single-top-in">
										<div class="span_2_of_a1 simpleCart_shelfItem">
											<div class="price_single">
												<div class="preview">
													<ul class="row">
														<!-- Watch,Electronic -->
														<c:if test="${track.pawnerPostId.pawnerPostModel != null}">
															<li class="col-md-6">รุ่น :
																${track.pawnerPostId.pawnerPostModel}</li>
															<li class="col-md-6">หมายเลขประจำเครื่อง :
																${track.pawnerPostId.pawnerPostSerial}</li>
															<li class="col-md-6">ปีที่ซื้อสินค้า :
																${track.pawnerPostId.pawnerPostPurchase }</li>
															<li class="col-md-6">ปีที่ผลิตสินค้า :
																${track.pawnerPostId.pawnerPostProduction}</li>
														</c:if>

														<!-- Gold -->
														<c:if test="${track.pawnerPostId.pawnerPostPure != null}">
															<li class="col-md-6">ยี่ห้อ :
																${track.pawnerPostId.pawnerPostBrand }</li>
															<li class="col-md-6">ความบริสุทธ์ :
																${track.pawnerPostId.pawnerPostPure  }</li>
															<li class="col-md-6">น้ำหนัก :
																${track.pawnerPostId.pawnerPostWeigh }</li>
															<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
																${track.pawnerPostId.pawnerPostCategory }</li>
														</c:if>


														<!-- Electronic tv com telephone -->
														<c:if test="${track.pawnerPostId.pawnerPostSize != null}">
															<li class="col-md-6">ขนาดหน้าจอ :
																${track.pawnerPostId.pawnerPostSize }</li>
														</c:if>

														<!-- Electronic camera com telephone -->
														<c:if
															test="${track.pawnerPostId.pawnerPostBattery != null}">
															<li class="col-md-6"><span class="fas fa-check"
																aria-hidden="true"> </span>Battery</li>
														</c:if>

														<!-- Electronic com telephone -->
														<c:if
															test="${track.pawnerPostId.pawnerPostHarddisk != null}">
															<li class="col-md-6">Harddisk :
																${track.pawnerPostId.pawnerPostHarddisk }</li>
														</c:if>

														<!-- Electronic com-->
														<c:if test="${track.pawnerPostId.pawnerPostRam != null}">
															<li class="col-md-6">Ram : ${track.pawnerPostId.pawnerPostRam }</li>
														</c:if>

														<!-- Watch -->
														<c:if test="${track.pawnerPostId.pawnerPostCase != null}">
															<li class="col-md-6">ชนิดของหน้าปัด :
																${track.pawnerPostId.pawnerPostCase }</li>
															<li class="col-md-6">ชนิดของสายรัดข้อมือ :
																${track.pawnerPostId.pawnerPostBracelet }</li>
															<c:if test="${post.pawnerPostDiamond != null}">
																<li class="col-md-6">เพรช :
																	${track.pawnerPostId.pawnerPostDiamond }</li>
															</c:if>
															<c:if
																test="${track.pawnerPostId.pawnerPostPackage != null}">
																<li class="col-md-6"><span class="fas fa-check"
																	aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
															</c:if>
														</c:if>

														<!-- Electronic tv -->
														<c:if test="${track.pawnerPostId.panwePostRemote != null}">
															<li class="col-md-6"><span class="fas fa-check"
																aria-hidden="true"> </span> Remote</li>
														</c:if>


														<!-- Watch,Electronic -->
														<c:if
															test="${track.pawnerPostId.pawnerPostWarranty != null}">
															<li class="col-md-6"><span class="fas fa-check"
																aria-hidden="true"> </span> การประกันสินค้า</li>
														</c:if>
														<li>Description
															:${track.pawnerPostId.pawnerPostDescription }</li>
													</ul>
												</div>
											</div>
											<ul class="row">
												<li class="col-md-6">Price Min: ${track.estimatePriceMin }</li>
												<li class="col-md-6">Price Max: ${track.estimatePriceMax }</li>
												<li class="col-md-6">Estimate Date: ${track.estimateDate}</li>
												<li class="col-md-6">Access Date: ${track.estimateAccessDate}</li>
												<%-- <li>Status   : ${track.estimateStatus }</li>   --%>

												<!-- Status -->
												<c:if test="${track.estimateStatus == 'complete'}">
													<li class="col-md-6">Status : <span class="badge badge-success">Complete</span>
													</li>
												</c:if>

												<c:if test="${track.estimateStatus == 'waiting'}">
													<li class="col-md-6">Status : <span class="badge badge-danger">Waiting</span>
													</li>
												</c:if>

												<c:if test="${track.estimateStatus == 'process'}">
													<li class="col-md-6">Status : <span class="badge badge-warning">Process</span>
													</li>
												</c:if>
												<c:if test="${track.estimateStatus == 'proceed'}">
													<li class="col-md-6">Status : <span class="badge badge-warning">Process</span>
													</li>
												</c:if>

												<c:if test="${track.estimateStatus == 'approve'}">
													<li class="col-md-6">Status : <span class="badge badge-primary">Approve</span>
													</li>
												</c:if>

												<c:if test="${track.estimateStatus == 'denei'}">
													<li class="col-md-6">Status : <span class="badge badge-danger">Denei</span>
													</li>
												</c:if>
												<c:if test="${track.estimateStatus == 'approve'}">
													<form action="pawnshop-estimate-approve.html" method="post">
														<input type="hidden" name="estimateId"
															value="${track.estimateId}"> <input type="hidden"
															name="pawnerPostId"
															value="${track.pawnerPostId.pawnerPostId}">
														<button type="submit">Approve</button>
													</form>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section>
</body>
</html>