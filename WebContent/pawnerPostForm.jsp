<!-- 
// version : 1.0
// task : --
// edit by : 
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

<title>pawner Post Gold</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
	<!-- ---------------------------------------------------------- -->
	<section>
		<div class="d-flex justify-content-around">
			<div class="p-2">
				<img alt="user" src="img/gold.png" height="100" width="100"
					style="margin-bottom: 30px;">
				<h2>เลือกรูปภาพสิ่งของ ของคุณ</h2>
				<p>Upload รูปภาพเพื่อใช้ในการจำนำ</p>
				<br>
				<p class="no-margin">
					หากมีข้อส่งสัยในการใช้งาน <a href="">อ่านเพิ่ม</a>
				</p>
			</div>
			<div class="p-2">
				<!-- ---------------------------------------------------------- -->
				<div class="sign-in-card round">
					<h2>จำนำทอง</h2>

					<form:form method="post" action="saveGold.do" commandName="gold">
						<form:hidden path="goldId" />
						<form:hidden path="pawner.pawnerId" />

						<div class="input-content">
							<div class="form-group">
								<form:select path="goldName" class="form-control"
									placeholder="Category" required="required" >
									<option value="Gold ornament">Gold ornament</option>
									<option value="Gold bars 96.5%">Gold bars 96.5%</option>
									<option value="Gold bars 99.99%">Gold bars 99.99%</option>
									<option value="Gold Master">Gold Master</option>
									<option value="Amulet frame">Amulet frame</option>
								</form:select>
							</div>
							<div class="form-group">
								<form:input path="goldBrand" class="form-control"
									placeholder="Brand" pattern="[A-Za-z]{3,}" required="required" />
							</div>

							<div class="form-group">
								<form:input path="goldWeight" class="form-control"
									placeholder="Weight" pattern="[0-9A-Za-z]{3,}"
									required="required" />
							</div>

							<div class="form-group">
								<form:input path="goldPure" class="form-control"
									placeholder="Purity" pattern="[0-9]+%{1,}" required="required" />
							</div>
						</div>

						<div class="form-group">
							<form:textarea path="goldDetail" class="form-control"
								placeholder="Other information"></form:textarea>
						</div>
						<div class="form-group">
							<label class="custom-file"> <input type="file" id="file"
								class="custom-file-input"> <span
								class="custom-file-control"></span>
							</label>
						</div>

						<input type="submit" class="btn btn-block btn-primary">
					</form:form>
				</div>
			</div>
		</div>


	</section>
	<!-- ---------------------------------------------------------------------- -->

	<jsp:include page="footer.jsp" />
</body>
</html>