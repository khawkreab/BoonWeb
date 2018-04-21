<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>







<!DOCTYPE html>
<html class=''>
<head>

<style class="cp-pen-styles">
.wrapper {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-ms-flex-direction: row;
	flex-direction: row;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
}

.box {
	display: none;
	float: left;
	min-width: 180px;
	height: 132px;
	margin: 10px;
	background-color: white;
	border-radius: 5px;
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
	height: 132px;
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<h1>Image-upload with preview</h1>
	<div class="wrapper"
		style="border: 1px solid #000; border-radius: 5px;">
		<form:form method="post" action="savefiles.html"
			modelAttribute="uploadForm" enctype="multipart/form-data">
			<div class="box box-img-1" style="display: block">
				<div style="background-color: #000">
					<div class="upload-options js--image-preview" id="img-pic-1">
						<label> <input type="file" class="image-upload"
							accept="image/*" name="files" />
						</label>
					</div>
				</div>
			</div>
			<div class="box box-img-2">
				<div style="background-color: #000">
					<div class="upload-options js--image-preview" id="img-pic-2">
						<label> <input type="file" class="image-upload"
							accept="image/*" name="files" />
						</label>
					</div>
				</div>
			</div>
			<div class="box box-img-3">
				<div style="background-color: #000">
					<div class="upload-options js--image-preview" id="img-pic-3">
						<label> <input type="file" class="image-upload"
							accept="image/*" name="files" />
						</label>
					</div>
				</div>
			</div>
			<div class="box box-img-4">
				<div style="background-color: #000">
					<div class="upload-options js--image-preview" id="img-pic-4">
						<label> <input type="file" class="image-upload"
							accept="image/*" name="files" />
						</label>
					</div>
				</div>
			</div>
			<div class="box box-img-5">
				<div style="background-color: #000">
					<div class="upload-options js--image-preview" id="img-pic-5">
						<label> <input type="file" class="image-upload"
							accept="image/*" name="files" />
						</label>
					</div>
				</div>
			</div>
			<div class="box box-img-6">
				<div style="background-color: #000">
					<div class="upload-options js--image-preview" id="img-pic-6">
						<label> <input type="file" class="image-upload"
							accept="image/*" name="files" />
						</label>
					</div>
				</div>
			</div>

			<button type="submit" name='submit_image'>Upload Image</button>
		</form:form>
		<span id="clear-img">clear</span>
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
			
			$('#clear-img').click(function(){
				for(let i = 6; i>1;i--){
					$('.box-img-'+i).css("display", "none");
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
