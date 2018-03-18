<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Crunchify - Spring MVC Upload Multiple Files Example</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>

var i =1;
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#blah'+i+'').attr('src', e.target.result);
		};

		reader.readAsDataURL(input.files[0]);
	}
}
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
																	+ '   <input type="file" name="files"  onchange="readURL(this);"/>'
																	+'<img id="blah' + i + '" src="http://placehold.it/180" alt="your image" />'
																	+ '</td></tr>');
											
											i++;
										});

					});

	
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<br>
	<br>
	<div align="center">
		<h1>Crunchify - Spring MVC Upload Multiple Files Example</h1>

		<div id="fileIndex"></div>
		<form:form method="post" action="savefiles.html"
			modelAttribute="uploadForm" enctype="multipart/form-data" id="form1"
			runat="server">

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
	</div>
</body>
</html>