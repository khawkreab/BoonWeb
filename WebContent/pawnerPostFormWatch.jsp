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
.box-img-list {
	border: 2px dashed #e6e6e6;
	border-radius: 5px;
	width: 100%;
	display: flex;
	max-width: 1000px;
	align-items: flex-start;
	justify-content: flex-start;
	flex-direction: row;
	flex-wrap: wrap;
}

.box-img-thumb {
	background-image: url(images/icon/pic-ico.png);
	background-repeat: no-repeat;
	background-position: center;
}

.box {
	display: none;
	float: left;
	min-width: 134px;
	height: 102px;
	margin: 10px;
	background-color: white;
	border-radius: 0px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	-webkit-transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
	transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
	overflow: hidden;
}

.upload-options {
	position: relative;
	height: 75px;
	/* background-color: cadetblue; */
	cursor: pointer;
	overflow: hidden;
	text-align: center;
	-webkit-transition: background-color ease-in-out 150ms;
	transition: background-color ease-in-out 150ms;
}

.upload-options:hover {
	/* background-color: #7fb1b3; */
	
}

.upload-options input {
	width: 0.1px;
	height: 0.1px;
	opacity: 0;
	overflow: hidden;
	position: absolute;
	z-index: -1;
}

.upload-options label {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100%;
	height: 100%;
	font-weight: 400;
	text-overflow: ellipsis;
	white-space: nowrap;
	cursor: pointer;
	overflow: hidden;
}

.upload-options label::after {
	/*content: 'photo_size_select_actual';*/
	font-family: 'Material Icons';
	position: absolute;
	font-size: 2.5rem;
	color: #e6e6e6;
	top: calc(50% - 2.5rem);
	left: calc(50% - 1.25rem);
	z-index: 0;
}

.upload-options label span {
	display: inline-block;
	width: 50%;
	height: 100%;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	vertical-align: middle;
	text-align: center;
}

.upload-options label span:hover i.material-icons {
	color: lightgray;
}

.js--image-preview {
	height: 100%;
	width: 100%;
	position: relative;
	overflow: hidden;
	background-image: url("");
	/* background-color: white; */
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
}

.js--image-preview::after {
	/*content: "photo_size_select_actual";*/
	font-family: 'Material Icons';
	position: absolute;
	font-size: 4.5em;
	color: #e6e6e6;
	top: calc(50% - 3rem);
	left: calc(50% - 2.25rem);
	z-index: 0;
}

.js--image-preview.js--no-default::after {
	display: none;
}

i.material-icons {
	-webkit-transition: color 100ms ease-in-out;
	transition: color 100ms ease-in-out;
	font-size: 2.25em;
	line-height: 55px;
	color: white;
	display: block;
}

.drop {
	display: block;
	position: absolute;
	background: rgba(95, 158, 160, 0.2);
	border-radius: 100%;
	-webkit-transform: scale(0);
	transform: scale(0);
}

.animate {
	-webkit-animation: ripple 0.4s linear;
	animation: ripple 0.4s linear;
}

@
-webkit-keyframes ripple { 100% {
	opacity: 0;
	-webkit-transform: scale(2.5);
	transform: scale(2.5);
}

}
@
keyframes ripple { 100% {
	opacity: 0;
	-webkit-transform: scale(2.5);
	transform: scale(2.5);
}
}
</style>
</head>

<body>

	<!-- Navigation   -->
	<jsp:include page="navbar.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h1>Pledge Wearables</h1>
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
								<form:form method="post" action="savePost.html"
									modelAttribute="pawnerPost" enctype="multipart/form-data">
									<input type="hidden" name="pawnerPostId" />
									<input type="hidden" name="pawnerId.pawnerId" />
									<input type="hidden" name="pawnerPostItemType"
										value="Electronic" />
									<div class="wrap-input100 float-left" style="border: none;">
										<!-- <input name="files" type="file" onchange="readURL(this);" /> -->
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
										</div>
									</div>
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
									<label class="label-input100">Production year</label>
									<div class="wrap-input100 validate-input"
										data-validate="Valid email is required: ex@abc.xyz">
										<input class="input100" type="date"
											name="pawnerPostProduction" placeholder=""> <span
											class="focus-input100"></span>
									</div>
									<label class="label-input100">Description</label>
									<div class="wrap-input100 validate-input"
										data-validate="Message is required">
										<textarea class="input100" name="pawnerPostDescription"
											placeholder="Write us a message(optional) "></textarea>
										<span class="focus-input100"></span>
									</div>
									<div class="form-group-post float-left">
										<span style="line-height: 45px;">
											<input type="checkbox" name="pawnerPostPackage" value="yes" />
											Packaging
										</span>
										<span style="line-height: 5px;">
											<input type="checkbox" name="pawnerPostWarranty" value="yes" />
											Warranty Certificate
										</span>
										<span style="line-height: 55px;">
											<input type="checkbox" required="required"> I agree
											to the <strong>trem of service</strong>
										</span>
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