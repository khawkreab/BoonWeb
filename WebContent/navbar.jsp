<!-- 
// page : navber
// version : 8.0
// task : new design
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/764024/profile/profile-512.jpg" />
	</div>
	<div class="content">
		<div class="text">
			<!-- ----------------------------user name & email---------------------------------------- -->
			<span><%=session.getAttribute("username")%></span>
			<span><%=session.getAttribute("email")%></span>
		</div>
		<div id="nav-custom-container">
			<div id="nav-custom-overlay"></div>
			<nav id="nav-custom-fullscreen">
				<ul class="flex d-inline-flex flex-wrap menu-icon">
					<li class="menu-icon">
						<a href="index.html">
							<img src="img/ICONBOONYOUNG/house-outline.png" height="50px" width="50px">
							<i>หน้าหลัก</i>
						</a>
					</li>
					<!-- ----------------------------if user has ban---------------------------------------- -->
					<%
						if (session.getAttribute("pawnerState").equals("Banned")) {
					%>
					<li class="menu-icon">
						<a class="" id="banned">
							<img src="img/ICONBOONYOUNG/Post.png" height="50px" width="50px">
							<i>จำนำของ</i>
						</a>
					</li>
					<%
						} else {
					%>
					<li class="menu-icon">
						<a class="nav-link" href="pawner-post-form-gold.html">
							<img src="img/ICONBOONYOUNG/Post.png" height="50px" width="50px">
							<i>จำนำของ</i>
						</a>
					</li>
					<%
						}
					%>
					<li class="menu-icon">
						<a class="nav-link" href="pawner-off-pledge.html">
							<img src="img/ICONBOONYOUNG/Menu.png" height="50px" width="50px">
							<i>รายการของหลุดจำนำ</i>
						</a>
					</li>
					<li class="menu-icon">
						<a class="nav-link" href="pawner-cart.html">
							<img src="img/ICONBOONYOUNG/shopping-bag.png" height="50px" width="50px">
							<i>ตะกร้า</i>
							<i id="cartNumberlink" class="fas"></i>
						</a>
					</li>
					<li class="menu-icon">
						<a class="nav-link" href="pawner-track-pledge.html">
							<img src="img/ICONBOONYOUNG/Follow.png" height="50px" width="50px">
							<i>ติดตามการจำนำ</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="pawner-post-history.html" class="nav-link ">
							<img src="img/ICONBOONYOUNG/history.png" height="50px" width="50px">
							<i>ประวัติการจำนำ</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="pawner-order.html#loaded" class="nav-link ">
							<img src="img/ICONBOONYOUNG/history.png" height="50px" width="50px">
							<i>ประวัติการสังซื้อ</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="#" class="nav-link ">
							<img src="img/ICONBOONYOUNG/Setting.png" height="50px" width="50px">
							<i>แก้ไขบัญชี</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="logout.html" class="nav-link ">
							<img src="img/ICONBOONYOUNG/log-out.png" height="50px" width="50px">
							<i>ออกจากระบบ</i>
						</a>
					</li>
				</ul>
			</nav>
			<a id="nav-custom-toggle">
				<span></span>
				<span></span>
				<span></span>
				<i id="cartNumber" class="fas"></i>
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
		<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/764024/profile/profile-512.jpg" />
	</div>
	<div class="content">
		<div class="text">
			<!-- ----------------------------user name & email---------------------------------------- -->
			<span><%=session.getAttribute("username")%></span>
			<span><%=session.getAttribute("email")%></span>
		</div>
		<div id="nav-custom-container">
			<div id="nav-custom-overlay"></div>
			<nav id="nav-custom-fullscreen">
				<ul class="flex d-inline-flex flex-wrap menu-icon">
					<li class="menu-icon">
						<a href="index.html">
							<img src="img/ICONBOONYOUNG/house-outline.png" height="50px" width="50px">
							<i>หน้าหลัก </i>
						</a>
					</li>
					<li class="menu-icon">
						<a class="nav-link" href="index.html#pledge">
							<img src="img/ICONBOONYOUNG/Menu.png" height="50px" width="50px">
							<i>รายการของลงจำนำ </i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="pawnshop-pledge-sell.html" class="nav-link ">
							<img src="img/ICONBOONYOUNG/Post.png" height="50px" width="50px">
							<i>ปล่อยของหลุดจำนำ </i>
						</a>
					</li>
					<li class="menu-icon">
						<a class="nav-link" href="pawnshop-track-estimate.html">
							<img src="img/ICONBOONYOUNG/Follow.png" height="50px" width="50px">
							<i>ติดตามการประเมิน</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="pawnshop-estimate-history.html" class="nav-link ">
							<img src="img/ICONBOONYOUNG/history.png" height="50px" width="50px">
							<i>ประวัติการประเมิน</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="pawnshop-list-post.html" class="nav-link ">
							<img src="img/ICONBOONYOUNG/history.png" height="50px" width="50px">
							<i>ประวัติปล่อยของหลุดจำนำ</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="logout.html" class="nav-link ">
							<img src="img/ICONBOONYOUNG/Setting.png" height="50px" width="50px">
							<i>แก้ไขบัญชี</i>
						</a>
					</li>
					<li class="menu-icon">
						<a href="logout.html" class="nav-link ">
							<img src="img/ICONBOONYOUNG/log-out.png" height="50px" width="50px">
							<i>ออกจากระบบ</i>
						</a>
					</li>
				</ul>
			</nav>
			<a id="nav-custom-toggle">
				<span></span>
				<span></span>
				<span></span>
				<i id="cartNumber"></i>
			</a>
		</div>
	</div>
