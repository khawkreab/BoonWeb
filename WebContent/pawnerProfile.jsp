<!-- 
// page : pawner-profile
// version : 1.0
// task : --
// edit by : 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Profile</title>

</head>

<body>

	<form:form method="post" action="updatePawner.html"
		commandName="pawner">
		<form:input type="hidden" path="pawnerId"/>
		<form:input type="text" path="pawnerFirstname" />
		<form:input type="text" path="pawnerLastname" />
		<form:label path="pawnerEmail"/>
		<form:input type="text" path="pawnerEmail" />
		<form:input type="text" path="pawnerPassword" />
		<form:input type="text" path="pawnerPhone" />
		<form:select id="province" path="pawnerProvince">
		</form:select>
		<button type="submit">ยืนยันการแก้ไข</button>
	</form:form>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="province/AutoProvince.js"></script>
	<script>
		$('#clearval').click(function() {
			$('option').removeAttr('value');
		})

		$('body').AutoProvince({
			PROVINCE : '#province', // select div สำหรับรายชื่อจังหวัด
			AMPHUR : '#amphur', // select div สำหรับรายชื่ออำเภอ
			DISTRICT : '#district', // select div สำหรับรายชื่อตำบล
			POSTCODE : '#postcode', // input field สำหรับรายชื่อรหัสไปรษณีย์
			arrangeByName : false
		// กำหนดให้เรียงตามตัวอักษร
		});
	</script>
</body>
</html>