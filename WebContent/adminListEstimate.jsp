<!-- 
// page : pawnshop-estimate-list
// version : 1.0
// task : list Complete
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
<title>admin-list-estimate</title>

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
			<c:forEach items="${adminEList}" var="adEstimate">
				<ul>
				
				
				<li>${adEstimate.pawnerPostId.pawnerPostItemType}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostName}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostDescription}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostBrand}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostPure}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostWeigh}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostCategory}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostProduction}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostModel}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostSerial}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostCase}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostBracelet}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostDiamond}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostPackage}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostWarranty}</li>
				
				<li>${adEstimate.pawnerPostId.pawnerPostSize}</li>
				<li>${adEstimate.pawnerPostId.panwePostRemote}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostCapacity}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostPurchase}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostBattery}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostTypeCamera}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostCameraLen}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostHarddisk}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostRam}</li>
				<li>${adEstimate.pawnerPostId.pawnerPostDevice}</li>
					
					<li>${adEstimate.estimatePriceMin}</li>
					<li>${adEstimate.estimatePriceMax}</li>
					<li>${adEstimate.estimateDate}</li>
					<li>${adEstimate.estimateAccessDate}</li>
					<li>${adEstimate.estimateStatus}</li>
					
			
				
				</ul>
				
			</c:forEach>
		</table>
	</div>
	</section>
</body>
</html>