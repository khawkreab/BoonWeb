<!-- 
// page : pawnshop-register
// version : 1.0
// task : Create
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html >

<html>

<head>
<title>Pawnshop Registation</title>

<!-- import all css -->
<jsp:include page="importCSS.jsp" />

<link rel="stylesheet" href="css/new-design.css">
</head>

<body>
	<%
		String email = request.getParameter("emailto"), pass = request.getParameter("passto"),
				tel = request.getParameter("telto");
	%>
	<form:form method="post" action="savePawnshop.html"
		commandName="pawnshop">
		<div class="bg">
			<div>
				<div class="re-con">
					<div class="row">
						<div class="col-md-6 bg2"></div>
						<div class="col-md-6 ">
							<div class="form-regis">
								<div style="text-align: center; width: 45%;">
									<h1 style="font-size: 24px; letter-spacing: -1px; color: #555;">ขยายขอบเขตธุรกิจของคุณกับการจำนำออนไลน์</h1>
								</div>
								<ul style="padding-left: 7px;list-style-type: none;">
									<li><form:input type="text" class="input-regis"
											placeholder="ชื่อโรงรับจำนำ" path="pawnshopName"
											required="required" pattern="[a-zA-Zก-์]{1,30}"
											title="ใช้เป็นตัวอักษร ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ" /></li>
									<li><form:input type="text" class="input-regis"
											placeholder="อีเมล" path="pawnshopEmail" required="required"
											pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
											value="<%=email%>" title="เช่น boon@hotmail.com" /></li>
									<li><form:input type="password" class="input-regis"
											placeholder="รหัสผ่าน" path="pawnshopPassword"
											required="required"
											pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
											title="ต้องมีเลขอย่างน้อย 1 ตัว และมีทั้ง อังษรพิมเล็กและใหญ่ ความยาวอย่างน้อย 8 ตัว"
											value="<%=pass%>" /></li>
									<li><form:input type="text" class="input-regis"
											placeholder="เบอร์โทร" path="pawnshopTel" required="required"
											pattern="[0-9]{1,10}" title="ตัวเลขเท่านั้น" value="<%=tel%>" />
									</li>
									<li><form:select id="province" class="input-regis"
											path="pawnshopProvince">
											<option>กรุณาเลือกจังหวัด</option>
										</form:select></li>
									<li><form:select id="amphur" class="input-regis"
											path="pawnshopDistrict">
											<option>กรุณาเลือกอำเภอ</option>
										</form:select></li>
									<li><form:select id="district" class="input-regis"
											path="pawnshopParish">
											<option>กรุณาเลือกตำบล</option>
										</form:select></li>
									<li><form:input id="postcode" type="text"
											class="input-regis" placeholder="รหัสไปรษณีย์"
											path="pawnshopPostcodes" /></li>
									<li>
										<button id="clearval" type="submit" class="input-submit">ยืนยันการสร้างบัญ</button>
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