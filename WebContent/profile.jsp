<!-- 
// page : profile
// version : 1.0
// task : --
// edit by : khawkreab 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>
	<%
		if (session.getAttribute("userType") == "pawner") {
	%> ${pawnshop.pawnshopName}
	<%
		} else {
	%> ${pawner.pawnerFirstname} &nbsp; ${pawner.pawnerLastname}
	<%
		}
	%>
</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<!-- import profile css -->
<link rel="stylesheet" href="css/profile.css">
</head>
<body>
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!--  -->
	<%
		if (session.getAttribute("userType") == "pawner") {
	%>
	<section style="padding-top: 0px;">
		<div class="profile-edit">
			<div class="profile-cover">
				<img src="img/uploadimg/pawnshopcover/cover.jpg">
			</div>
			<div class="profile-info">
				<div class="profile-info-left profile-info-left-b2">
					<img id="img" src="img/uploadimg/pawnshop/${pawnshop.pawnshopPicture}">
				</div>
				<div class="profile-info-right">
					<div class="profile-info-title">
						<span>${pawnshop.pawnshopName} </span>
						<i>${pawnshop.pawnshopEmail}</i>
					</div>
					<div class="profile-info-overview">
						<div class="profile-info-overview-title">
							<span>ภาพรวม</span>
						</div>
						<div class="profile-info-overview-list">
							<div id="showview">
								<br>
								<p>โรงรับจำนำ  ${pawnshop.pawnshopName} </p>
								<p>อีเมล ${pawnshop.pawnshopEmail}</p>
								<p>เบอร์โทร ${pawnshop.pawnshopTel}</p>
								<p>จังหวัด ${pawnshop.pawnshopProvince}</p>
								<p>รหัสไปรษณีย์ ${pawnshop.pawnshopZipcode}</p>
								<p>ที่อยู่ ${pawnshop.pawnshopAddress}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%} else{ %>
	<section style="padding-top: 0px;">
		<div class="profile-edit">
			<div class="profile-cover">
				<img src="img/uploadimg/pawnercover/cover.jpg">
			</div>
			<div class="profile-info">
				<div class="profile-info-left profile-info-left-b1">
					<img id="img" src="img/uploadimg/pawner/${pawner.pawnerPicture}">
				</div>
				<div class="profile-info-right">
					<div class="profile-info-title">
						<span>${pawner.pawnerFirstname} &nbsp; ${pawner.pawnerLastname}</span>
						<i>${pawner.pawnerEmail}</i>
					</div>
					<div class="profile-info-overview">
						<div class="profile-info-overview-title">
							<span>ภาพรวม</span>
						</div>
						<div class="profile-info-overview-list">
							<div id="showview">
								<br>
								<p>ชื่อ ${pawner.pawnerFirstname} &nbsp; ${pawner.pawnerLastname}</p>
								<p>อีเมล ${pawner.pawnerEmail}</p>
								<p>เบอร์โทร ${pawner.pawnerPhone}</p>
								<p>จังหวัด ${pawner.pawnerProvince}</p>
								<p>รหัสไปรษณีย์ ${pawner.pawnerZipcode}</p>
								<p>ที่อยู่ ${pawner.pawnerAddress}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%} %>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="province/AutoProvince.js"></script>
</body>
</html>