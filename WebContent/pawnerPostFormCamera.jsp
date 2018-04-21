<!-- 
// page : pawner-post-form-Electronic
// version : 1.0
// task : create
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<!DOCTYPE html>
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
				<div>
					<h1>กล้องถ่ายรูป</h1>
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
											<input type="hidden" name="pawnerPostItemType" value="Camera" />
											<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="text" name="pawnerPostName" placeholder="ชื่อสินค้าที่ต้องการจำนำ">
											</div>

											<div class="wrap-input100 validate-input" style="margin-top:15px;">
												<select class="input100" name="pawnerPostBrand" required="required">
													<option>ยี่ห้อสินค้า</option>
													<option>Canon</option>
													<option>Canon</option>
													<option>Fuji Film</option>
													<option>Nikon</option>
													<option>Olympus</option>
													<option>Samsung</option>
													<option>Sony</option>
													<option>Others</option>
												</select>
											</div>

											<div class="wrap-input100 rs1-wrap-input100 validate-input" style="margin-top:15px;">
												<input class="input100" type="text" name="pawnerPostSerial" placeholder="หมายเลขประจำเครื่อง">
												<span class="focus-input100"></span>
											</div>
											<div class="wrap-input100 rs2-wrap-input100 validate-input" style="margin-top:15px;">
												<input class="input100" type="text" name="pawnerPostModel" placeholder="รุ่น">
												<span class="focus-input100"></span>
											</div>
											<div class="wrap-input100 validate-input" style="margin-top:15px;">
												<input class="input100" type="text" name="pawnerPostTypeCamera" placeholder="ชนิดของกล้อง">
												<span class="focus-input100"></span>
											</div>
											<div class="wrap-input100 validate-input" style="margin-top:15px;">
												<input class="input100" type="text" name="pawnerPostCameraLen" placeholder="ชนิดของเลนส์">
												<span class="focus-input100"></span>
											</div>
											<div style="margin-top:15px;width:100%">
												<span style="font-size:14px;margin-top:15px">ปีที่ซื้อสินค้า</span>
												<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
													<input class="input100" type="date" name="pawnerPostPurchase" placeholder="ปีที่ซื้อ">
													<span class="focus-input100"></span>
												</div>
											</div>
											<!-- ------------------------Description----------------------------  -->
											<div class="wrap-input100 validate-input" style="margin-top:15px;" data-validate="Message is required">
												<textarea class="input100" name="pawnerPostDescription" placeholder="รายละเอียดสินค้าเพิ่มเติม"></textarea>
												<span class="focus-input100"></span>
											</div>
											<div class="form-group-post float-left">
												<ul>
													<li>
														<span style="font-size: 14.5px;font-weight: inherit;">
															<input type="checkbox" name="pawnerPostBattery" value="yes" /> Battery charger
														</span>
													</li>
													<li>
														<span style="font-size: 14.5px;font-weight: inherit;">
															<input type="checkbox" name="pawnerPostWarranty" value="yes" /> ประกันสินค้า
														</span>
													</li>
													<li>
														<span style="font-size: 14.5px;font-weight: inherit;">
															<input type="checkbox" required="required"> ฉันยอมรับและตกลง
															<strong>เงือนไขการใช้งาน</strong> ของระบบบุญยง
														</span>
													</li>
												</ul>
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