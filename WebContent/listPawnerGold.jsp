<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Insert title here</title>

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
<table border="1">
		<c:forEach items="${goldList}" var="gold">
			<tr>
				<td>${gold.goldId}</td>
				<td>${gold.goldPic}</td>
				<td>${gold.pawner.firstName}</td>
				<td>${gold.goldBrand}</td>
				<td>${gold.goldDetail}</td>
				<td>${gold.goldName}</td>
				<td>${gold.goldPure}</td>
				<td>${gold.goldWeight}</td>
				<td><a href="deleteGold.do?id=${gold.goldId}">Remove</a></td>
				<td><a href="listProposeBygold.do?goldId=${gold.goldId}">list Propose</a></td>
			</tr>
		</c:forEach>
	</table>
		</div>
	</section>
</body>
</html>