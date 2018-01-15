<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> List Propose Price</title>
</head>
<body>
<table border="1">
		<c:forEach items="${proposePriceList}" var="proposePrice">
			<tr>
				<td>${proposePrice.proposePriceId}</td>
				<td>${proposePrice.price}</td>
				<td><a href="editPawnshop.do?id=${proposePrice.proposePriceId}">Edit</a></td>
				<td><a href="deletePawnshop.do?id=${proposePrice.proposePriceId}">Remove</a></td> 
			</tr>
		</c:forEach>
	</table>
	<a href="newProposePrice.do">Add New ProposePrice</a>
</body>
</html>