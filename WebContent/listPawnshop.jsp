<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> List  Pawnshop</title>
</head>
<body>
<table border="1">
		<c:forEach items="${pawnshopList}" var="pawnshop">
			<tr>
				<td>${pawnshop.pawnshopId}</td>
				<td>${pawnshop.userName}</td>
				<td>${pawnshop.password}</td>
				<td>${pawnshop.pawnshopName}</td>
				<td>${pawnshop.credential}</td>
				<td><a href="editPawnshop.do?id=${pawnshop.pawnshopId}">Edit</a></td>
				<td><a href="deletePawnshop.do?id=${pawnshop.pawnshopId}">Remove</a></td> 
			</tr>
		</c:forEach>
	</table>
	<a href="newPawnshop.do">Add New Pawnshop</a>
</body>
</html>