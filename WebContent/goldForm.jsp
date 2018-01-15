<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" action="saveGold.do" commandName="gold">
		<form:hidden path="goldId" />
		<form:hidden path="pawner.pawnerId" />
		<br />
		Gold Brand: <form:input path="goldBrand" />
		<br />
		Gold Detail: <form:input path="goldDetail" />
		<br />
		Gold Name: <form:input path="goldName" />
		<br />
		Gold Picture: <form:input path="goldPic" />
		<br />
		Gold Pure: <form:input path="goldPure" />
		<br />
		Gold Weight: <form:input path="goldWeight" />
		<br />
		<input type="submit" value="Save" />
		<br />
	</form:form>
</body>
</html>