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
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>pawner-post-form</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/checkBox.css">

</head>

<body style="background-color: #f4f4f4; overflow: hidden;">

	<div class="page">
		<div class="pledge-container">
			<div class="pledge-featured">
				<div class="pledge-circle pledge-circle-img2"></div>
				<!--  <img src="#" class="pledge-product" /> -->
			</div>
			<div class="pledge-content">
				<div id="choosetype">

					<h4>
						<i>เลือกประเภทการจำนำ</i>
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
				<form:form id="regForm" method="post" action="saveShopPost.html"
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
								name="pawnshopPostName" required="required" maxlength="30">
							<br> <i>ใช้เป็นตัวอักษร ภาษาไทย หรือ อังกฤษ เท่านั้น
								ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ</i>
						</p>
						<ul class='form-list'
							style='display: inline-flex; list-style-type: none;'>
							<li class='form-list-row form-list-row-inline'
								style='margin: auto; margin-right: 100px;'>
								<p>
									<label>ยี่ห้อ</label> <input type="text" name="pawnshopPostBrand"
										required="required" maxlength="20" /> <br> <i>
										ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 20 ตัวอักษร </i>
								</p>
							</li>
							<li class='form-list-row form-list-row-inline'
								style='margin: auto; margin-right: 100px;'>
								<p>
									<label>ราคาที่ต้องการขาย</label> <input type="text"
										name="pawnshopPostPrice" id="amounts" required="required"
										maxlength="6" /> <br> <i>สามารถให้ราคาของ ที่มูลค่าไม่เกิน 6 หลัก</i> <input type="hidden" id="oo" />
								</p>
							</li>
						</ul>
						<!-- ------------------------upload image----------------------------  -->
						<div style="margin-top: 15px; width: 100%; position: relative;">
							<span style="font-size: 14px;" id="picturefiles">ลงรูปภาพประกอบการจำนำ</span>
							<div class="result">
								<div id="result"></div>
								<input id="files" type="file" name="files" multiple /> <span
									class="clear-trash d-flex"> <label for="files">
										<i class="fas fa-image"></i> เพิ่มรูป
								</label><i class="ml-auto">ใส่รูปได้สูงสุด 5 รูป</i><i id="clear"
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

	<!-- Navigation   -->
	<jsp:include page="navbar.jsp" />


	<script src="js/MultiStepFormPawnshop.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			//Check File API support
			if (window.File && window.FileList && window.FileReader) {
				$('#files')
						.on(
								"change",
								function(event) {
									var files = event.target.files; //FileList object
									var output = document
											.getElementById("result");
									for (var i = 0; i < files.length; i++) {
										var file = files[i];
										//Only pics
										// if(!file.type.match('image'))
										if (file.type.match('image.*')) {
											if (files.length < 6) {
												if (this.files[0].size < 2097152) {
													// continue;
													var picReader = new FileReader();
													picReader
															.addEventListener(
																	"load",
																	function(
																			event) {
																		var picFile = event.target;
																		var div = document
																				.createElement("div");
																		div.innerHTML = "<img class='thumbnail' src='" + picFile.result + "'" +
                                "title='preview image'/>";
																		output
																				.insertBefore(
																						div,
																						null);
																	});
													//Read the image
													$('#clear, #result').show();
													picReader
															.readAsDataURL(file);
												} else {
													alert("Image Size is too big. Minimum size is 2MB.");
													$(this).val("");
												}
											} else {
												alert("  คุณสามารถอัพโหลดรูปได้มากสุด 5 รูป    ");
												$(this).val("");
											}
										} else {
											alert("You can only upload image file.");
											$(this).val("");
										}
									}

								});
			} else {
				console.log("Your browser does not support File API");
			}
		}
		$('#files').on("click", function() {
			$('.thumbnail').parent().remove();
			$('result').hide();
			$(this).val("");
		});

		$('#clear').on("click", function() {
			$('.thumbnail').parent().remove();
			$('#result').hide();
			$('#files').val("");
			$(this).hide();
		});
	</script>
	<script>
		(function($, undefined) {

			"use strict";

			// When ready.
			$(function() {
				var $form = $("#regForm");

				var $minNumber = $form.find("#amounts");

				$minNumber.on("keyup", function(event) {
					// When user select text in the document, also abort.
					var selection = window.getSelection().toString();
					if (selection !== '') {
						return;
					}

					// When the arrow keys are pressed, abort.
					if ($.inArray(event.keyCode, [ 38, 40, 37, 39 ]) !== -1) {
						return;
					}

					var $this = $(this);

					// Get the value.
					var minNumber = $this.val();

					var minNumber = minNumber.replace(/[\D\s\._\-]+/g, "");
					minNumber = minNumber ? parseInt(minNumber, 10) : 0;

					$this.val(function() {
						return (minNumber === 0) ? "" : minNumber
								.toLocaleString("en-US");
					});

					document.getElementById("oo").value = minNumber;
				});

				/**
				 * ==================================
				 * When Form Submitted
				 * ==================================
				 */
				/* $form.on( "submit", function( event ) {
				     
				     var $this = $( this );
				     var arr = $this.serializeArray();
				 
				     for (var i = 0; i < arr.length; i++) {
				             arr[i].value = arr[i].value.replace(/[($)\s\._\-]+/g, ''); // Sanitize the values.
				     };
				     
				     console.log("show this => " +arr );
				     
				     event.preventDefault();
				 });
				 */
			});
		})(jQuery);
	</script>

</body>

</html>