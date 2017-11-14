<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Pawnshop Form</title>
</head>
<body>
	<form:form method="post" action="savePawnshop.do" commandName="pawnshop">
	
		<form:hidden path="pawnshopId" />
		<br/>
		User Name: <form:input path="userName" />
		<br/>
		Password : <form:input path="password" />
		<br/>
		Pawnshop Name: <form:input path="pawnshopName" />
		<br/>
		Credential : <form:input path="credential" />
		<br/>
		
		<input type="submit" value="Save" />
			
	</form:form>
</body>
</html>