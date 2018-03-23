<!-- 
// page : pawnshop-Track-estimate
// version : 1.2
// task : liSt pawner 
// edit by : Kwin
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
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
					<div class="mr-auto p-2">Track Estimate</div>

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
										src="images/uploadImage/${track.pawnerPostId.pawnerPostPicture}" width="300" /></span>
								</div>
								<div class="col-sm-7">

									<span class="history-name">${track.pawnerPostId.pawnerPostName}
										${track.pawnerPostId.pawnerPostBrand}
										${track.pawnerPostId.pawnerPostTypeCamera}
										${track.pawnerPostId.pawnerPostCameraLen} </span>
									<div class="history-detail">
										<ul>

											<!-- Watch,Electronic -->
											<c:if test="${track.pawnerPostId.pawnerPostModel != null}">
												<li>Model : ${track.pawnerPostId.pawnerPostModel}</li>
												<li>Serial :${track.pawnerPostId.pawnerPostSerial}</li>
											</c:if>

											<c:if
												test="${track.pawnerPostId.pawnerPostProduction != null}">
												<li>Production :
													${track.pawnerPostId.pawnerPostProduction}</li>
											</c:if>

											<c:if test="${track.pawnerPostId.pawnerPostWarranty != null}">
												<li>Warranty : ${track.pawnerPostId.pawnerPostWarranty}</li>
											</c:if>
											<c:if test="${track.pawnerPostId.pawnerPostPurchase != null}">
												<li>Purchase : ${track.pawnerPostId.pawnerPostPurchase}</li>
											</c:if>

											<!-- Gold -->
											<c:if test="${track.pawnerPostId.pawnerPostPure != null}">
												<li>Pure : ${track.pawnerPostId.pawnerPostPure  }</li>
												<li>Weigh : ${track.pawnerPostId.pawnerPostWeigh }</li>
												<li>Category :${track.pawnerPostId.pawnerPostCategory }</li>
											</c:if>

											<!-- Watch -->
											<c:if test="${track.pawnerPostId.pawnerPostCase != null}">
												<li>Case : ${track.pawnerPostId.pawnerPostCase }</li>
												<li>Bracelet : ${track.pawnerPostId.pawnerPostBracelet }</li>
												<c:if test="${track.pawnerPostId.pawnerPostDiamond != null}">
													<li>Diamond : ${track.pawnerPostId.pawnerPostDiamond }</li>
												</c:if>
												<c:if test="${track.pawnerPostId.pawnerPostPackage != null}">
													<li>Package : ${track.pawnerPostId.pawnerPostPackage}</li>
												</c:if>
											</c:if>

											<!-- Electronic tv com telephone -->
											<c:if test="${track.pawnerPostId.pawnerPostSize != null}">
												<li>Size : ${track.pawnerPostId.pawnerPostSize }</li>
											</c:if>

											<!-- Electronic camera com telephone -->
											<c:if test="${track.pawnerPostId.pawnerPostBattery != null}">
												<li>Battery : ${track.pawnerPostId.pawnerPostBattery}</li>
											</c:if>

											<!-- Electronic com telephone -->
											<c:if test="${track.pawnerPostId.pawnerPostHarddisk != null}">
												<li>Harddisk : ${track.pawnerPostId.pawnerPostHarddisk }</li>
											</c:if>

											<!-- Electronic tv -->
											<c:if test="${track.pawnerPostId.panwePostRemote != null}">
												<li>Remote : ${track.pawnerPostId.panwePostRemote }</li>
											</c:if>

											<!-- Electronic com-->
											<c:if test="${track.pawnerPostId.pawnerPostRam!= null}">
												<li>Ram : ${track.pawnerPostId.pawnerPostRam }</li>
											</c:if>


											<!-- Electronic telephone-->
											<li>Description :
												${track.pawnerPostId.pawnerPostDescription }</li>

											<li>Price Min: ${track.estimatePriceMin }</li>
											<li>Price Max: ${track.estimatePriceMax }</li>
											<li>Estimate Date: ${track.estimateDate}</li>
											<li>Access Date: ${track.estimateAccessDate}</li>
											<%-- <li>Status   : ${track.estimateStatus }</li>   --%>

											<!-- Status -->
											<c:if test="${track.estimateStatus == 'complete'}">
												<li>Status : <span class="badge badge-success">Complete</span>
												</li>
											</c:if>

											<c:if test="${track.estimateStatus == 'waiting'}">
												<li>Status : <span class="badge badge-danger">Waiting</span>
												</li>
											</c:if>

											<c:if test="${track.estimateStatus == 'process'}">
												<li>Status : <span class="badge badge-warning">Process</span>
												</li>
											</c:if>
											<c:if test="${track.estimateStatus == 'proceed'}">
												<li>Status : <span class="badge badge-warning">Process</span>
												</li>
											</c:if>

											<c:if test="${track.estimateStatus == 'approve'}">
												<li>Status : <span class="badge badge-primary">Approve</span>
												</li>
											</c:if>



											<c:if test="${track.estimateStatus == 'Approve'}">
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
		</c:forEach>


	</section>
</body>
</html>