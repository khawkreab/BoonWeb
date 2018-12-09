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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawner pledge</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/checkBox.css">
</head>
<body style="background-color: #f4f4f4; overflow: hidden;">
	<!-- nav bar -->
	<jsp:include page="navbar.jsp" />
	<!-- loading page -->
	<jsp:include page="loadingpage.jsp" />
	<!-- ----------------- popup -------------------------------  -->
	<!-- The Modal -->
	<div id="checkbox" class="modal" style="z-index: 9999">
		<!-- Modal content -->
		<div class="d-flex justify-content-center">
			<div
				style="display: inline-flex; position: relative; align-items: center; background-color: #ff3300; color:#fff; padding: 15px; margin-top: 10px;width: 550;">
				<div>
					<p style="margin: 0;">คุณต้องยอมรับข้อกำหนดของข้อตกลงการจำนำ เพื่อนำเนินการให้เสร็จสมบูรณ์</p>
				</div>
				<span class="close"
					style="position: absolute; right: 5px; top: 0px; cursor: pointer;">&times;</span>
			</div>
		</div>
	</div>
	<!-- element -->
	<div class="page">
		<div class="pledge-container">
			<div class="pledge-featured">
				<div class="pledge-circle pledge-circle-img1"></div>
			</div>
			<div class="pledge-content">
				<div id="choosetype">
					<h4>
						<i> เลือกประเภทการจำนำ </i>
					</h4>
					<table>
						<tr>
							<td>
								<!-- type => gold --> <a onclick="showsteptype(1)"> <img
									src="img/icon/gold.png" width="150" height="150px">
							</a>
							</td>
							<td>
								<!-- type => com --> <a id="" onclick="showsteptype(2)"> <img
									src="img/icon/com.png" width="150" height="150px">
							</a>
							</td>
							<td>
								<!-- type => tv --> <a id="" onclick="showsteptype(3)"> <img
									src="img/icon/tv.png" width="150" height="150px">
							</a>
							</td>
						</tr>
						<tr>
							<td>
								<!-- type => Smart Phone --> <a id="" onclick="showsteptype(4)">
									<img src="img/icon/mobile.png" width="150" height="150px">
							</a>
							</td>
							<td>
								<!-- type => Watch --> <a id="" onclick="showsteptype(5)"> <img
									src="img/icon/watch.png" width="150" height="150px">
							</a>
							</td>
							<td>
								<!-- type => Camera --> <a id="" onclick="showsteptype(6)">
									<img src="img/icon/camera.png" width="150" height="150px">
							</a>
							</td>
						</tr>
					</table>
				</div>
				<!-- One "tab" for each step in the form: -->
				<form:form id="regForm" method="post" action="savePost.html"
					modelAttribute="pawnerPost" enctype="multipart/form-data">
					<input type="hidden" name="pawnerPostId" />
					<input type="hidden" name="pawnerId.pawnerId" />
					<!-- Circles which indicates the steps of the form: -->
					<div style="text-align: center;" id="countstep">
						<span class="step"></span> <span class="step"></span> <span
							class="step"></span>
					</div>
					<h4>กรอกข้อมูลการจำนำ</h4>
					<!-- step 1 -->
					<div class="tab" id="step1">
						<p>
							<label>ชื่อสินค้าที่ต้องการจำนำ</label> <input type="text"
								name="pawnerPostName" required="required" maxlength="30">
							<br> <i>ใช้เป็นตัวอักษร ภาษาไทย หรือ อังกฤษ เท่านั้น
								ความยาวไม่เกิน 30 ตัวอักษร</i>
						</p>
						<p>
							<label>ยี่ห้อ</label> <input type="text" name="pawnerPostBrand"
								required="required" maxlength="20" /> <br> <i>ใช้เป็นตัวอักษร
								ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 20 ตัวอักษร </i>
						</p>
						<!-- ------------------------upload image----------------------------  -->
						<div style="margin-top: 15px; width: 100%; position: relative;">
							<span id="picturefiles" style="font-size: 14px;">ลงรูปภาพประกอบการจำนำอย่างน้อย
								1 รูป </span>
							<div class="result">
								<div id="result"></div>
								<input id="files" type="file" name="files" multiple /> <span
									class="clear-trash d-flex"> <label for="files">
										<i class="fas fa-image"></i> เพิ่มรูป
								</label> <i class="ml-auto">ใส่รูปได้สูงสุด 5 รูป</i> <i id="clear"
									class="p-2 fas fa-trash-alt"> ลบรูป</i>
								</span>
							</div>
						</div>
					</div>
					<!-- step 2 -->
					<div class="tab" id="step2"></div>
					<!-- step 3 -->
					<div class="tab" id="step3"></div>
					<!-- Previous & Next button -->
					<div style="overflow: auto;">
						<div style="position: absolute; bottom: 20px; right: 20px;">
							<button type="button" class="pledge-form-btn" id="chooseBtn"
								onclick="choosetype()">เลือกประเภท</button>
							<button type="button" class="pledge-form-btn" id="prevBtn"
								onclick="nextPrev(-1)">ย้อนกลับ</button>
							<button type="button" class="pledge-form-btn" id="nextBtn"
								onclick="nextPrev(1)">ต่อไป</button>
						</div>
					</div>
				</form:form>
			</div>
			<!-- END: .pledge-content -->
		</div>
		<!-- END: .pledge-container -->
	</div>
	<!-- END: .modal -->
	<!-- image review js -->
	<script src="js/imageReview.js"></script>
	<!-- loading page js -->
	<script type="text/javascript" src="js/loadingpage.js"></script>
	<script src="js/MultiStepForm.js"></script>
		<script>
		var bannedmodal = $('#checkbox');
		bannedmodal.click(function() {
			bannedmodal.css("display", "none");
		});
	</script>
</body>
</html>