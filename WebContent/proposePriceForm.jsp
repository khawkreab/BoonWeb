<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Propose Price Form</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">

			<form:form method="post" action="savaProposePrice.do"
				commandName="proposePrice">
				<form:hidden path="pawnshopId.pawnshopId" />
				<form:hidden path="goldId" />
				<form:hidden path="proposePriceId" />
				<br />
		Price : <form:input path="price" />
				<br />
				<input type="submit" value="Save" />
			</form:form>
		</div>
	</section>
</body>
</html>