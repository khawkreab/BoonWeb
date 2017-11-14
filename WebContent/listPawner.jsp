<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		<c:forEach items="${pawnerList}" var="pm">
			<tr>
				<td>${pm.pawnerId}</td>
				<td>${pm.firstName}</td>
				<td>${pm.lastName}</td>
				<td>${pm.email}</td>
				<td>${pm.password}</td>
				<td><a href="editPawner.do?id=${pm.pawnerId}">Edit</a></td>
				<td><a href="deletePawner.do?id=${pm.pawnerId}">Remove</a></td>
				<td><a href="listGold.do?id=${pm.pawnerId}">List Gold</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="pawnerForm.do">Add New Pawner</a>
</body>
</html>