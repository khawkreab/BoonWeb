<!-- 
// page : pawner-profile
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
<title>${pawner.pawnerFirstname} &nbsp; ${pawner.pawnerLastname}</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<!-- import profile css -->
<link rel="stylesheet" href="css/profile.css">
</head>
<body>
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!--  -->
	<section style="padding-top: 0px;">
		<div class="profile-edit">
			<div class="profile-cover">
				<img src="https://png.pngtree.com/thumb_back/fw800/back_pic/00/08/57/41562ad4a92b16a.jpg">
			</div>
			<div class="profile-info">
				<div class="profile-info-left">
					<img id="img" src="img/uploadimg/pawner/${pawner.pawnerPicture}">
					<label for="filed" class="btn-custom btn-custom-sky" style="height: 30px">เปลี่ยนรูป</label>
				</div>
				<div class="profile-info-right">
					<div class="profile-info-title">
						<span>${pawner.pawnerFirstname} &nbsp; ${pawner.pawnerLastname}</span>
						<i>${pawner.pawnerEmail}</i>
					</div>
					<div class="profile-info-overview">
						<div class="profile-info-overview-title">
							<span>ภาพรวม</span>
						</div>
						<div class="profile-info-overview-list">
							<form:form method="post" action="updatePawner.html" modelAttribute="pawner" enctype="multipart/form-data">
								<input id="filed" type='file' name="files" onchange="readURL(this);" />
								<input id="changepic" name="changepicture" type="hidden" value="">
								<div id="showview">
									<br>
									<p>ชื่อ ${pawner.pawnerFirstname} &nbsp; ${pawner.pawnerLastname}</p>
									<p>อีเมล  ${pawner.pawnerEmail}</p>
									<p>เบอร์โทร ${pawner.pawnerPhone}</p>
									<p>จังหวัด ${pawner.pawnerProvince}</p>
									<p>รหัสไปรษณีย์ ${pawner.pawnerZipcode}</p>
									<p>ที่อยู่ ${pawner.pawnerAddress}</p>
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
											<input type="text" name="pawnerFirstname" value="${pawner.pawnerFirstname}" />
											&nbsp;&nbsp; นามสกุล &nbsp;&nbsp;
											<input type="text" name="pawnerLastname" value="${pawner.pawnerLastname}" />
										</li>
										<li>อีเมล</li>
										<li>
											<input type="text"  value="${pawner.pawnerPassword}" readonly/>
										</li>
										<li>รหัสผ่าน</li>
										<li>
											<input type="password" name="pawnerPassword" value="${pawner.pawnerPassword}" />
										</li>
										<li>เบอร์โทร</li>
										<li>
											<input type="text" name="pawnerPhone" value="${pawner.pawnerPhone}" />
										</li>
										<li>จังหวัด</li>
										<li>
											<select id="province" name="pawnerProvince">
												<option value="${pawner.pawnerProvince}">${pawner.pawnerProvince}</option>
											</select>
										</li>
										<li>รหัสไปรษณีย์</li>
										<li>
											<input type="text" name="pawnerZipcode" value="${pawner.pawnerZipcode}" />
										</li>
										<li>ที่อยู่</li>
										<li>
											<textarea name="pawnerAddress">${pawner.pawnerAddress}</textarea>
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
	    window.location.href = 'pawner-edit.html'
	}

	/* 	function cancelpic() {
	 window.location.href = 'pawner-edit.html'
	 } */
    </script>
</body>
</html>