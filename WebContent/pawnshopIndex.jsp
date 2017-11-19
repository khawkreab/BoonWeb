<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Bounyong</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />


	<section>
		<div class="container">

			<!--  List Gold -->
			<table border="1">
				<c:forEach items="${listGold}" var="gold">
					<tr>
						<td>${gold.goldPic}</td>
						<td>${gold.pawner.firstName}</td>
						<td>${gold.goldBrand}</td>
						<td>${gold.goldDetail}</td>
						<td>${gold.goldName}</td>
						<td>${gold.goldPure}</td>
						<td>${gold.goldWeight}</td>
						<td><a href="proposePriceForm.do?goldId=${gold.goldId}">Propose
								Price</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</section>
</body>
</html>