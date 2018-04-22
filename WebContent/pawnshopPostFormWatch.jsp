<!-- 
// page : pawnshop-post-form-watch
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>pawnshop-post-form</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<style class="cp-pen-styles">
</style>
</head>

<body style="background-color: #f4f4f4;">

	<!-- Navigation   -->
	<jsp:include page="navbar.jsp" />
	<!--banner-->
	<div class="banner-top">
		<h1>นาฬิกาข้อมือ</h1>
		<em></em>
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
								<form:form method="post" action="saveShopPost.html"
									modelAttribute="pawnshopPost" enctype="multipart/form-data">
									<input type="hidden" name="pawnshopPostId" />
									<input type="hidden" name="pawnshopId.pawnshopId" />
									<input type="hidden" name="pawnshopPostItemType"
										value="Electronic" />
									<div class="wrap-input100 validate-input"
										data-validate="Valid email is required: ex@abc.xyz">
										<input class="input100" type="text" name="pawnshopPostName"
											placeholder="ชื่อสินค้าที่ต้องการจำนำ">
									</div>
									<div class="wrap-input100 validate-input"
										style="margin-top: 15px;">
										<select class="input100" name="pawnshopPostBrand"
											required="required">
											<option>ยี่ห้อสินค้า</option>
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
									<div class="wrap-input100 validate-input"
										style="margin-top: 15px;">
										<select class="input100" name="pawnshopPostCase"
											required="required">
											<option>ชนิดของหน้าปัด</option>
											<option>Stainless Steel</option>
											<option>White Gold</option>
											<option>Yellow Gold</option>
											<option>Ceramic</option>
											<option>Pink Gold</option>
											<option>Others (Please specify)</option>
											<option>Unknown</option>
										</select>
									</div>
									<div class="wrap-input100 validate-input"
										style="margin-top: 15px;">
										<select class="input100" name="pawnshopPostBracelet"
											required="required">
											<option>ชนิดของสายรัดข้อมือ</option>
											<option>Stainless Steel</option>
											<option>Gold and Silver</option>
											<option>Gold</option>
											<option>Platinum</option>
											<option>Leather</option>
											<option>Plastic</option>
											<option>Rubber</option>
											<option>Others (Please specify)</option>
											<option>Unknown</option>
										</select>
									</div>
									<div style="margin-top: 15px; width: 100%">
										<span style="font-size: 14px; margin-top: 15px">มีเพรชอยู่บนบริเวณใดบาง</span>
										<div class="wrap-input100 validate-input">
											<select class="input100" name="pawnshopPostDiamond"
												required="required">
												<option>ไม่มี</option>
												<option>มีอยู๋บริเวณหน้าปัด</option>
												<option>มีอยู๋บรเวณสายรัดข้อมือ</option>
												<option>มีอยู๋บนบริเวณตัวเลข</option>
											</select>
										</div>
									</div>

									<!-- ------------------------Production year----------------------------  -->
									<div style="margin-top: 15px; width: 100%">
										<span style="font-size: 14px;">ปีที่ซื้อที่ผลิตสินค้า</span>
										<div class="wrap-input100 validate-input"
											data-validate="Valid email is required: ex@abc.xyz">
											<input class="input100" type="date"
												name="pawnshopPostProduction" placeholder=""> <span
												class="focus-input100"></span>
										</div>
									</div>

									<!-- ------------------------upload image----------------------------  -->
									<div style="margin-top: 15px; width: 100%">
										<span style="font-size: 14px;">ลงรูปภาพประกอบการจำนำ</span>
										<div class="wrap-input100 " style="border: none;">
											<div class="box-img-list">
												<div class="box box-img-1" style="display: block">
													<div class="box-img-thumb">
														<div class="upload-options js--image-preview"
															id="img-pic-1">
															<label> <input type="file" class="image-upload"
																accept="image/*" name="files" />
															</label>
														</div>
													</div>
												</div>
												<div class="box box-img-2">
													<div class="box-img-thumb">
														<div class="upload-options js--image-preview"
															id="img-pic-2">
															<label> <input type="file" class="image-upload"
																accept="image/*" name="files" />
															</label>
														</div>
													</div>
												</div>
												<div class="box box-img-3">
													<div class="box-img-thumb">
														<div class="upload-options js--image-preview"
															id="img-pic-3">
															<label> <input type="file" class="image-upload"
																accept="image/*" name="files" />
															</label>
														</div>
													</div>
												</div>
												<div class="box box-img-4">
													<div class="box-img-thumb">
														<div class="upload-options js--image-preview"
															id="img-pic-4">
															<label> <input type="file" class="image-upload"
																accept="image/*" name="files" />
															</label>
														</div>
													</div>
												</div>
												<div class="box box-img-5">
													<div class="box-img-thumb">
														<div class="upload-options js--image-preview"
															id="img-pic-5">
															<label> <input type="file" class="image-upload"
																accept="image/*" name="files" />
															</label>
														</div>
													</div>
												</div>
												<div class="box box-img-6">
													<div class="box-img-thumb">
														<div class="upload-options js--image-preview"
															id="img-pic-6">
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

									<!-- ------------------------Description----------------------------  -->
									<div class="wrap-input100 validate-input"
										data-validate="Message is required">
										<textarea class="input100" name="pawnshopPostDescription"
											placeholder="รายละเอียดสินค้าเพิ่มเติม"></textarea>
										<span class="focus-input100"></span>
									</div>
									<div class="wrap-input100 validate-input"
										style="margin-top: 15px;">
										<input class="input100" type="text" name="pawnshopPostPrice"
											placeholder="ราคาที่ต้องการขายสินค้า">
									</div>
									<div class="form-group-post float-left">
										<ul>
											<li style="font-size: 14.5px; font-weight: inherit;"><input
												type="checkbox" name="pawnshopPostPackage" value="yes" />
												กล้องบรรจุสินค้า</li>
											<li style="font-size: 14.5px; font-weight: inherit;"><input
												type="checkbox" name="pawnshopPostWarranty" value="yes" />
												ประกันสินค้า Certificate</li>
											<li style="font-size: 14.5px; font-weight: inherit;"><input
												type="checkbox" required="required">
												ฉันยอมรับและตกลง <strong>เงือนไขการใช้งาน</strong>
												ของระบบบุญยง</li>
										</ul>
									</div>
									<div class="container-contact100-form-btn">
										<button type="submit" class="contact100-form-btn">
											ยืนยัน</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/upimages.js"></script>
	<script>
		$(document).ready(function() {

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