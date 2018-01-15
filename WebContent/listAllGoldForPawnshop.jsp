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
		<a href="listPawnshop.do">Back To pawnshop</a>
		<c:forEach items="${goldList}" var="gold">
			<tr>
				<td>${gold.pawner.firstName}</td>
				<td>${gold.goldBrand}</td>
				<td>${gold.goldDetail}</td>
				<td>${gold.goldName}</td>
				<td>${gold.goldPic}</td>
				<td>${gold.goldPure}</td>
				<td>${gold.goldWeight}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>