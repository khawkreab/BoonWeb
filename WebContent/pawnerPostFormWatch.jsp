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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>pawner-post-form</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<style class="cp-pen-styles">

</style>
</head>

<body>

	<!-- Navigation   -->
	<jsp:include page="navbar.jsp" />
	<!--banner-->
	<div class="banner-top">
			<h1>Pledge Wearables</h1>
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
								<form:form method="post" action="savePost.html"
									modelAttribute="pawnerPost" enctype="multipart/form-data">
									<input type="hidden" name="pawnerPostId" />
									<input type="hidden" name="pawnerId.pawnerId" />
									<input type="hidden" name="pawnerPostItemType"
										value="Electronic" />
									
									<label class="label-input100">Post Name</label>
									<div class="wrap-input100 validate-input"
										data-validate="Valid email is required: ex@abc.xyz">
										<input class="input100" type="text" name="pawnerPostName">
									</div>
									<label class="label-input100">Brand</label>
									<div class="wrap-input100 validate-input">
										<select class="input100" name="pawnerPostBrand"
											required="required">
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
									<label class="label-input100">Type of case</label>
									<div class="wrap-input100 validate-input">
										<select class="input100" name="pawnerPostCase"
											required="required">
											<option>Stainless Steel</option>
											<option>White Gold</option>
											<option>Yellow Gold</option>
											<option>Ceramic</option>
											<option>Pink Gold</option>
											<option>Others (Please specify)</option>
											<option>Unknown</option>
										</select>
									</div>
									<label class="label-input100">Type of bracelet</label>
									<div class="wrap-input100 validate-input">
										<select class="input100" name="pawnerPostBracelet"
											required="required">
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
									<label class="label-input100">Is there any diamonds on
										your timepiece?</label>
									<div class="wrap-input100 validate-input">
										<select class="input100" name="pawnerPostDiamond"
											required="required">
											<option>No</option>
											<option>Dial</option>
											<option>Bezel</option>
											<option>On the digits</option>
										</select>
									</div>
									
									<!-- ------------------------Production year----------------------------  -->
									<label class="label-input100">Production year</label>
									<div class="wrap-input100 validate-input"
										data-validate="Valid email is required: ex@abc.xyz">
										<input class="input100" type="date"
											name="pawnerPostProduction" placeholder=""> <span
											class="focus-input100"></span>
									</div>
									
									<!-- ------------------------upload image----------------------------  -->
									<div class="wrap-input100 float-left" style="border: none;">
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
									
									<!-- ------------------------Description----------------------------  -->
									<label class="label-input100">Description</label>
									<div class="wrap-input100 validate-input"
										data-validate="Message is required">
										<textarea class="input100" name="pawnerPostDescription"
											placeholder="Write us a message(optional) "></textarea>
										<span class="focus-input100"></span>
									</div>
									<div class="form-group-post float-left">
										<ul>
											<li style="line-height: 45px;"><input type="checkbox"
												name="pawnerPostPackage" value="yes" /> Packaging</li>
											<li style="line-height: 5px;"><input type="checkbox"
												name="pawnerPostWarranty" value="yes" /> Warranty
												Certificate</li>
											<li style="line-height: 55px;"><input type="checkbox"
												required="required"> I agree to the <strong>trem
													of service</strong></li>
										</ul>
									</div>
									<div class="container-contact100-form-btn">
										<button type="submit" class="contact100-form-btn">
											Create Post</button>
									</div>
								</form:form>
							</div>
							<!-- Picture -->
							<div class="contact100-more flex-col-c-m"
								style="background-image: url('img/header-bg.jpg');">
								<div class="flex-w size1 p-b-47">
									<div class="txt1 p-r-25">
										<span class="lnr lnr-map-marker"></span>
									</div>

									<div class="flex-col size2">
										<span class="txt1 p-b-20"> Address </span> <span class="txt2">
											Mada Center 8th floor, 379 Hudson St, New York, NY 10018 US </span>
									</div>
								</div>

								<div class="dis-flex size1 p-b-47">
									<div class="txt1 p-r-25">
										<span class="lnr lnr-phone-handset"></span>
									</div>

									<div class="flex-col size2">
										<span class="txt1 p-b-20"> Lets Talk </span> <span
											class="txt3"> +1 800 1236879 </span>
									</div>
								</div>

								<div class="dis-flex size1 p-b-47">
									<div class="txt1 p-r-25">
										<span class="lnr lnr-envelope"></span>
									</div>

									<div class="flex-col size2">
										<span class="txt1 p-b-20"> General Support </span> <span
											class="txt3"> contact@example.com </span>
									</div>
								</div>
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