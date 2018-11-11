
<!-- 
// page : navber
// version : 8.0
// task : new design
// edit by : khawkreab
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- font icon for this template -->
<link href="vendor/font-awesome/css/fontawesome-all.min.css"
	rel="stylesheet" type="text/css">


<link rel="stylesheet" href="css/customStyle.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/pledgeForm.css">
<link rel="stylesheet" href="css/banner.css">
<link rel="stylesheet" href="css/multiStepForm.css">
<link rel="stylesheet" href="css/navbar.css">
<link href="css/new-design.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="css/formUploadImg.css"> -->


<!-- nabar -->
<!-- ----------------------------login---------------------------------------- -->
<%
	if (session.getAttribute("isLogin") == "yes") {
%>

<%
	if (session.getAttribute("userType") == "pawner") {
%>
<!-- ----------------------------pawner login---------------------------------------- -->
<div class="profile">
	<div class="photo">
		<img
			src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/764024/profile/profile-512.jpg" />
	</div>
	<div class="content">
		<div class="text">
			<!-- ----------------------------user name & email---------------------------------------- -->
			<span><%=session.getAttribute("username")%></span> <span><%=session.getAttribute("email")%></span>
		</div>
		<div id="nav-custom-container">
			<div id="nav-custom-overlay"></div>
			<nav id="nav-custom-fullscreen">
				<ul class="flex d-inline-flex flex-wrap menu-icon">
					<li class="menu-icon"><a href="index.html">หน้าหลัก</a></li>
					<!-- ----------------------------if user has ban---------------------------------------- -->
					<%
						if (session.getAttribute("pawnerState").equals("Banned")) {
					%>
					<li class=""><a class="" id="omn">จำนำของ</a></li>
					<%
						} else {
					%>
					<li class=""><a class="nav-link"
						href="pawner-post-form-gold.html">จำนำของ</a></li>
					<%
						}
					%>
					<li class=""><a class="nav-link" href="pawner-off-pledge.html">รายการของหลุดจำนำ</a></li>
					<li class=""><a class="nav-link" href="pawner-cart.html">ตะกร้า
							<i id="cartNumberlink"></i>
					</a></li>
					<li class=""><a class="nav-link"
						href="pawner-track-pledge.html">ติดตามการจำนำ</a></li>
					<li class=""><a href="pawner-post-history.html"
						class="nav-link ">ประวัติการจำนำ</a></li>
					<li class=""><a href="pawner-order.html" class="nav-link ">ประวัติการสังซื้อ</a></li>
					<li class=""><a href="logout.html" class="nav-link ">แก้ไขบัญชี</a></li>
					<li class=""><a href="logout.html" class="nav-link ">ออกจากระบบ</a></li>

				</ul>
			</nav>

			<a id="nav-custom-toggle"> <span></span> <span></span> <span></span>
				<i id="cartNumber"></i>
			</a>
		</div>
	</div>
</div>



<%
	}else if (session.getAttribute("userType") == "pawnShop") {
%>
<!-- ----------------------------pawshop login---------------------------------------- -->
<div class="profile">
	<div class="photo">
		<img
			src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/764024/profile/profile-512.jpg" />
	</div>
	<div class="content">
		<div class="text">
			<!-- ----------------------------user name & email---------------------------------------- -->
			<span><%=session.getAttribute("username")%></span> <span><%=session.getAttribute("email")%></span>
		</div>
		<div id="nav-custom-container">
			<div id="nav-custom-overlay"></div>
			<nav id="nav-custom-fullscreen">
				<ul class="flex d-inline-flex flex-wrap menu-icon">
					<li class="menu-icon"><a href="index.html">หน้าหลัก</a></li>
					<!-- ----------------------------if user has ban---------------------------------------- -->
					<%
						if (session.getAttribute("pawnshopState").equals("Banned")) {
					%>
					<li class=""><a class="" id="omn"></a></li>
					<%
						} else {
					%>
					<li class=""><a class="nav-link"
						href="pawner-post-form-gold.html">จำนำของ</a></li>
					<%
						}
					%>
					<li class=""><a class="nav-link" href="pawnshop-index.html">รายการของลงจำนำ</a></li>
					<li class=""><a class="nav-link"
						href="pawnshop-track-estimate.html">ติดตามการประเมิน</a></li>
					<li class=""><a href="pawnshop-pledge-sell.html"
						class="nav-link ">ประวัติการขาย</a></li>
					<li class=""><a href="pawnshop-estimate-history.html" class="nav-link ">ประวัติการประเมิน</a></li>
					<li class=""><a href="logout.html" class="nav-link ">แก้ไขบัญชี</a></li>
					<li class=""><a href="logout.html" class="nav-link ">ออกจากระบบ</a></li>

				</ul>
			</nav>

			<a id="nav-custom-toggle"> <span></span> <span></span> <span></span>
				<i id="cartNumber"></i>
			</a>
		</div>
	</div>
</div>


<%
	}
	} else {
%><!-- ------------------------------not login-------------------------------------- -->
<ul class="flex d-inline-flex"
	style="position: absolute; top: 10px; right: 10px; list-style: none">
	<li class="btn-linear btn-linear-two"><a data-toggle="modal"
		data-target="#modalLogin" class="nav-link " href="#"><button
				class="btn-ln">
				เข้าสู่ระบบ
				<div class="fill-two"></div>
			</button></a></li>
	<li class="btn-linear btn-linear-two"><a
		href="pawner-register-form.html" class="nav-link "><button
				class="btn-ln">
				สมัครสมาชิก
				<div class="fill-two"></div>
			</button></a></li>
</ul>
<%
	}
