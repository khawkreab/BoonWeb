<!-- 
// page : pawner-profile
// version : 1.0
// task : --
// edit by : 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Profile</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<!-- import profile css -->
<link rel="stylesheet" href="css/profile.css">
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
	<!--  -->
	<section style="    padding-top: 0px;">
		<div class="profile-edit">
			<div class="profile-cover">
				<img src="https://png.pngtree.com/thumb_back/fw800/back_pic/00/08/57/41562ad4a92b16a.jpg">
			</div>
			<div class="profile-info">
				<div class="profile-info-left">
					<img src="https://www.jamf.com/jamf-nation/img/default-avatars/generic-user-purple.png">
					<button class="btn-custom btn-custom-sky" style="height: 30px"> เปลี่ยนรูป</button>
				</div>
				<div class="profile-info-right">
					<div class="profile-info-title">
						<span> khawkreab software </span>
						<i>khawkreab@outlook.com</i>
					</div>
					<div class="profile-info-overview">
						<div class="profile-info-overview-title">
							<span>ภาพรวม</span>
						</div>
						<div class="profile-info-overview-list">
							<form:form method="post" action="updatePawner.html" commandName="pawner">
								<form:input type="hidden" path="pawnerId" />
								<ul>
									<li>ชื่อ</li>
									<li>
										<form:input type="text" path="pawnerFirstname" />
										&nbsp;&nbsp;
										<form:input type="text" path="pawnerLastname" />
									</li>
									<li>รหัสผ่าน</li>
									<li>
										<form:input type="text" path="pawnerPassword" />
									</li>
									<li>เบอร์โทร</li>
									<li>
										<form:input type="text" path="pawnerPhone" />
									</li>
									<li>จังหวัด</li>
									<li>
										<form:select id="province" path="pawnerProvince">
											<option value="${pawner.pawnerProvince}">${pawner.pawnerProvince}</option>
										</form:select>
									</li>
									<li>รหัสไปรษณืย์</li>
									<li></li>
								</ul>
								<div class="d-flex">
									<button class="ml-auto btn-custom btn-custom-defalt" >บันทึก</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="province/AutoProvince.js"></script>
	<script src="js/Province.js">
	
    </script>
</body>
</html>