<!-- 
// page : pawnshop-profile
// version : 1.0
// task : --
// edit by : 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>${pawnshop.pawnshopName}</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<!-- import profile css -->
<link rel="stylesheet" href="css/profile.css">
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
	<!--  -->
	<section style="padding-top: 0px;">
		<div class="profile-edit">
			<div class="profile-cover">
				<img src="https://png.pngtree.com/thumb_back/fw800/back_pic/00/08/57/41562ad4a92b16a.jpg">
			</div>
			<div class="profile-info">
				<div class="profile-info-left">
					<img id="img" src="img/uploadimg/pawnshop/${pawnshop.pawnshopPicture}">
					<label for="filed" class="btn-custom btn-custom-sky" style="height: 30px">เปลี่ยนรูป</label>
				</div>
				<div class="profile-info-right">
					<div class="profile-info-title">
						<span>${pawnshop.pawnshopName} </span>
						<i>${pawnshop.pawnshopEmail}</i>
					</div>
					<div class="profile-info-overview">
						<div class="profile-info-overview-title">
							<span>ภาพรวม</span>
						</div>
						<div class="profile-info-overview-list">
							<form:form method="post" action="updatePawnshop.html" modelAttribute="pawnshop" enctype="multipart/form-data">
								<input id="filed" type='file' name="files" onchange="readURL(this);" />
								<input id="changepic" name="changepicture" type="hidden" value="">
								<div id="showview">
									<br>
									<p>ชื่อ ${pawnshop.pawnshopName} </p>
									<p>อีเมล ${pawnshop.pawnshopEmail}</p>
									<p>เบอร์โทร ${pawnshop.pawnshopTel}</p>
									<p>จังหวัด ${pawnshop.pawnshopProvince}</p>
									<p>รหัสไปรษณีย์ ${pawnshop.pawnshopZipcode}</p>
									<p>ที่อยู่ ${pawnshop.pawnshopAddress}</p>
									<div class="d-flex">
										<a id="editbtn" class="ml-auto btn-custom btn-custom-defalt" onclick="edit();">แก้ไข</a>
										<button id="changepicbtn" class="ml-auto btn-custom btn-custom-defalt" onclick="edit();">บันทึก</button>
										&nbsp;&nbsp;&nbsp;
										<a id="cancelbtn" class="btn-custom btn-custom-sky" onclick="cancel();">ยกเลิก</a>
									</div>
								</div>
								<div id="edit">
									<ul>
										<li>ชื่อ</li>
										<li>
											<input type="text" name="pawnshopName" value="${pawnshop.pawnshopName}" />
											
										</li>
										<li>อีเมล</li>
										<li>
											<input type="text" value="${pawnshop.pawnshopEmail}" readonly />
										</li>
										<li>รหัสผ่าน</li>
										<li>
											<input type="password" name="pawnshopPassword" value="${pawnshop.pawnshopPassword}" />
										</li>
										<li>เบอร์โทร</li>
										<li>
											<input type="text" name="pawnshopTel" value="${pawnshop.pawnshopTel}" />
										</li>
										<li>จังหวัด</li>
										<li>
											<select id="province" name="pawnshopProvince">
												<option value="${pawnshop.pawnshopProvince}">${pawnshop.pawnshopProvince}</option>
											</select>
										</li>
										<li>รหัสไปรษณีย์</li>
										<li>
											<input type="text" name="pawnshopZipcode" value="${pawnshop.pawnshopZipcode}" />
										</li>
										<li>ที่อยู่</li>
										<li>
											<textarea name="pawnshopAddress">${pawnshop.pawnshopAddress}</textarea>
										</li>
									</ul>
									<div class="d-flex">
										<button class="ml-auto btn-custom btn-custom-defalt">บันทึก</button>
										&nbsp;&nbsp;&nbsp;
										<a class="btn-custom btn-custom-sky" onclick="cancel();">ยกเลิก</a>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="province/AutoProvince.js"></script>
	<script src="js/Province.js"></script>
	<script type="text/javascript">
	function readURL(input) {
	    $('#changepic').val("change");
	    $('#editbtn').css("display", "none")
	    $('#changepicbtn, #cancelbtn').css("display", "block")
	    if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
		    $('#img').attr('src', e.target.result);
		};

		reader.readAsDataURL(input.files[0]);
	    }
	}

	function edit() {
	    $('#edit').css("display", "block")
	    $('#showview').css("display", "none")
	}

	function cancel() {
	    window.location.href = 'pawnhop-edit-profile.html'
	}

	/* 	function cancelpic() {
	 window.location.href = 'pawnshop-edit.html'
	 } */
    </script>
</body>
</html>