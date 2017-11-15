<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		<a href="listPawner.do">Back To Pawner</a>
		<c:forEach items="${goldList}" var="gold">
			<tr>
				<td>${gold.goldId}</td>

				<td>${gold.goldBrand}</td>
				<td>${gold.goldDetail}</td>
				<td>${gold.goldName}</td>
				<td>${gold.goldPic}</td>
				<td>${gold.goldPure}</td>
				<td>${gold.goldWeight}</td>
				<td><a href="editGold.do?id=${gold.goldId}">Edit</a></td>
				<td><a href="deleteGold.do?id=${gold.goldId}">Remove</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="goldForm.do">Add New gold</a>s
</body>
</html>