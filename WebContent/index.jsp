<!-- 
// page : index
// version : 1.0
// task : new
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>Boonyong</title>

<style>
        body {
            width: 100%;
            background-image: url("img/background/background.jpg");
            background-size: cover;
            overflow-x:hidden; 
        }
    </style>
</head>

<body id="page-top">



	<!--banner-->
	    <!-- element -->
    <header class="d-flex" style="width: 100%; height: 100%; text-align: center; align-items: center;">
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
                    <p class="text-faded mb-5 animated lightSpeedIn delay-1s text-white">“บุญยง เป็นสื่อกลางในการจำนำ
                        ที่มีการรับประเมินราคาสินทรัพย์และปล่อยของหลุดจำนำทางออนไลน์
                        เพื่ออำนวยความสะดวกให้ลูกค้าสามารถเข้าถึงบริการได้ตลอด 24 ชั่วโมง”</p>
                    <div class="animated fadeInLeft delay-1s">
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#services">คลิกเพื่อดูรายละเอียด</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
    
    <!-- footer  -->
	<%-- <jsp:include page="footer.jsp"></jsp:include> --%>

</body>
</html>