%>
<script src="js/navbar.js"></script>
<script src="js/jquery.min.js"></script>

<%
	if (session.getAttribute("userType") == "pawner") {
%>
<script type="text/javascript">
	window.onload = function checkcart() {

		var cartNum = sessionStorage.getItem('pawnercartNumber');

		if (null == cartNum || 0 == cartNum || cartNum == undefined) {
			$("#cartNumber, #cartNumberlink").css("display", "none");
		} else {
			$("#cartNumber, #cartNumberlink").css("display", "block");
			$("#cartNumber, #cartNumberlink").text(cartNum)
		}
	}
</script>
<%
	}
%>
<script>
	// Set up click and window resize callbacks, then init the nav.
	//$(document).ready(function () {
	$("#nav-custom-toggle")
			.click(
					function() {
						$(
								"#nav-custom-toggle, #nav-custom-overlay, #nav-custom-fullscreen, #cartNumber")
								.toggleClass("open");
						checkcart()
					});

	$(window).resize(resizeNav);

	resizeNav();

	//});
</script>

<%-- <nav class="navbar navbar-expand-lg navbar-black bg-glay navbar-height">
         <div class="container">
             <ul class="navbar-nav ml-auto navbar-hidden">
                 <!-- ----------------------------pawner login---------------------------------------- -->
                 <%
                     if (session.getAttribute("isLogin") == "yes") {
                         if (session.getAttribute("userType") == "pawner") {
                 %>
                 <%
                     if (session.getAttribute("pawnerState").equals("Banned")) {
                 %>
                 <li><a class="nav-link" id="omn">จำนำ</a></li>
                 <%
                     } else {
                 %>
                 <li><a class="nav-link" href="pawner-pledge.html">จำนำ</a></li>
                 <%
                     }
                 %>
                 <li><a class="nav-link" href="pawner-off-pledge.html">รายการของหลุดจำนำ</a></li>
                 <li><a class="nav-link" href="pawner-track-pledge.html">ติดตามการจำนำ</a></li>
                 <li><a class="nav-link" href="pawner-cart.html"><i
                         class="fas fa-shopping-cart"></i><span class="cart-num"
                         id="cartNumber"></span></a></li>
                 <li class="dropdown show"><a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-expanded="false"> <%=session.getAttribute("username")%></a>
 
                     <!-- -----------pawner login drop down menu---------------------- -->
                     <ul class="dropdown-menu" role="menu">
                         <li><p>บัญชีผู้ใช้งาน</p>
                             <div class="navbar-account">
                                 <span class="navbar-account-photo"><i class="fas fa-user"></i></span><span
                                     class="navbar-account-info"><span
                                     class="navbar-account-naem"><%=session.getAttribute("username")%></span><span
                                     class="navbar-account-email"><%=session.getAttribute("email")%></span></span>
                             </div></li>
                         <!--  <li><a href="logout.html" class="nav-link ">แก้ไขบัญชี</a></li> -->
                         <li><a href="pawner-post-history.html" class="nav-link ">ประวัติการจำนำ</a></li>
                         <li><a href="pawner-order.html" class="nav-link ">ประวัติการสังซื้อ</a></li>
                         <li><a href="logout.html" class="nav-link ">ออกจากระบบ</a></li>
                     </ul></li>
                 <!-- -----------------------------pawnShop login--------------------------------------- -->
                 <%
                     } else if (session.getAttribute("userType") == "pawnShop") {
                 %>
                 <%
                     if (session.getAttribute("pawnshopState").equals("Banned")) {
                 %>
                 <li><a class="nav-link" id="omn">ปล่อยของหลุดจำนำ</a></li>
                 <%
                     } else {
                 %>
                 <li><a class="nav-link" href="pawnshop-pledge-sell.html">ปล่อยของหลุดจำนำ</a></li>
                 <%
                     }
                 %>
                 <li><a class="nav-link" href="pawnshop-index.html">รายการของจำนำ</a></li>
                 <li><a class="nav-link" href="pawnshop-track-estimate.html">ติดตามการประเมิน</a></li>
                 <li class="dropdown show"><a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-expanded="false"> <%=session.getAttribute("username")%></a>
                     <!-- -----------pawnShop login drop down menu---------------------- -->
                     <ul class="dropdown-menu" role="menu">
                         <li><p>บัญชีผู้ใช้งาน</p>
                             <div class="navbar-account">
                                 <span class="navbar-account-photo">photo</span><span
                                     class="navbar-account-info"><span
                                     class="navbar-account-naem"><%=session.getAttribute("username")%></span><span
                                     class="navbar-account-email"><%=session.getAttribute("email")%></span></span>
                             </div></li>
                         <!--  <li><a href="logout.html" class="nav-link ">แก้ไขบัญชี</a></li> -->
                         <li><a href="pawnshop-estimate-history.html"
                             class="nav-link ">ประวัติการประเมิณของจำนำ</a></li>
                         <li><a href="pawnshop-list-post.html" class="nav-link ">ประวัติการปล่อยของหลุดจำนำ</a></li>
                         <li><a href="logout.html" class="nav-link ">ออกจากระบบ</a></li>
                     </ul></li>
                 <!-- ------------------------------not login-------------------------------------- -->
                 <%
                     }
                     } else {
                 %>
                 <li><a data-toggle="modal" data-target="#modalLogin"
                     class="nav-link js-scroll-trigger" href="#">ลงชื่อเข้าใช้</a></li>
                 <li><a href="pawner-register-form.html"
                     class="nav-link js-scroll-trigger">สมัครสมาชิก</a></li>
                 <%
                     }
                 %>
 
             </ul>
         </div>
     </nav>
  --%>
