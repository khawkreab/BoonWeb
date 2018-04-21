<!-- 
// page : pawner-post-form-watch
// version : 2.0
// task : แก้ ข้อมูลการบันทึก
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<html>

		<head>
		<link rel="icon" href="img/logos/Artboard.png">
			<meta http-equiv=Content-Type content="text/html; charset=utf-8">
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
					<h1>นาฬิกาข้อมือ</h1>
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
											<input type="hidden" name="pawnerPostItemType" value="watch" />
											<div class="form-group float-left">
												<input name="files" type="file" onchange="readURL(this);" />
											</div>
											<label class="label-input100">ชื่อสินค้าที่ต้องการจำนำ</label>
											<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="text" name="pawnerPostName">
											</div>
											<label class="label-input100">ยี่ห้อ</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnerPostBrand" required="required">
													<option>Rolex</option>
													<option>Patek Philippe</option>
													<option>Audemars Piguet</option>
													<option>Cartier</option>
													<option>Franck Muller</option>
													<option>Tag Heuer</option>
													<option>Omega</option>
													<option>Casio</option>
												</select>
											</div>
											<label class="label-input100">ชนิดของหน้าปัด</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnerPostCase" required="required">
													<option>สแสนเลส</option>													
													<option>ทองคำขาว</option>													
													<option>ทองคำเหลือง</option>													
													<option>ทองคำชมพู</option>
													<option>เซรามิค</option>
													<option>อื่นๆ (โปรดระบุ)</option>
													<option>ไม่ทราบ</option>
													</select>
											</div>
											<label class="label-input100">ชนิดของสายรัดข้อมือ</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnerPostBracelet" required="required">
													<option>สแตนเลส</option>													
													<option>สองกษัตริย์</option>													
													<option>ทอง</option>													
													<option>แพลตตินั่ม</option>													
													<option>หนัง</option>
													<option>พลาสติก</option>
													<option>ยาง</option>
													<option>อื่นๆ (โปรดระบุ)</option>
													<option>ไม่ทราบ</option>
													</select>
											</div>
											<label class="label-input100">มีเพรชหรือไม่ ถ้ามีประดับอยู๋ส่วนไหน</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnerPostDiamond" required="required">
													<option>ไม่มี</option>
													<option>มี,ขอบหน้าปัด</option>
													<option>มี,หน้าปัด</option>
													<option>มี,บนตัวเลข</option>
												</select>
											</div>
											<label class="label-input100">ปีที่ผลิตสินค้า</label>
											<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="date" name="pawnerPostProduction" placeholder="">
												<span class="focus-input100"></span>
											</div>
											<label class="label-input100">เพิ่มเติม</label>
											<div class="wrap-input100 validate-input" data-validate="Message is required">
												<textarea class="input100" name="pawnerPostDescription" placeholder="รายละเอียดสินค้าเพิ่มเติม"></textarea>
												<span class="focus-input100"></span>
											</div>
											<div class="form-group-post float-left">
												<dt style="line-height: 45px;font-size: 14.5px;font-weight: inherit;">
													<input type="checkbox" name="pawnerPostPackage" value="yes" /> กล่องบรรจุสินค้า
												</dt>
												<dt style="line-height: 5px;font-size: 14.5px;font-weight: inherit;">
													<input type="checkbox" name="pawnerPostWarranty" value="yes" /> ประกันสินค้า
												</dt>
												<dt style="line-height: 55px;font-size: 14.5px;font-weight: inherit;">
													<input type="checkbox" required="required"> ฉันยอมรับและตกลง
													<strong>เงือนไขการใช้งาน</strong> ของระบบบุญยง
												</dt>
											</div>
											<div class="container-contact100-form-btn">
												<button type="summot" class="contact100-form-btn">
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