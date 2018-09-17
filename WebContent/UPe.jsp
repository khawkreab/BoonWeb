<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Crunchify - Spring MVC Upload Multiple Files Example</title>
<!-- <script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
	var i = 1;

	$(document)
			.ready(
					function() {
						//add more file components if Add is clicked
						$('#addFile')
								.click(
										function() {
											var fileIndex = $('#fileTable tr')
													.children().length + 1;
											$('#fileTable')
													.append(
															'<tr><td>'
																	+ '<input type="file" id="upload_file" name="files" onchange="preview_image();" multiple />'
																	
																	+ '</td></tr>');

											i++;
										});

					});

	function preview_image() {
		var total_file = document.getElementById("upload_file").files.length;
		for (var i = 0; i < total_file; i++) {
			$('#image_preview').append(
					"<img src='" + URL.createObjectURL(event.target.files[i])
							+ "'>"+i+"<br>");
		}
	}
</script>
<style type="text/css">
body {
	background-image:
		url('https://cdn.crunchify.com/wp-content/uploads/2013/03/Crunchify.bg_.300.png');
}

img {
	max-width: 180px;
}

input[type=file] {
	padding: 10px;
	background: #2d2d2d;
}
</style>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.form.js"></script>
 -->
<!-- <script>
	$(document).ready(function() {
		$('form').ajaxForm(function() {
			alert("Uploaded SuccessFully");
		});
	});

	function preview_image() {
		var total_file = document.getElementById("upload_file").files.length;
		for (var i = 0; i < total_file; i++) {
			$('#image_preview').append(
					"<img src='" + URL.createObjectURL(event.target.files[i])
							+ "'><br>");
		}
	}
</script> -->


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript">
	$(document).ready(
			function() {
				document.getElementById('pro-image').addEventListener('change',
						readImage, false);

				$(".preview-images-zone").sortable();

				$(document).on('click', '.image-cancel', function() {
					//    let no = $(this).data('no');
					$("[id=clear]").remove();
					$("#pro-image").val('');

				});

				$(document).on('click', '.nn', function() {
					$("[id=clear]").remove();
				});
			});

	$(document).ready(function() {
		$('#pro-image').change(function() {
			var fp = $("#pro-image");
			var lg = fp[0].files.length; // get length
			var items = fp[0].files;
			var fileSize = 0;

			/* if (lg > 0) {
			     for (var i = 0; i < lg; i++) {
			         fileSize = fileSize+items[i].size; // get file size
			     }
			     if(fileSize > 202) {
			          alert('File size must not be more than 2 MB');
			          $('#pro-image').val('');
			     }
			 } */

			if (lg > 3) {
				for (let n = 5; n > 0; n--) {
					$("div[class^='preview-show']").remove();
				}
				alert('File size must not be more than 3 file');
				$('#pro-image').val('');

			}
		});
	});

	var num = 1;

	function readImage() {
		if (window.File && window.FileList && window.FileReader) {
			var files = event.target.files; //FileList object
			var output = $(".preview-images-zone");

			for (let i = 0; i < files.length; i++) {
				var file = files[i];
				if (!file.type.match('image'))
					continue;

				var picReader = new FileReader();

				picReader
						.addEventListener(
								'load',
								function(event) {
									var picFile = event.target;
									var html = '<div class="preview-image preview-show-' + num + '" id="clear">'
											+ '<div class="image-cancel" data-no="' + num + '">x</div>'
											+ '<div class="image-zone"><img id="pro-img-' + num + '" src="' + picFile.result + '"></div></div>';

									output.append(html);
									num = num + 1;
									if (num > 6) {
										num = 1;
									}
								});

				picReader.readAsDataURL(file);
			}

		} else {
			console.log('Browser not support');
		}

	}
</script>
</head>
<body>

	<div class="container">
		<fieldset class="form-group">
			<form:form method="post" action="savefiles.html"
				modelAttribute="uploadForm" enctype="multipart/form-data">
				<a href="javascript:void(0)" onclick="$('#pro-image').click()">Upload
					Image</a>
				<input type="file" id="pro-image" name="files"
					style="display: block;" class="form-control nn" multiple>
				<input type="submit" name='submit_image' value="Upload Image" />
			</form:form>
		</fieldset>
		<div class="preview-images-zone"></div>
	</div>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<%-- 	<div id="wrapper">
		<div id="image_preview"></div>

		<form:form method="post" action="savefiles.html"
			modelAttribute="uploadForm" enctype="multipart/form-data">
			
			<table id="fileTable">
				<tr>
					<td><input type="file" id="upload_file" name="files"
				onchange="preview_image();"/>
						</td>
				</tr>

			</table>
			

			<br />
			<input name="pawnerPostName" type="text" />
			<input type="submit" name='submit_image' value="Upload Image" />
			
			

			<input id="addFile" type="button" value="Add File" />
		</form:form>


	</div> --%>
	<br>
	<br>
	<%-- <div align="center">
		<h1>Crunchify - Spring MVC Upload Multiple Files Example</h1>

		<div id="fileIndex"></div>
		<form:form method="post" action="savefiles.html"
			modelAttribute="uploadForm" enctype="multipart/form-data">

			<p>Select files to upload. Press Add button to add more file
				inputs.</p>

			<table id="fileTable">
				<tr>
					<td><input name="files" type="file" onchange="readURL(this);" />
						<img id="blah1" src="http://placehold.it/180" alt="your image" /></td>
				</tr>

			</table>
			<br />
			<input name="pawnerPostName" type="text" />
			<br>
			<input type="submit" value="Upload" />
			<input id="addFile" type="button" value="Add File" />
		</form:form>

		<br />
	</div> --%>
</body>
</html>