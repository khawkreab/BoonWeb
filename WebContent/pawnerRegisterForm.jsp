<!-- 
// page : pawner-register-form-gold
// version : 2.0
// task : new design
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html >
<html lang="en">
<head>
<meta charset="UTF-8">
<title>สมัคร สมาชิก</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/new-design.css">
<script>
	function checkPass() {
		//Store the password field objects into variables ...
		var pass1 = document.getElementById('pass1');
		var pass2 = document.getElementById('pass2');
		document.getElementById("pass-continue").value = pass2.value;
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
			document.getElementById("confirm").disabled = false;
			/* message.innerHTML = "รหัสผ่านตรงกัน" */
		} else {
			//The passwords do not match.
			//Set the color to the bad color and
			//notify the user.
			pass2.style.backgroundColor = badColor;
			message.style.color = badColor;
			document.getElementById("confirm").disabled = true;
			/* message.innerHTML = "รหัสผ่านไม่ตรงกัน!" */
		}
	}

	function continueto() {
		var emailto = document.getElementById("mail").value;
		var telto = document.getElementById("telto").value;
		document.getElementById("email-continue").value = emailto;
		document.getElementById("tel-continue").value = telto;

	}
</script>
</head>
<body>
	<div class="container bg">
		<div class="modal-content" style="width: 800px; border-radius: .5rem;">
			<div class="icon-header" style="margin: auto;">
				<form:form method="post" action="savePawner.html"
					commandName="pawner">
					<img src="img/logos/logo.png"
						style="height: 50px; margin-bottom: 10px; margin-top: 20px;" />
					<h1 style="font-size: 30px; letter-spacing: -1px; color: #555;">ยินดีตอนรับ</h1>
					<div class="row" style="justify-content: center;">
						<div class="col-md-6">
							<form:input path="pawnerFirstname" type="text"
								class="account-regis" placeholder="ชื่อ" required="required"
								pattern="[a-zA-Zก-์]{1,30}"
								title="ใช้เป็นตัวอักษร ภาษาไทย หรือ อังกฤษ  ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ" />
							<form:input path="pawnerEmail" type="text" id="mail"
								class="account-regis" placeholder="อีเมล" required="required"
								onkeyup="continueto();"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,20}$"
								required="required" title="เช่น boon@hotmail.com" />
							<form:input path="pawnerPassword" type="password" id="pass1"
								class="account-regis" placeholder="รหัสผ่าน" required="required"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
								title="ต้องมีเลขอย่างน้อย 1 ตัว และมีทั้ง อังษรพิมเล็กและใหญ่ความยาวอย่างน้อย 8 ตัว และ ห้ามใช้ภาษาไทย" />
							<form:input path="pawnerZipcode" type="text"
								class="account-regis" placeholder="รหัสไปรษณีย์"
								required="required" pattern="[0-9]{5}"
								title="โปรใส่ รหัสไปรษณีย์ ให้ถูกต้อง" />
							<form:select id="province" path="pawnerProvince"
								class="account-regis">
								<option>- กรุณาเลือกจังหวัด -</option>
							</form:select>
						</div>
						<div class="col-md-6">
							<form:input path="pawnerLastname" type="text"
								class="account-regis" placeholder="นามสกุล" required="required"
								pattern="[a-zA-Zก-์]{1,30}"
								title="ใช้เป็นตัวอักษร ภาษาไทย หรือ อังกฤษ  ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ" />
							<form:input type="text" id="telto" class="account-regis"
								placeholder="เบอร์โทรศัพท์" required="required"
								onkeyup="continueto();" path="pawnerPhone" required="required"
								pattern="[0-9]{1,10}" title="โปรใส่  หมายเลขโทรศัพท์ให้ถูกต้อง" />
							<input type="password" id="pass2" class="account-regis"
								placeholder="ยืนยันรหัสผ่าน" required="required"
								onkeyup="checkPass(); return false;" /> <span
								id="confirmMessage" class="confirmMessage"></span>
							<form:textarea style="height: 90px;" path="pawnerAddress"
								type="password" id="pass1" class="account-regis"
								placeholder="ที่อยู่อาศัย" required="required"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
								title="ต้องมีเลขอย่างน้อย 1 ตัว และมีทั้ง อังษรพิมเล็กและใหญ่ความยาวอย่างน้อย 8 ตัว และ ห้ามใช้ภาษาไทย" />
						</div>
						<button type="submit" class="account-submit" id="confirm">สร้างบัญชี</button>
						<p class="Subhead-description" style="margin-top: 5px;">หรือ</p>
					</div>
				</form:form>
			</div>
			<div class="modal-footer">
				<form action="pawnshop-register-form.html" method="post">
					<input type="hidden" value="" id="email-continue" name="emailto">
					<input type="hidden" value="" id="pass-continue" name="passto">
					<input type="hidden" value="" id="tel-continue" name="telto">
					<button type="submit" id="continueto">สร้างบัญชีสำหรับโรงรับจำนำ</button>
				</form>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/Province.js">
		
	</script>
</body>
</html>