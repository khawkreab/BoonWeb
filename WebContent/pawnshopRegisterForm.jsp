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
<title>สมัคร สมาชิก</title>

<!-- import all css -->
<jsp:include page="importCSS.jsp" />

<link rel="stylesheet" href="css/new-design.css">
<script>
	function checkPass() {
		//Store the password field objects into variables ...
		var pass1 = document.getElementById('pa1');
		var pass2 = document.getElementById('pa2');
		//Store the Confimation Message Object ...
		var message = document.getElementById('confirmMessage');
		//Set the colors we will be using ...
		var goodColor = "#66cc66";
		var badColor = "#ff6666";
		//Compare the values in the password field 
		//and the confirmation field
		if (pass1.value == pass2.value) {
			//The passwords match. 
			//Set the color to the good color and inform
			//the user that they have entered the correct password 
			pass2.style.backgroundColor = goodColor;
			message.style.color = goodColor;
			document.getElementById("clearval").disabled = false;
			/* message.innerHTML = "รหัสผ่านตรงกัน" */
		} else {
			//The passwords do not match.
			//Set the color to the bad color and
			//notify the user.
			pass2.style.backgroundColor = badColor;
			message.style.color = badColor;
			document.getElementById("clearval").disabled = true;
			/* message.innerHTML = "รหัสผ่านไม่ตรงกัน!" */
		}
	}
</script>
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
								<ul style="padding-left: 7px; list-style-type: none;">
									<li><form:input type="text" class="input-regis"
											placeholder="ชื่อโรงรับจำนำ" path="pawnshopName"
											required="required" pattern="[a-zA-Zก-์]{1,30}"
											title="ใช้เป็นตัวอักษร ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ" /></li>
									<li><form:input type="text" class="input-regis"
											placeholder="อีเมล" path="pawnshopEmail" required="required"
											pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
											value="<%=email%>" title="เช่น boon@hotmail.com" /></li>
									<li><form:input path="pawnshopPassword" type="password"
											id="pa1" class="input-regis" placeholder="รหัสผ่าน"
											required="required"
											pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
											title="ต้องมีเลขอย่างน้อย 1 ตัว และมีทั้ง อังษรพิมเล็กและใหญ่ความยาวอย่างน้อย 8 ตัว และ ห้ามใช้ภาษาไทย" /></li>
									<li><input type="password" id="pa2" class="input-regis"
										placeholder="ยืนยันรหัสผ่าน" required="required"
										onkeyup="checkPass(); return false;" /><span
										id="confirmMessage" class="confirmMessage"></span></li>
									<li><form:input type="text" class="input-regis"
											placeholder="เบอร์โทร" path="pawnshopTel" required="required"
											pattern="[0-9]{1,10}" title="ตัวเลขเท่านั้น" value="<%=tel%>" />
									</li>
									<li><form:select id="province" class="input-regis"
											path="pawnshopProvince">
											<option>กรุณาเลือกจังหวัด</option>
										</form:select></li>

									<li><form:input class="input-regis" path="pawnshopZipcode"
											placeholder="รหัสไปรษณีย์" pattern="[0-9]{5}"
											title="โปรใส่ รหัสไปรษณีย์ ให้ถูกต้อง" /></li>
									<li><form:textarea style="height: 90px;" type="text"
											class="input-regis" placeholder="ที่อยู่อาศัย"
											path="pawnshopAddress" /></li>
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
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/Province.js"></script>
</body>

</html>