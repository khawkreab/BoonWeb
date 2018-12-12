<!-- 
// page : index
// version : 1.0
// task : new
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>หน้าหลัก</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<!-- anime css  -->
<link href="css/aos.css" rel="stylesheet">
<!-- time line step css -->
<link rel="stylesheet" href="css/timelineStep.css">
<style type="text/css">
body {
	width: 100%;
	overflow-x: hidden;
	background-color: #222;
}
</style>
<link href="css/pawnerCard.css" rel="stylesheet">
</head>
<body id="page-top">
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!-- loading page -->
	<jsp:include page="loadingpage.jsp" />
	<%
		if (session.getAttribute("isLogin") == "yes") {
	%>
	<!-- ----------------------------login---------------------------------------- -->
	<%
		if (session.getAttribute("userType") == "pawner") {
	%>
	<!-- ----------------------------pawner login---------------------------------------- -->
	
	<section class="section-full text-white d-flex header">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h2 class="text-uppercase">
						<strong class="text-white">
							ยินดีต้อนรับ
							<br>
							คุณ
							<%=session.getAttribute("username")%>
							<br>
							สู่เว็บจำนำออนไลน์
						</strong>
					</h2>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5 animated lightSpeedIn delay-1s">“บุญยง เป็นสื่อกลางในการจำนำ ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<a href="#pawning">
						<button class="btn-custom btn-custom-defalt">วิธีการจำนำของ</button>
					</a>
				</div>
			</div>
		</div>
	</section>
	<section id="pawning" class="section-full">
		<h3 class="text-orange">วิธีการจำนำของ</h3>
		<ul id="timelinecountstep">
			<li class="timeline-step">
				<p>กรอกข้อมูล พร้อมอัพโหลดรูปถ่ายของที่จะจำนำ และตรวจสอบความถูกต้องก่อนโพสของจำนำ</p>
			</li>
			<li class="timeline-step">
				<p>รอโรงรับจำนำมาประเมินราคา</p>
			</li>
			<li class="timeline-step">
				<p>หลังจากได้ราคาที่ถูกใจ ให้ท่านกด "ยืนยัน" โรงรับจำนำจะจำนำของ และปริ้นใบหลักฐานแล้วเดินทางไปที่โรงรับจำนำที่ท่าน ยืนยัน ไว้</p>
			</li>
		</ul>
		<a href="pawner-pledge.html">
			<button class="btn-custom btn-custom-defalt">จำนำของ เดี๋ยวนี้ !!!</button>
		</a>
		<br>
		<br>
		<a href="#buying">
			<button class="btn-custom btn-custom-sky">วิธีซื้อของหลุดจำนำ</button>
		</a>
	</section>
	<section id="buying" class="section-full">
		<h3 class="text-orange">วิธีซื้อของหลุดจำนำ</h3>
		<ul id="timelinecountstep2">
			<li class="timeline-step">
				<p>เข้าสู่เว็บไซต์ บุญยง แล้วไปที่เมนู "รายการของหลูดจำนำ" เพื่อหาของหลุดจำนำที่ถูกใจ</p>
			</li>
			<li class="timeline-step">
				<p>เลือกสินค้าที่ถูกใจลงในตะกร้าสินค้า</p>
			</li>
			<li class="timeline-step">
				<p>ปริ้นใบเสร็จสั่งซื้อและเดินทางไปที่โรงรับจำนำได้ทันที</p>
			</li>
		</ul>
		<a href="pawner-off-pledge.html">
			<button class="btn-custom btn-custom-defalt">ซื้อของหลุดจำนำ</button>
		</a>
	</section>
	<%
		} else if (session.getAttribute("userType") == "pawnShop") {
	%>
	<!-- ----------------------------pawn-shop login---------------------------------------- -->
	<!--banner-->
	<section class="section-full text-white d-flex header">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h2 class="text-uppercase">
						<strong class="text-white">
							ยินดีต้อนรับ
							<br>
							โรงรับจำนำ
							<%=session.getAttribute("username")%>
							<br>
							สู่เว็บจำนำออนไลน์
						</strong>
					</h2>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5 animated lightSpeedIn delay-1s">“บุญยง เป็นสื่อกลางในการจำนำ ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<a href="pawnshop-index.html">
						<button class="btn-custom btn-custom-defalt">ประเมินของจำนำ</button>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- ------------------------------not login-------------------------------------- -->
	<%
		}
		} else {
	%>
	<!--banner-->
	<!-- element -->
	<section class="d-flex header">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<div class="animated lightSpeedIn">
						<img src="img/logos/logofull.png" height="150px">
					</div>
					<h1 class="text-uppercase animated fadeInLeft">
						<strong class="text-white ">จำนำง่าย จ่ายคล่อง ต้องบุญยง</strong>
					</h1>
					<div class="text-uppercase animated bounceInLeft delay-1s">
						<hr>
					</div>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5 animated lightSpeedIn delay-1s text-white">“บุญยง เป็นสื่อกลางในการจำนำ ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
						เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
					<div class="animated fadeInLeft delay-1s">
						<!-- <a href="#services">
							<button class="btn-custom btn-custom-defalt">คลิกเพื่อดูรายละเอียด</button>
						</a> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
		}
	%>
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
						<span id="loginfail">
							<i class="fas fa-exclamation-circle"></i>
							อีเมลหรือรหัสผ่านไม่ถูกต้อง
						</span>
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
									<button type="submit" class="btn-custom btn-custom-defalt">เข้าสู่ระบบ</button>
									<button type="button" data-dismiss="modal" class="btn-custom btn-custom-blue">ยกเลิก</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ----------------- popup regist success -------------------------------  -->
<!-- The Modal -->
<div id="successmodal" class="modal" style="z-index: 9999">
	<!-- Modal content -->
	<div class="d-flex justify-content-center">
		<div style="display: inline-flex; position: relative; align-items: center; background-color: #fff; width: 25vw; height: 10vh; padding: 15px; border-left: 5px solid #039a06;">
			<div>
				<i class="fas fa-check-circle text-success" style="font-size: 2rem; padding-right: 15px;"></i>
			</div>
			<div>
				<span class="text-success" style="font-size: 1.5rem;"> สมัครสมาชิกสำเร็จ </span>
				<br>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
console.log("location.search => "+ location.search)
if (location.search == "?success") {
    $('#successmodal').css("display", "block");
    $('#modalLogin').modal()
    setTimeout(function() {
	$('#successmodal').css("display", "none");
    }, 1500);
    
}


</script>
	<!-- --------------------------------------------------------------------- -->
	<script type="text/javascript" src="js/aos.js"></script>
	<script>
	AOS.init();
    </script>
	<script type="text/javascript">
	// if login fail
	let params = new URLSearchParams(document.location.search.substring(1));
	let loginfail = params.get("login");
	if (loginfail == "fail") {
	    $('#loginfail').css("display", "block")
	    $(document).ready(function() {
		$('#modalLogin').modal()
	    });
	}
    </script>
	<!-- loading page js -->
	<script type="text/javascript" src="js/loadingpage.js"></script>
	<script>
	loadingpage("?isLogin");
    </script>
</body>
</html>