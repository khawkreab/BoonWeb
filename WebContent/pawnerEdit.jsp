<!-- 
// page : pawner-edit
// version : 2.0
// task : new design
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<html lang="en"  href="img/logos/Artboard.png">

		<head>
			<link rel="icon">
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<meta name="description" content="">
			<meta name="author" content="">

			<title>pawner update</title>

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
			</script>


		</head>

		<body>
			<jsp:include page="navbar.jsp" />

			<body style="overflow: hidden">
				<div class="bg">
					<div style="height: 500px;">
						<div style="max-width: 900px;">
							<div class="modal-content" style="width: 400px; border-radius: .5rem;">
								<div class="icon-header" style="width: 80%; margin: auto;">
									<form:form method="post" action="savePawner.html" commandName="pawner">
										<form:input type="hidden" path="pawnerId" />
										<img src="img/logos/Artboard.png" style="height: 50px; margin-bottom: 10px; margin-top: 20px;" />
										<h1 style="font-size: 30px; letter-spacing: -1px; color: #555;">แก้ไขข้อมูลผู้ใช้</h1>
										<ul style="padding-left: 7px;">
											<li>
												<form:input path="pawnerFirstname" type="text" class="account-regis" placeholder="ชื่อ" required="required" />
												<form:input path="pawnerLastname" type="text" class="account-regis" placeholder="นามสกุล" required="required" />
											</li>
											<li>
												<form:input type="text" id="telto" class="account-regis" placeholder="เบอร์โทรศัพท์" required="required" onkeyup="continueto();"
												 path="pawnerPhone" />
											</li>
											<li>
												<form:input path="pawnerEmail" type="text" id="mail" class="account-regis" placeholder="อีเมล" required="required"
												 onkeyup="continueto();" />
											</li>
											<li>
												<form:input path="pawnerPassword" type="text" id="pass1" class="account-regis" placeholder="รหัสผ่าน" required="required"
												/>
											</li>
											<li>
												<input type="text" id="pass2" class="account-regis" placeholder="ยืนยันรหัสผ่าน" required="required" onkeyup="checkPass(); return false;"
												/>
												<span id="confirmMessage" class="confirmMessage"></span>
											</li>
											<li>
												<form:select id="province" path="pawnerProvince" class="account-regis">
													
												</form:select>
											</li>
											<li>
												<button type="submit" class="account-submit">ยืนยันการแก้ไข</button>
											</li>
										</ul>
									</form:form>
								</div>
								<div class="modal-footer">
								</div>
							</div>

						</div>
					</div>
				</div>
			</body>
		</body>

		</html>