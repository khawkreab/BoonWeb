<!-- 
// page : pawnshop-estimate-list
// version : 1.0
// task : list track
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
<title>pawnshop-estimate-list</title>

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
			<c:forEach items="${eList}" var="estimate">
				<ul>
				<c:if test = "${track.estimateStatus == 'complete'}">
				
				<li>${estimate.pawnerPostId.pawnerPostItemType}</li>
				<li>${estimate.pawnerPostId.pawnerPostName}</li>
				<li>${estimate.pawnerPostId.pawnerPostDescription}</li>
				<li>${estimate.pawnerPostId.pawnerPostBrand}</li>
				<li>${estimate.pawnerPostId.pawnerPostPure}</li>
				<li>${estimate.pawnerPostId.pawnerPostWeigh}</li>
				<li>${estimate.pawnerPostId.pawnerPostCategory}</li>
				<li>${estimate.pawnerPostId.pawnerPostProduction}</li>
				<li>${estimate.pawnerPostId.pawnerPostModel}</li>
				<li>${estimate.pawnerPostId.pawnerPostSerial}</li>
				<li>${estimate.pawnerPostId.pawnerPostCase}</li>
				<li>${estimate.pawnerPostId.pawnerPostBracelet}</li>
				<li>${estimate.pawnerPostId.pawnerPostDiamond}</li>
				<li>${estimate.pawnerPostId.pawnerPostPackage}</li>
				<li>${estimate.pawnerPostId.pawnerPostWarranty}</li>
				
				<li>${estimate.pawnerPostId.pawnerPostSize}</li>
				<li>${estimate.pawnerPostId.panwePostRemote}</li>
				<li>${estimate.pawnerPostId.pawnerPostCapacity}</li>
				<li>${estimate.pawnerPostId.pawnerPostPurchase}</li>
				<li>${estimate.pawnerPostId.pawnerPostBattery}</li>
				<li>${estimate.pawnerPostId.pawnerPostTypeCamera}</li>
				<li>${estimate.pawnerPostId.pawnerPostCameraLen}</li>
				<li>${estimate.pawnerPostId.pawnerPostHarddisk}</li>
				<li>${estimate.pawnerPostId.pawnerPostRam}</li>
				<li>${estimate.pawnerPostId.pawnerPostDevice}</li>
					
					<li>${estimate.estimatePriceMin}</li>
					<li>${estimate.estimatePriceMax}</li>
					<li>${estimate.estimateDate}</li>
					<li>${estimate.estimateAccessDate}</li>
					<li>${estimate.estimateStatus}</li>
					
				</c:if>
				</ul>
				
			</c:forEach>
		</table>
	</div>
	</section>
</body>
</html>