<!------------------------------------------------ pop-up login-------------------------------------------------->
<div class="modal fade" id="modalLogin" role="dialog">
	<div class="modal-dialog">
		<div class="modal-login modal-content">
			<div class="containern">
				<div class="left">
					<div class="login">ยินดีตอนรับ</div>
					<div class="eula">
						เข้าสู่ระบบจำนำทางออนไลน์ <br> จำนำง่าย จ่ายคล่อง ต้องบุญยง
					</div>
				</div>
				<div class="right">

					<div class="form">
						<form method="POST" action="loginProcess.html">
							<!-- email -->
							<label for="email">อีเมลของคุณ</label> <input type="text"
								name="email" required="required" id="email">
							<!-- password -->
							<label for="password">รหัสผ่าน</label> <input type="password"
								id="password" name="password" required="required">
							<!-- login button -->
							<div class="form-group">
								<button type="submit" class="btn btn-sm btn-primary"
									style="margin-right: 40px; font-size: 15px; background-color: #ff7f00; border-color: #9e9e9e00;">เข้าสู้ระบบ
								</button>
								<button type="button" data-dismiss="modal"
									class="btn btn-sm btn-default" style="font-size: 15px;">ยกเลิก</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- ----------------- popup ban -------------------------------  -->
<!-- The Modal -->
<div id="jj" class="modal">

	<!-- Modal content -->
	<div class="modal-content" style="padding: 20px 0 0 50px;">
		<span class="close"
			style="position: absolute; right: 0; padding-right: 30px;">&times;</span>
		<p style="color: #ff0101; text-align: center;">บัญชีของท่านถูกระงับชั่วคราว!!!
			เนื่องจากการกระทำผิดกฏของทางเว็บไซต์
			ท่านสามาถใช้บัญชีตามปกติได้หลังจากการตรวจสอบเสร็จสิ้น</p>
	</div>

</div>

<script>
	// Get the modal
	var modal = document.getElementById('jj');

	// Get the button that opens the modal
	var btn = document.getElementById("omn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>

<!-- -------------------------------------------------------------------------------------------------- -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

