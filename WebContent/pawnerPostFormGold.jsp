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

<title>pawner-post-form</title>
<link href="css/new-design.css" rel="stylesheet">
</head>

<body style="background-color: #f4f4f4; overflow: hidden;">

	<div class="page">
		<div class="pledge-container">
			<div class="pledge-featured">
				<div class="pledge-circle"></div>
				<!--  <img src="#" class="pledge-product" /> -->
			</div>
			<div class="pledge-content">
				<div id="choosetype">

					<h4>
						<p> เลือกประเภทการจำนำ  </p>
					</h4>
					<table>
						<tr>
							<td>
								<!-- type => gold --> <a onclick="showsteptype(1)"><img
									src="img/icon/gold.png" width="150" height="150px"></a>
							</td>
							<td>
								<!-- type => com --> <a id="" onclick="showsteptype(2)"><img
									src="img/icon/com.png" width="150" height="150px"></a>
							</td>
							<td>
								<!-- type => tv --> <a id="" onclick="showsteptype(3)"><img
									src="img/icon/tv.png" width="150" height="150px"></a>
							</td>
						</tr>
						<tr>
							<td>
								<!-- type => Smart Phone --> <a id="" onclick="showsteptype(4)"><img
									src="img/icon/mobile.png" width="150" height="150px"></a>
							</td>
							<td>
								<!-- type => Watch --> <a id="" onclick="showsteptype(5)"><img
									src="img/icon/watch.png" width="150" height="150px"></a>
							</td>
							<td>
								<!-- type => Camera --> <a id="" onclick="showsteptype(6)"><img
									src="img/icon/camera.png" width="150" height="150px"></a>
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
								name="pawnerPostName" required="required"
								pattern="[^'@.,!#$?:^%&*+/=()\\_`{|}~-]{1,30}"> <br>
							<i>ใช้เป็นตัวอักษร ภาษาไทย หรือ อังกฤษ เท่านั้น
								ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ</i>
						</p>
						<p>
							<label>ยี่ห้อ</label> <input type="text" neme="pawnerPostBrand"
								required="required"
								pattern="[^'@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}" /> <br> <i>ใช้เป็นตัวอักษร
								ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 30 ตัวอักษร และ
								ต้องไม่ใช้ อักษรพิเศษ</i>
						</p>
						<!-- ------------------------upload image----------------------------  -->
						<div style="margin-top: 15px; width: 100%">
							<span style="font-size: 14px;">ลงรูปภาพประกอบการจำนำ</span>
							<div class="wrap-input100 " style="border: none;">
								<div class="box-img-list">
									<div class="box box-img-1" style="display: block">
										<div class="box-img-thumb">
											<div class="upload-options js--image-preview" id="img-pic-1">
												<label> <input type="file" class="image-upload"
													accept="image/*" name="files" required="required" />
												</label>
											</div>
										</div>
									</div>
									<div class="box box-img-2">
										<div class="box-img-thumb">
											<div class="upload-options js--image-preview" id="img-pic-2">
												<label> <input type="file" class="image-upload"
													accept="image/*" name="files" />
												</label>
											</div>
										</div>
									</div>
									<div class="box box-img-3">
										<div class="box-img-thumb">
											<div class="upload-options js--image-preview" id="img-pic-3">
												<label> <input type="file" class="image-upload"
													accept="image/*" name="files" />
												</label>
											</div>
										</div>
									</div>
									<div class="box box-img-4">
										<div class="box-img-thumb">
											<div class="upload-options js--image-preview" id="img-pic-4">
												<label> <input type="file" class="image-upload"
													accept="image/*" name="files" />
												</label>
											</div>
										</div>
									</div>
									<div class="box box-img-5">
										<div class="box-img-thumb">
											<div class="upload-options js--image-preview" id="img-pic-5">
												<label> <input type="file" class="image-upload"
													accept="image/*" name="files" />
												</label>
											</div>
										</div>
									</div>
									<div class="box box-img-6">
										<div class="box-img-thumb">
											<div class="upload-options js--image-preview" id="img-pic-6">
												<label> <input type="file" class="image-upload"
													accept="image/*" name="files" />
												</label>
											</div>
										</div>
									</div>
									<span class="clear-trash d-flex"> <i class="mr-auto">ใส่รูปได้สูงสุด
											6 รูป</i><i class="clear-img fas fa-trash-alt"> ลบรูป</i>
									</span>
								</div>
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

	<!-- Navigation   -->
	<jsp:include page="navbar.jsp" />


	<script src="js/MultiStepForm.js"></script>
	<script src="js/upimages.js"></script>
	<script>
		$('#img-pic-1').click(function() {
			$('.box-img-2').css("display", "block");
		});

		$('#img-pic-2').click(function() {
			$('.box-img-3').css("display", "block");
		});
		$('#img-pic-3').click(function() {
			$('.box-img-4').css("display", "block");
		});
		$('#img-pic-4').click(function() {
			$('.box-img-5').css("display", "block");
		});
		$('#img-pic-5').click(function() {
			$('.box-img-6').css("display", "block");
		});

		$('.clear-img').click(function() {
			for (let i = 6; i > 1; i--) {
				$('.box-img-' + i).css("display", "none");
			}
			$('.js--image-preview').css("background-image", "")
			$('.image-upload').val('');
		});

		function initImageUpload(box) {
			let uploadField = box.querySelector('.image-upload');

			uploadField.addEventListener('change', getFile);

			function getFile(e) {
				let file = e.currentTarget.files[0];
				checkType(file);
			}

			function previewImage(file) {
				let thumb = box.querySelector('.js--image-preview'), reader = new FileReader();

				reader.onload = function() {
					thumb.style.backgroundImage = 'url(' + reader.result + ')';
				}
				reader.readAsDataURL(file);
				thumb.className += ' js--no-default';
			}

			function checkType(file) {
				let imageType = /image.*/;
				if (!file.type.match(imageType)) {
					throw 'Datei ist kein Bild';
				} else if (!file) {
					throw 'Kein Bild gewählt';
				} else {
					previewImage(file);
				}
			}

		}

		// initialize box-scope
		var boxes = document.querySelectorAll('.box');

		for (let i = 0; i < boxes.length; i++) {
			if (window.CP.shouldStopExecution(1)) {
				break;
			}
			let box = boxes[i];
			initDropEffect(box);
			initImageUpload(box);
		}
		window.CP.exitedLoop(1);

		/// drop-effect
		function initDropEffect(box) {
			let area, drop, areaWidth, areaHeight, maxDistance, dropWidth, dropHeight, x, y;

			// get clickable area for drop effect
			area = box.querySelector('.js--image-preview');
			area.addEventListener('click', fireRipple);

			function fireRipple(e) {
				area = e.currentTarget
				// create drop
				if (!drop) {
					drop = document.createElement('span');
					drop.className = 'drop';
					this.appendChild(drop);
				}
				// reset animate class
				drop.className = 'drop';

				// calculate dimensions of area (longest side)
				areaWidth = getComputedStyle(this, null).getPropertyValue(
						"width");
				areaHeight = getComputedStyle(this, null).getPropertyValue(
						"height");
				maxDistance = Math.max(parseInt(areaWidth, 10), parseInt(
						areaHeight, 10));

				// set drop dimensions to fill area
				drop.style.width = maxDistance + 'px';
				drop.style.height = maxDistance + 'px';

				// calculate dimensions of drop
				dropWidth = getComputedStyle(this, null).getPropertyValue(
						"width");
				dropHeight = getComputedStyle(this, null).getPropertyValue(
						"height");

				// calculate relative coordinates of click
				// logic: click coordinates relative to page - parent's position relative to page - half of self height/width to make it controllable from the center
				x = e.pageX - this.offsetLeft - (parseInt(dropWidth, 10) / 2);
				y = e.pageY - this.offsetTop - (parseInt(dropHeight, 10) / 2)
						- 30;

				// position drop and animate
				drop.style.top = y + 'px';
				drop.style.left = x + 'px';
				drop.className += ' animate';
				e.stopPropagation();

			}
		}

		//# sourceURL=pen.js
	</script>
</body>

</html>