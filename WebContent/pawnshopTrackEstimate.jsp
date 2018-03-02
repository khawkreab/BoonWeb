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
			<table border="1">
				<c:forEach items="${trackMyEstimate}" var="track">

					<ul>

						<c:if test="${track.estimateStatus != 'complete'}">



							<!-- Watch,Electronic -->
							<c:if test="${track.pawnerPostId.pawnerPostProduction != null}">
								<li>Production : ${track.pawnerPostId.pawnerPostProduction}</li>
								<li>Model : ${track.pawnerPostId.pawnerPostModel}</li>
								<li>Serial : ${track.pawnerPostId.pawnerPostSerial}</li>
								<li>Warranty : ${track.pawnerPostId.pawnerPostWarranty}</li>
								<li>Purchase : ${track.pawnerPostId.pawnerPostPurchase }</li>
							</c:if>

							<!-- Gold -->
							<c:if test="${track.pawnerPostId.pawnerPostProduction != null}">
								<li>Pure : ${track.pawnerPostId.pawnerPostPure  }</li>
								<li>Weigh : ${track.pawnerPostId.pawnerPostWeigh }</li>
								<li>Category : ${track.pawnerPostId.pawnerPostCategory }</li>
							</c:if>

							<!-- Watch -->
							<c:if test="${track.pawnerPostId.pawnerPostCase != null}">
								<li>Case : ${track.pawnerPostId.pawnerPostCase }</li>
								<li>Bracelet : ${track.pawnerPostId.pawnerPostBracelet }</li>
								<c:if test="${track.pawnerPostId.pawnerPostDiamond != null}">
									<li>Diamond : ${track.pawnerPostId.pawnerPostDiamond }</li>
								</c:if>
								<c:if test="${track.pawnerPostId.pawnerPostPackage != null}">
									<li>Package : ${track.pawnerPostId.pawnerPostPackage }</li>
								</c:if>
							</c:if>

							<!-- Electronic tv com telephone -->
							<c:if test="${track.pawnerPostId.pawnerPostSize != null}">
								<li>Size : ${track.pawnerPostId.pawnerPostSize }</li>
							</c:if>

							<!-- Electronic camera com telephone -->
							<c:if test="${track.pawnerPostId.pawnerPostBattery != null}">
								<li>Battery : ${track.pawnerPostId.pawnerPostBattery }</li>
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
							<c:if test="${track.pawnerPostId.pawnerPostRam != null}">
								<li>Ram : ${track.pawnerPostId.pawnerPostRam }</li>
							</c:if>


							<!-- Electronic telephone-->
							<li>Description : ${track.pawnerPostId.pawnerPostDescription }</li>


							<li>${track.pawnerPostId.pawnerPostItemType}</li>
							<li>${track.pawnerPostId.pawnerPostName}</li>
							<li>${track.pawnerPostId.pawnerPostDescription}</li>
							<li>${track.pawnerPostId.pawnerPostBrand}</li>
							<li>${track.pawnerPostId.pawnerPostPure}</li>
							<li>${track.pawnerPostId.pawnerPostWeigh}</li>
							<li>${track.pawnerPostId.pawnerPostCategory}</li>
							<li>${track.pawnerPostId.pawnerPostProduction}</li>
							<li>${track.pawnerPostId.pawnerPostModel}</li>
							<li>${track.pawnerPostId.pawnerPostSerial}</li>
							<li>${track.pawnerPostId.pawnerPostCase}</li>
							<li>${track.pawnerPostId.pawnerPostBracelet}</li>
							<li>${track.pawnerPostId.pawnerPostDiamond}</li>
							<li>${track.pawnerPostId.pawnerPostPackage}</li>
							<li>${track.pawnerPostId.pawnerPostWarranty}</li>

							<li>${track.pawnerPostId.pawnerPostSize}</li>
							<li>${track.pawnerPostId.panwePostRemote}</li>
							<li>${track.pawnerPostId.pawnerPostCapacity}</li>
							<li>${track.pawnerPostId.pawnerPostPurchase}</li>
							<li>${track.pawnerPostId.pawnerPostBattery}</li>
							<li>${track.pawnerPostId.pawnerPostTypeCamera}</li>
							<li>${track.pawnerPostId.pawnerPostCameraLen}</li>
							<li>${track.pawnerPostId.pawnerPostHarddisk}</li>
							<li>${track.pawnerPostId.pawnerPostRam}</li>
							<li>${track.pawnerPostId.pawnerPostDevice}</li>


							<li>${track.estimatePriceMin}</li>
							<li>${track.estimatePriceMax}</li>
							<li>${track.estimateDate}</li>
							<li>${track.estimateAccessDate}</li>
							
							
							
							
							<li>${track.pawnerPostId.pawnerId.pawnerFirstname}</li>
							<li>${track.pawnerPostId.pawnerId.pawnerLastname}</li>
							<li>${track.pawnerPostId.pawnerId.pawnerEmail}</li>
							<li>${track.pawnerPostId.pawnerId.pawnerSex}</li>
							
							<li>${track.estimateStatus}</li>



							<c:if test="${track.estimateStatus == 'Approve'}">
								<form action="pawnshop-estimate-approve.html" method="post">
									<input type="hidden" name="estimateId"
										value="${track.estimateId}"> <input type="hidden"
										name="pawnerPostId" value="${track.pawnerPostId.pawnerPostId}">
									<button type="submit">Approve</button>
								</form>
							</c:if>

						</c:if>

					</ul>

				</c:forEach>
			</table>
		</div>
	</section>
</body>
</html>