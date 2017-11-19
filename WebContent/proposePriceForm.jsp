<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Propose Price Form</title>
</head>
<body>

	<form:form method="post" action="savaProposePrice.do" commandName="proposePrice">
		<form:hidden path="pawnshop.pawnshopId" />
		<form:hidden path="goldId" />
		<form:hidden path="proposePriceId" />
		<br />
		Price : <form:input path="price" />
		<br />
		<input type="submit" value="Save" />
	</form:form>
	
</body>
</html>