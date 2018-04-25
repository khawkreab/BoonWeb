<!-- 
// page : pawner-register-form-gold
// version : 2.0
// task : new design
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
		<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

		<head>
			<link rel="icon" href="img/logos/Artboard.png">
			<meta charset="UTF-8">
		
			<title>Registration</title>

			<!-- Bootstrap core CSS -->
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/new-design.css" rel="stylesheet">

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
						message.innerHTML = "รหัสผ่านตรงกัน"
					} else {
						//The passwords do not match.
						//Set the color to the bad color and
						//notify the user.
						pass2.style.backgroundColor = badColor;
						message.style.color = badColor;
						message.innerHTML = "รหัสผ่านไม่ตรงกัน!"
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
			<body class="bg">
				<div style="padding-top:80px;">
					<div style="height: 500px;">
						<div style="max-width: 900px;">
							<div class="modal-content" style="width: 400px; border-radius: .5rem;">

								<div class="icon-header" style="width: 80%; margin: auto;">
									<form:form method="post" action="savePawner.html" commandName="pawner">
										<img src="img/logos/Artboard.png" style="height: 50px; margin-bottom: 10px; margin-top: 20px;" />
										<h1 style="font-size: 30px; letter-spacing: -1px; color: #555;">ยินดีตอนรับ</h1>
										<ul style="padding-left: 7px;">
											<li>
												<form:input path="pawnerFirstname" type="text" class="account-regis" placeholder="ชื่อ" required="required" pattern="[a-zA-Zก-์]{1,30}"/>
												<form:input path="pawnerLastname" type="text" class="account-regis" placeholder="นามสกุล" required="required" pattern="[a-zA-Zก-์]{1,30}"/>
											</li>
											<li>
												<form:input type="text" id="telto" class="account-regis" placeholder="เบอร์โทรศัพท์" required="required" onkeyup="continueto();"
												 path="pawnerPhone" required="required" pattern="[0-9]{1,10}" title="ตัวเลขเท่านั้น"/>
											</li>
											<li>
												<form:input path="pawnerEmail" type="text" id="mail" class="account-regis" placeholder="อีเมล" required="required" onkeyup="continueto();"
												pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required"/>
											</li>
											<li>
												<form:input path="pawnerPassword" type="password" id="pass1" class="account-regis" placeholder="รหัสผ่าน" required="required"
												pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="ต้องมีเลขอย่างน้อย 1 ตัว และมีทั้ง อังษรพิมเล็กและใหญ่ ความยาวอย่างน้อย 8 ตัว"/>
											</li>
											<li>
												<input type="password" id="pass2" class="account-regis" placeholder="ยืนยันรหัสผ่าน" required="required" onkeyup="checkPass(); return false;"
												/>
												<span id="confirmMessage" class="confirmMessage"></span>
											</li>
											<li>
												<form:select id="province" path="pawnerProvince" class="account-regis" >
													<option>- กรุณาเลือกจังหวัด -</option>
												</form:select>
											</li>
											<li>
												<button type="submit" class="account-submit">สร้างบัญชี</button>
											</li>
											<li>
												<p class="Subhead-description" style="margin-top: 5px;">หรือ</p>
											</li>

										</ul>
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
					</div>
				</div>
				<!-- Bootstrap core JavaScript -->
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