</div>
<%
	}
	} else {
%><!-- ------------------------------not login-------------------------------------- -->
<ul class="flex d-inline-flex" style="position: absolute; top: 10px; right: 10px; list-style: none; z-index: 999">
	<li>
		<a data-toggle="modal" data-target="#modalLogin" class="nav-link " href="#">
			<button class="btn-custom btn-custom-defalt">เข้าสู่ระบบ</button>
		</a>
	</li>
	<li>
		<a href="pawner-register-form.html" class="nav-link ">
			<button class="btn-custom btn-custom-blue">สมัครสมาชิก</button>
		</a>
	</li>
</ul>
<script src="js/checkLogin.js"></script>
<%
	}
%>
<!-- ------------------------------ End -------------------------------------- -->
<script src="js/navbar.js"></script>
<script src="js/jquery.min.js"></script>
<%
	if (session.getAttribute("userType") == "pawner") {
%>
<script type="text/javascript">
	var cartNum = sessionStorage.getItem('pawnercartNumber');

	if (null == cartNum || 0 == cartNum || cartNum == undefined) {
		$("#cartNumberlink").css("display", "none");
	} else {
		$("#cartNumber, #cartNumberlink").css("display", "block");
		$("#cartNumberlink").text(cartNum)
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
						/* checkcart() */
					});

	$(window).resize(resizeNav);

	resizeNav();

	//});
</script>
<!------------------------------------------------ pop-up login-------------------------------------------------->
<div class="modal fade" id="modalLogin" role="dialog">
	<div class="modal-dialog">
		<div class="modal-login modal-content">
			<div class="login-containern">
				<div class="login-left">
					<div class="login">ยินดีตอนรับ</div>
					<div class="login-eula">
						เข้าสู่ระบบจำนำทางออนไลน์
						<br>
						จำนำง่าย จ่ายคล่อง ต้องบุญยง
					</div>
				</div>
				<div class="login-right">
					<div class="form">
						<form method="POST" action="loginProcess.html">
							<!-- email -->
							<label for="email">อีเมลของคุณ</label>
							<input type="text" name="email" required="required" id="email">
							<!-- password -->
							<label for="password">รหัสผ่าน</label>
							<input type="password" id="password" name="password" required="required">
							<!-- login button -->
							<div class="">
								<button type="submit" class="btn-custom btn-custom-defalt">เข้าสู้ระบบ</button>
								<button type="button" data-dismiss="modal" class="btn-custom btn-custom-blue" style="font-size: 15px;">ยกเลิก</button>
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
<div id="bannedmodal" class="modal" style="z-index: 9999">
	<!-- Modal content -->
	<div class="d-flex justify-content-center">
		<div style="display: inline-flex; position: relative; align-items: center; background-color: #fff; width: 50vw; height: 15vh; padding: 15px; border-left: 5px solid #ffc007">
			<div>
				<i class="fas fa-exclamation-circle text-warring" style="font-size: 3rem; padding-right: 15px;"></i>
			</div>
			<div>
				<span class="text-warring" style="font-size: 1.5rem;"> บัญชีของท่านถูกระงับชั่วคราว!!! </span>
				<br>
				<p class="">เนื่องจากการกระทำผิดกฏของทางเว็บไซต์ ท่านสามาถใช้บัญชีตามปกติได้หลังจากการตรวจสอบเสร็จสิ้น</p>
			</div>
			<span class="close" style="position: absolute; right: 5px; top: 0px; cursor: pointer;">&times;</span>
		</div>
	</div>
</div>
<script>
	// Get the modal
	var bannedmodal = $('#bannedmodal');

	// Get the button that opens the modal
	var banned = $("#banned");

	// Get the <span> element that closes the modal
	var close = $(".close");

	// When the user clicks the button, open the modal 
	banned.click(function() {
		bannedmodal.css("display", "block");
	});

	// When the user clicks on <span> (x), close the modal
	bannedmodal.click(function() {
		bannedmodal.css("display", "none");
	});

	// When the user clicks anywhere outside of the modal, close it
	/* window.click(function(event) {
		if (event.target == modal) {
			bannedmodal.css("display" , "none");
		}
	}); */
</script>
<!-- -------------------------------------------------------------------------------------------------- -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>