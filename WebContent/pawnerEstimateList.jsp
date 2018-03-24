<!-- 
// page : pawner-estimate-list
// version : 1.0
// task : --
// edit by : 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawner-estimate-list</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<!-- -------------------------------------------------------------------------- -->
	<section>
	<div class="container">
		<table border="1">
			<c:forEach items="${ppList}" var="pp">
				<tr>
					<td>${pp.price}</td>
					<td>${pp.proposeDate}</td>
					<td>${pp.status}</td>
					<td>${pp.pawnshopId.pawnshopName}</td>
					<form:form action="approveProposePrice.do" method="post"
						commandName="proposePrice">
						<form:hidden path="pawnshopId.pawnshopId"
							value="${pp.pawnshopId.pawnshopId}" />
						<form:hidden path="goldId.goldId" value="${pp.goldId.goldId}" />
						<form:hidden path="proposePriceId" value="${pp.proposePriceId}" />
						<form:hidden path="price" value="${pp.price}" />
						<form:hidden path="status" value="Approved" />
						
						
						
						
						<td><button type="submit">Approved</button></td>
					</form:form>
				</tr>
			</c:forEach>
		</table>
	</div>
	</section>
</body>
</html>