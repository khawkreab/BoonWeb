<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Crunchify - Spring MVC Upload Multiple Files Example</title>
<script
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
							+ "'><br>");
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

</head>
<body>

	<div id="wrapper">
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


	</div>
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