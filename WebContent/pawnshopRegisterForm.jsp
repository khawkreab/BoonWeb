<!-- 
// page : pawnshop-register
// version : 1.0
// task : Create
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

		<html xmlns="http://www.w3.org/1999/xhtml">

		<head>
			<link rel="icon" href="img/logos/Artboard.png">
			<title>Pawnshop Registation</title>

			<!-- Bootstrap core CSS -->
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/new-design.css" rel="stylesheet">
		</head>

		<body class="bg">
			<%
		String email = request.getParameter("emailto"), pass = request.getParameter("passto"),
				tel = request.getParameter("telto");
	%>
				<form:form method="post" action="savePawnshop.html" commandName="pawnshop">
					<div style="padding-top: 80px;">
						<div style="height: 500px;">
							<div class="re-con">
								<div class="row">
									<div class="col-md-6 bg2"></div>
									<div class="col-md-6 ">
										<div class="form-regis">
											<div style="text-align: center; width: 45%;">
												<h1 style="font-size: 24px; letter-spacing: -1px; color: #555;">ขยายขอบเขตธุรกิจของคุณกับการจำนำออนไลน์</h1>
											</div>
											<ul style="padding-left: 7px;">
												<li>
													<form:input type="text" class="input-regis" placeholder="ชื่อโรงรับจำนำ" path="pawnshopName" />
												</li>
												<li>
													<form:input type="text" class="input-regis" placeholder="อีเมล" path="pawnshopEmail" value="<%=email%>" />
												</li>
												<li>
													<form:input type="password" class="input-regis" placeholder="รหัสผ่าน" path="pawnshopPassword" value="<%=pass%>" />
												</li>
												<li>
													<form:input type="password" class="input-regis" placeholder="ยืนยันรหัสผ่าน" value="<%=pass%>" />
												</li>
												<li>
													<form:input type="text" class="input-regis" placeholder="เบอร์โทร" path="pawnshopTel" value="<%=tel%>" />
												</li>
												<li>
													<form:select id="province" class="input-regis" path="pawnshopProvince">
														<option>กรุณาเลือกจังหวัด</option>
													</form:select>
												</li>
												<li>
													<form:select id="amphur" class="input-regis" path="pawnshopDistrict">
														<option>กรุณาเลือกอำเภอ</option>
													</form:select>
												</li>
												<li>
													<form:select id="district" class="input-regis" path="pawnshopParish">
														<option>กรุณาเลือกตำบล</option>
													</form:select>
												</li>
												<li>
													<form:input id="postcode" type="text" class="input-regis" placeholder="รหัสไปรษณีย์" path="pawnshopPostcodes" />
												</li>
												<li>
													<button type="submit" class="input-submit">ยืนยันการสร้างบัญ</button>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form:form>
				<script src="vendor/jquery/jquery.min.js"></script>
				<script type="text/javascript" src="province/AutoProvince.js"></script>
				<script>
					$('body').AutoProvince({
						PROVINCE: '#province', // select div สำหรับรายชื่อจังหวัด
						AMPHUR: '#amphur', // select div สำหรับรายชื่ออำเภอ
						DISTRICT: '#district', // select div สำหรับรายชื่อตำบล
						POSTCODE: '#postcode', // input field สำหรับรายชื่อรหัสไปรษณีย์
						arrangeByName: false // กำหนดให้เรียงตามตัวอักษร
					});
				</script>
		</body>

		</html>