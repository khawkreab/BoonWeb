<!-- 
// page : pawnshop-estimate-list
// version : 1.0
// task : list Complete
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawnshop-estimate-history</title>

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
					<div class="mr-auto p-2">Estimate History</div>

				</div>
			</div>
		</div>
		<c:forEach items="${eList}" var="estimate">
			<div class="container">
		 
					<div class="history-main">
						<div class="d-flex history-title">

							<div class="ml-auto p-2">
								<span>${estimate.pawnerPostId.pawnerPostItemType}</span>
							</div>
						</div>
						<div class="history-body">
							<div class="row">
								<div class="col-sm-5">

									<span class="history-img"><img class=""
										src="img/gold.png" width="300" /></span>
								</div>
								<div class="col-sm-7">

									<span class="history-name">${estimate.pawnerPostId.pawnerPostName}
										${estimate.pawnerPostId.pawnerPostBrand}
										${estimate.pawnerPostId.pawnerPostTypeCamera}
										${estimate.pawnerPostId.pawnerPostCameraLen} </span>
									<div class="history-detail">
										<ul>

											<!-- Watch,Electronic -->
											<c:if test="${estimate.pawnerPostId.pawnerPostModel != null}">
												<li>Model : ${estimate.pawnerPostId.pawnerPostModel}</li>
												<li>Serial : ${estimate.pawnerPostId.pawnerPostSerial}</li>
											</c:if>

											<c:if
												test="${estimate.pawnerPostId.pawnerPostProduction != null}">
												<li>Production :
													${estimate.pawnerPostId.pawnerPostProduction}</li>
											</c:if>

											<c:if
												test="${estimate.pawnerPostId.pawnerPostWarranty != null}">
												<li>Warranty :
													${estimate.pawnerPostId.pawnerPostWarranty}</li>
											</c:if>
											<c:if
												test="${estimate.pawnerPostId.pawnerPostPurchase != null}">
												<li>Purchase :
													${estimate.pawnerPostId.pawnerPostPurchase}</li>
											</c:if>

											<!-- Gold -->
											<c:if test="${estimate.pawnerPostId.pawnerPostPure != null}">
												<li>Pure : ${estimate.pawnerPostId.pawnerPostPure  }</li>
												<li>Weigh : ${estimate.pawnerPostId.pawnerPostWeigh }</li>
												<li>Category :
													${estimate.pawnerPostId.pawnerPostCategory }</li>
											</c:if>

											<!-- Watch -->
											<c:if test="${estimate.pawnerPostId.pawnerPostCase != null}">
												<li>Case : ${estimate.pawnerPostId.pawnerPostCase }</li>
												<li>Bracelet :
													${estimate.pawnerPostId.pawnerPostBracelet }</li>
												<c:if
													test="${estimate.pawnerPostId.pawnerPostDiamond != null}">
													<li>Diamond :
														${estimate.pawnerPostId.pawnerPostDiamond }</li>
												</c:if>
												<c:if
													test="${estimate.pawnerPostId.pawnerPostPackage != null}">
													<li>Package :
														${estimate.pawnerPostId.pawnerPostPackage}</li>
												</c:if>
											</c:if>

											<!-- Electronic tv com telephone -->
											<c:if test="${estimate.pawnerPostId.pawnerPostSize != null}">
												<li>Size : ${estimate.pawnerPostId.pawnerPostSize }</li>
											</c:if>

											<!-- Electronic camera com telephone -->
											<c:if
												test="${estimate.pawnerPostId.pawnerPostBattery != null}">
												<li>Battery :
													${estimate.pawnerPostId.pawnerPostBattery}</li>
											</c:if>

											<!-- Electronic com telephone -->
											<c:if
												test="${estimate.pawnerPostId.pawnerPostHarddisk != null}">
												<li>Harddisk :
													${estimate.pawnerPostId.pawnerPostHarddisk }</li>
											</c:if>

											<!-- Electronic tv -->
											<c:if test="${estimate.pawnerPostId.panwePostRemote != null}">
												<li>Remote : ${estimate.pawnerPostId.panwePostRemote }</li>
											</c:if>

											<!-- Electronic com-->
											<c:if test="${estimate.pawnerPostId.pawnerPostRam!= null}">
												<li>Ram : ${estimate.pawnerPostId.pawnerPostRam }</li>
											</c:if>


											<!-- Electronic telephone-->
											<li>Description :
												${estimate.pawnerPostId.pawnerPostDescription }</li>

											<li>Price Min: ${estimate.estimatePriceMin }</li>
											<li>Price Max: ${estimate.estimatePriceMax }</li>
											<li>Estimate Date: ${estimate.estimateDate}</li>
											<li>Access Date: ${estimate.estimateAccessDate}</li>
											<%-- <li>Status   : ${estimate.estimateStatus }</li>   --%>

											<!-- Status -->
											<c:if test="${estimate.estimateStatus == 'complete'}">
												<li>Status : <span class="badge badge-success">Complete</span>
												</li>
											</c:if>

											<c:if test="${estimate.estimateStatus == 'waiting'}">
												<li>Status : <span class="badge badge-danger">Waiting</span>
												</li>
											</c:if>

											<c:if test="${estimate.estimateStatus == 'process'}">
												<li>Status : <span class="badge badge-warning">Process</span>
												</li>
											</c:if>
											<c:if test="${estimate.estimateStatus == 'proceed'}">
												<li>Status : <span class="badge badge-warning">Process</span>
												</li>
											</c:if>

											<c:if test="${estimate.estimateStatus == 'approve'}">
												<li>Status : <span class="badge badge-primary">Approve</span>
												</li>
											</c:if>




											<li>
												<h3>Post By</h3>
											</li>
											<li>Pawner Name :<span class="badge badge-default">
													${estimate.pawnerPostId.pawnerId.pawnerFirstname}
													${estimate.pawnerPostId.pawnerId.pawnerLastname}</span></li>
											<li>Pawner Mail :<span class="badge badge-default">
													${estimate.pawnerPostId.pawnerId.pawnerEmail} </span></li>



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