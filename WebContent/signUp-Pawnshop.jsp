<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>เข้าร่วม - บุญยง</title>

<!-- Boostrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
	
<!-- My Style -->
<link rel="stylesheet" href="css/sign-in-style.css">

</head>
<body>

	<main>
	<section class="all-margin left">
		<img alt="pawnShop" src="img/pawnshop.png" height="100" width="100" style="margin-bottom: 30px;">
		<h2>สร้างบัญชีโรงรับจำนำของคุณ</h2>
		<p>บัญชีเดียวควบคุมทุกอย่างตั้งแต่ รับจำนำยันปล่อยทรัพย์สินหลุดจำนำ</p>
	</section>
	<section class="all-margin">
		<div class="sign-in-card round">
			<h2>ลงทะเบียนโรงรับจำนำ</h2>
			<form:form method="post" action="savePawnShop.do" commandName="pawnshop">
				<div class="input-content">
					<form:hidden path="pawnShopId" />
					<form:input path="licen" id="license" placeholder="เลขที่ใบอนุญาต" autofocus="autofocus" required="required"/>
					<form:input path="pawnShopName" id="pawnShopName" placeholder="ชื่อโรงรับจำนำ" required="required"/>
					<form:input path="address" placeholder="ที่อยู่โรงรับจำนำ" required="required"/>
				</div>
					
				<div class="input-content" id="input-two">
					<form:input path="userName" placeholder="ชื่อผู้ใช้" required="required"/>
					<form:password path="password" placeholder="รหัสผ่าน" required="required"/>
				</div>
				
				<div class="submit-btn">
					<input type="submit" value="เข้าร่วม" />
				</div>
			</form:form>
		</div>
		
		<div class="sign-up-card text-center">
			<p class="no-margin">เข้าร่วมกับ บุญยง แล้วใช่ไหม? <a href="signIn.do">ลงชื่อเข้าใช้</a></p>
		</div>
		
		<div class="input-content text-center">
			<p class="no-margin small">เมื่อสมัครใช้งาน แปลว่าคุณเห็นด้วยกับ <a href="#">เงื่อนไขทางธุรกิจ</a> และ <a href="#">นโยบายความเป็นส่วนตัว</a></p>
		</div>

	</section>
	</main>

	<footer class="container">
		<p>&copy; 2017 SIXTY TECH</p>
	</footer>
	
	<div style="display: none;">
		Icons made by <a href="https://www.flaticon.com/authors/smashicons"
			title="Smashicons">Smashicons</a> from <a
			href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
		is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"
			title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>
	</div>
	<div style="display: none;">
		Icons made by <a href="https://www.flaticon.com/authors/smashicons"
			title="Smashicons">Smashicons</a> from <a
			href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
		is licensed by <a href="http://creativecommons.org/licenses/by/3.0/"
			title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>
	</div>
	
</body>
</html>