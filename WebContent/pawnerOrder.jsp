<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ประวัติการสั่งซื้อ</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />

<link rel="stylesheet" href="css/loadingPage.css">
<link rel="stylesheet" href="css/pawnerOder.css">
<link rel="stylesheet" href="css/sorting.css">
</head>
<body style="overflow: hidden; background-color: #eee;">
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!-- loading page -->
	<jsp:include page="loadingpage.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1>ประวัติการสั่งซื้อ</h1>
			<em></em>
			<!--  -->
			<div class="backhome">
				<a href="index.html">หน้าหลัก</a>
				<i class="fas fa-angle-right"></i>
				<a href="pawner-order.html#loaded">ประวัติการสั่งซื้อ</a>
			</div>
			<!--  -->
		</div>
	</div>

	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด <i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Gold')">
			ทองคำ <i class="fas fa-square-full"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Laptop')">
			แลปทอ็อป <i class="fas fa-laptop"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Tv')">
			โทรทัศน์ <i class="fas fa-tv"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Smartphone')">
			โทรศัพท์ <i class="fas fa-mobile-alt"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Watch')">
			นาฬิกา <i class="fas fa-clock"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('Camera')">
			กล้องถ่ายรูป <i class="fas fa-camera-retro"></i>
		</button>
	</div>
	<div id="noitem">ไม่มีรายการ</div>
	<section>
		<div class="order">
			<c:forEach items="${order}" var="order">
				<div
					class="order-list filter-column ${order.pawnshopPostId.pawnshopPostItemType}">
					<div class="d-flex">
						<div class="mr-auto order-title">
							<span> เลขที่สั่งซื้อ #${ order.pawnshopPostId.pawnshopPostCode } </span> <i>
								สั่งซื้อวันที่ <fmt:formatDate pattern="dd MMMM yyyy"
									value="${ order.orderItemDateIn }" />
							</i> <i> จำหน่ายโดย
								<a href="profile.html?usercode=${order.pawnshopPostId.pawnshopId.pawnshopUsercode }">${order.pawnshopPostId.pawnshopId.pawnshopName } </a></i>
						</div>
						<div class="p-2">
							ยอดรวมทั้งสิ้น <strong class="text-orange">${order.pawnshopPostId.pawnshopPostPrice }
							</strong> บาท
						</div>
					</div>
					<line-x></line-x>
					<div class="d-flex align-items-center">
						<span class="p-2"> <img class="img-responsive"
							style="width: 100px; height: 50px; object-fit: contain;"
							src="img/uploadimg/pawnshopPost/${order.pawnshopPostId.pawnshopPostPicture }" />
						</span> <span class="p-2">${order.pawnshopPostId.pawnshopPostName }</span>
						<span class="p-2"> <i class="order-quality"> 1 ชิ้น </i>
						</span> <span class="ml-auto"> <a
							class="btn-custom btn-custom-sky" href="#"
							onClick="select(${order.orderItemId});return false;""> <i
								class="far fa-file-alt"></i> พิมพ์ใบสั่งซื้อ
						</a>
						</span>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- sorting -->
	<script src="js/sorting.js"></script>
	<script type="text/javascript" src="js/loadingpage.js"></script>
	<script>
	/* loading page */
	loadingpage("?success");
	/* print data */
	window.onload = function loading() {
	    if (window.location.hash) {
		document.body.style.overflowY = "auto";
		document.getElementById("loadpage").style.display = "none";
	    }
	    setTimeout(function() {
		if (!window.location.hash) {
		    window.location = window.location + '#loaded';
		    window.location.reload();
		}
	    }, 200);

	}
	/* print data */
	

	function select(e) {
		   var pp = window.open("pawner-print-order.html?order="+e, "_blank",
		    "width=950,height=700"); 
		    pp.print();
		}
    </script>
</body>
</html>