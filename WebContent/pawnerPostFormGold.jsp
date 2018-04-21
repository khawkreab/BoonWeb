<!-- 
// page : pawner-post-form
// version : 5.0
// task : แก้ ข้อมูลการบันทึก
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<html lang="en">

		<head>
			<link rel="icon" href="img/logos/Artboard.png">
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<meta name="description" content="">
			<meta name="author" content="">

			<title>pawner-post-form</title>

			<!-- Bootstrap core CSS -->
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/new-design.css" rel="stylesheet">
			<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

		</head>

		<body style="background-color:#f4f4f4;">

			<!-- Navigation   -->
			<jsp:include page="navbar.jsp" />

			<!--banner-->
			<div class="banner-top">
				<div class="">
					<h1>ทองคำ</h1>
					<em></em>
				</div>
			</div>
			<!--content-->
			<div class="content">
				<div class="container">
					<!--products-->
					<div class="content-mid">
						<div class="mid-popular">
							<div class="container-contact100 ">
								<div class="wrap-contact100">
									<div class="contact100-form">
										<form:form method="post" action="savePost.html" modelAttribute="pawnerPost" enctype="multipart/form-data">
											<input type="hidden" name="pawnerPostId" />
											<input type="hidden" name="pawnerId.pawnerId" />
											<input type="hidden" name="pawnerPostItemType" value="Gold" />
											<div class="form-group float-left">
												<input name="files" type="file" onchange="readURL(this);" />
											</div>
											<div class="wrap-input100 validate-input">
												<input class="input100" type="text" name="pawnerPostName" placeholder="ชื่อสินค้าที่ต้องการจำนำ">
											</div>
											<div class="wrap-input100 validate-input" style="margin-top:15px;">
												<input class="input100" type="text" name="pawnerPostBrand" placeholder="ยี่ห้อ">
												<span class="focus-input100"></span>
											</div>
											<div class="wrap-input100 rs1-wrap-input100 validate-input" style="margin-top:15px;">
												<input class="input100" type="text" name="pawnerPostPure" placeholder="ความบริสุทธิ์">
												<span class="focus-input100"></span>
											</div>
											<div class="wrap-input100 rs2-wrap-input100 validate-input" style="margin-top:15px;">
												<input class="input100" type="text" name="pawnerPostWeigh" placeholder="น้ำหนัก(ใช้หน่วยเป็นกรัม)">
												<span class="focus-input100"></span>
											</div>
											<div class="wrap-input100 validate-input">
												<select class="input100" name="pawnerPostCategory" required="required">
													<option>ชนิดหรือรูปแบบของทองคำ</option>
													<option>ทองรูปพรรณ</option>
													<option value="1">ทองเค เช่น 18k, 14k</option>
													<option>ทองเค(18k,14k)</option>
													<option value="2">ทอง 96.5 %</option>
													<option>เงิน</option>
													<option value="3">ทองแท่ง 96.5 %</option>
													<option value="4">ทองแท่ง 99.99 %</option>
													<option value="5">พรีม่าโกลด์, โกลด์มาสเตอร์</option>
													<option value="6">เงิน</option>
													<option value="7">กรอบพระ</option>
													<option value="8">แพลตตินั่ม</option>
													<option>อื่นๆ</option>
												</select>
											</div>
											<div class="wrap-input100 validate-input" style="margin-top:15px;" data-validate="Message is required">
												<textarea class="input100" name="pawnerPostDescription" placeholder="รายละเอียดสินค้าเพิ่มเติม"></textarea>
												<span class="focus-input100"></span>
											</div>
											<div class="form-group-post float-left" style="font-size: 14.5px;font-weight: inherit;">
												<input type="checkbox" required="required"> ฉันยอมรับและตกลง
												<strong>เงือนไขการใช้งาน</strong> ของระบบบุญยง
											</div>
											<div class="container-contact100-form-btn">
												<button type="submit" class="contact100-form-btn">
													ยืนยัน
												</button>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</body>

		</html>