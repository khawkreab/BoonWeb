<!-- 
// page : pawner-index
// version : 1.0
// task : new
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Boonyong</title>

<script type="text/javascript">
	var checkLogin = <%= session.getAttribute("isLogin") %>;
/* 	if(checkLogin == null){
		alert("please login");
		window.location ="index.jsp";
	}
	 */
	if(checkLogin != null){
		sessionStorage.setItem("login", "yes");
	}
	</script>

<script src="js/checkLogin.js"></script>
</head>

<body id="page-top">

	
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

<<<<<<< HEAD
	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h1>Items sell</h1>
			<em></em>
		</div>
	</div>
	<!--content-->
	<div class="content">
		<div class="container">
			<!--products-->
			<div class="content-mid">
				<div class="mid-popular">
					<!-- ------------------------------------------------------------------------------- -->
					<c:forEach items="${pawnshopPosts}" var="pawnshopPosts">
						<div class="col-md-3 item-grid simpleCart_shelfItem">
							<div class=" mid-pop">
								<div class="pro-img">
									<a href="post-detail.html?item=${pawnshopPosts.pawnshopPostId}">
										<img
										src="images/imageUpload/${pawnshopPosts.pawnshopPostPicture}"
										class="img-responsive" alt="">
									</a>
									<div class="zoom-icon ">
										<a
											href="post-detail.html?item=${pawnshopPosts.pawnshopPostId}">
											<i class="glyphicon glyphicon-search icon"></i>
										</a>
									</div>
								</div>
								<div class="mid-1">
									<div class="women">
										<div class="women-top">

											<h4>
												<a
													href="post-detail.html?item=${pawnshopPosts.pawnshopPostId}">
													${pawnshopPosts.pawnshopPostName} -
													${pawnshopPosts.pawnshopPostBrand}</a>

											</h4>
											<span>฿${pawnshopPosts.pawnshopPostPrice}</span>
										</div>
										<div class="img item_add">
											<a href="#"><img src="images/ca.png" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="mid-2">
										<p>
											<em class="item_price">Province
												${pawnshopPosts.pawnshopId.pawnshopProvince }</em>
										</p>
										<div class="block">
											<div class="starbox small ghosting"></div>
										</div>

										<div class="clearfix"></div>
									</div>
=======
>>>>>>> master

	<header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h2 class="text-uppercase">
              <strong class="text-white">ยินดีต้อนรับ <br>คุณ  <%=session.getAttribute("username")%> <br>สู่เว็บจำนำออนไลน์</strong>
            </h2>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">“บุญยง เป็นสื่อกลางในการจำนำ ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์  เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#plage">วิธีการจำนำของ</a>
          </div>
        </div>
      </div>
    </header>
    
    <section id="plage">
      <div class="container">
       <img alt="" src="img/Manual.jpg" width="100%">
      </div>
    </section>


	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Plugin JavaScript -->
	<script src="js/scollbardelay/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/scollbardelay/creative.min.js"></script>
</body>
</html>