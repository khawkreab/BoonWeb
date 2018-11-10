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

</head>

<body id="page-top">

	

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

<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<%-- <jsp:include page="footer.jsp"></jsp:include> --%>

	<!-- Plugin JavaScript -->
	<script src="js/scollbardelay/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/scollbardelay/creative.min.js"></script>
</body>
</html>