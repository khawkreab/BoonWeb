<!-- 
// page : pawnshop-Track-estimate
// version : 1.0
// task : liSt & submit complete
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
						<li>${track.estimateStatus}</li>



						<c:if test="${track.estimateStatus == 'Approve'}">
							<form action="pawnshop-estimate-approve.html" method="post">
								<input type="hidden" name="estimateId" value="${track.estimateId}"> 
								<input type="hidden" name="pawnerPostId" value="${track.pawnerPostId.pawnerPostId}">
								<button type="submit">Approve</button>
							</form>
						</c:if>
						
					</c:if>

				</ul>

				<ul>



				</ul>

			</c:forEach>
		</table>
	</div>
	</section>
</body>
</html>