<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> List Propose Price</title>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
<table  id="customers">
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