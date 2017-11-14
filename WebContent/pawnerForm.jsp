<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" action="savePawner.do" commandName="pawner">
		<form:hidden path="pawnerId" />
		<br />
		First Name: <form:input path="firstName" />
		<br />
		Last Name: <form:input path="lastName" />
		<br />
		Email: <form:input path="email" />
		<br />
		Password: <form:input path="password" />
		<br />
		<input type="submit" value="Save" />
	</form:form>
</body>
</html>