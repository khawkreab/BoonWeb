<!-- 
// page : index
// version : 1.0
// task : newIndex
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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>B2Pawn</title>


  </head>

  <body id="page-top">

    <!-- Navigation -->

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

    <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong class="text-white">จำนำง่าย จ่ายคล่อง ต้องบุญยง</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">“บุญยง เป็นสื่อกลางในการจำนำ ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์  เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#services">คลิกเพื่อดูรายละเอียด</a>
          </div>
        </div>
      </div>
    </header>
    
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">บริการของเรา</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-gem text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">สะดวก ในการ จำนำ และประเมินราคา</h3> 
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-newspaper text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">ทรัพย์หลุดจำนำ ราคาพิเศษ Update ทุกวัน</h3> 
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-heart text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">พร้อมเคียงข้างทุกปัญหาการเงิน</h3> 
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">สานฝันธุรกิจของคุณ</h3>
            </div>
          </div>
        </div>
      </div>
    </section>



    <section class="bg-dark text-white">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">ติดต่อสอบถาม!</h2>
            <hr class="my-4">
            <!-- <p class="mb-5">Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p> -->
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
            <p>093-9832776</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <p>
              <a href="mailto:blueboy9yin@gmail.com">B2Pawn@sixtytech.com</a>
            </p>
          </div>
        </div>
      </div>
    </section>



    <!-- Bootstrap core JavaScript -->

    <!-- Plugin JavaScript -->
    <script src="Index-css/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="Index-css/js/creative.min.js"></script>

  </body>

</html>
