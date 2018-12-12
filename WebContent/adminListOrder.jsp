<!--
// page : admin- list order
// version : 1.0
// task : --
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">
<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="BoonAdmin-images/Boon-logo.png">
<title>Admin List Order</title>

<!-- Bootstrap Core CSS -->
<link href="BoonAdmin-css/lib/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->

<link href="BoonAdmin-css/lib/calendar2/semantic.ui.min.css"
	rel="stylesheet">
<link href="BoonAdmin-css/lib/calendar2/pignose.calendar.min.css"
	rel="stylesheet">
<link href="BoonAdmin-css/lib/owl.carousel.min.css" rel="stylesheet" />
<link href="BoonAdmin-css/lib/owl.theme.default.min.css"
	rel="stylesheet" />
<link href="BoonAdmin-css/helper.css" rel="stylesheet">
<link href="BoonAdmin-css/style.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
<!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>


<body class="fix-header fix-sidebar">
	<!-- Preloader - style you can find in spinners.css -->
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="2" stroke-miterlimit="10" /> </svg>
	</div>
	<!-- Main wrapper  -->
	<div id="main-wrapper">

		<!-- header header  -->
		<div class="header">

			<nav class="navbar top-navbar navbar-expand-md navbar-light">
				<!-- Logo -->
				<div class="navbar-header">
					<a class="navbar-brand" href="admin-index.html"> <!-- Logo icon -->
						<b><img src="BoonAdmin-images/Boon-logo1.png" alt="homepage"
							class="dark-logo" /></b> <!--End Logo icon -->
					</a>
				</div>
				<!-- End Logo -->
				<div class="navbar-collapse">
					<!-- toggle and nav items -->
					<ul class="navbar-nav mr-auto mt-md-0">
						<!-- This is  -->
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up text-muted  "
							href="javascript:void(0)"><i class="mdi mdi-menu"></i></a></li>
						<li class="nav-item m-l-10"><a
							class="nav-link sidebartoggler hidden-sm-down text-muted  "
							href="javascript:void(0)"><i class="ti-menu"></i></a></li>
						<!-- Messages -->

						<!-- End Messages -->
					</ul>
					<!-- User profile and search -->
					<ul class="navbar-nav my-lg-0">

						<!-- Search -->
						<li class="nav-item hidden-sm-down search-box"><a
							class="nav-link hidden-sm-down text-muted  "
							href="javascript:void(0)"><i class="ti-search"></i></a>
							<form class="app-search">
								<input type="text" class="form-control"
									placeholder="Search here"> <a class="srh-btn"><i
									class="ti-close"></i></a>
							</form></li>



						<!-- Profile -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted  " href="#"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
								src="BoonAdmin-images/users/5.jpg" alt="user"
								class="profile-pic" /></a>
							<div class="dropdown-menu dropdown-menu-right animated zoomIn">
								<ul class="dropdown-user">
									<li><a href="logout.html"><i class="fa fa-power-off"></i>
											Logout</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</nav>
		</div>


		<!-- End header header -->
		<!-- Left Sidebar  -->
		<div class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">



						<li class="nav-label">List All</li>

						<li><a class="has-arrow  " href="#" aria-expanded="false"><i
								class="fa fa-table"></i><span class="hide-menu">Tables</span></a>
							<ul aria-expanded="false" class="collapse">
								<li><a href="admin-list-pawner.html">List Pawner</a></li>
								<li><a href="admin-list-pawnshop.html">List Pawnshop</a></li>
								<li><a href="admin-list-estimate.html">List Estimate</a></li>
								<li><a href="admin-list-order.html">List Order</a></li>
							</ul></li>


					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</div>


		<!--------------------------------------------------Gold-------------------------------------------------------->
		<div class="page-wrapper">
			<!-- Bread crumb -->

			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="mr-auto p-2">List Gold</div>
				<table class="table table-striped table-bordered table-hover" id="">
					<thead>
						<tr>
							<th>Picture</th>
							<th>Post Name</th>
							<th>รายละเอียด</th>
							<th>Price</th>  
							 
							<th>Pawner</th>
							<th>Pawnshop</th>
						</tr>
					</thead>
					<c:forEach items="${adminOList}" var="adOrder">
						<c:if
							test="${adOrder.pawnshopPostId.pawnshopPostItemType == 'Gold'}">
							<tbody>
								<tr class="odd gradeX">
									<td><img class="img-responsive"
										src="img/uploadimg/pawnshopPost/${adOrder.pawnshopPostId.pawnshopPostPicture }" /></td>
									<td>${adOrder.pawnshopPostId.pawnshopPostName}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostBrand}
									${adOrder.pawnshopPostId.pawnshopPostPure}
									${adOrder.pawnshopPostId.pawnshopPostWeigh}
									${adOrder.pawnshopPostId.pawnshopPostCategory}
									${adOrder.pawnshopPostId.pawnshopPostDescription}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostPrice }</td> 
									 
									<td>
										<p>
										Pawner ID :<span class="badge badge-default">
											${adOrder.pawnerId.pawnerId} </span> 
										</p><p>
										Pawner Name :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerFirstname}
											${adOrder.pawnerId.pawnerLastname}</span> 
										</p><p>
										Pawner Mail :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerEmail} </span>
										</p>
									</td>
									<td>
										<p>
										Pawnshop ID :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopId} </span>
										</p><p>
										Pawnshop Name :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopName} </span> 
										</p><p>
										Pawnshop Mail :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopEmail} </span>
										</p>
									</td>
								</tr>
							</tbody>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>

		<!--------------------------------------------------Watch-------------------------------------------------------->
		<div class="page-wrapper">
			<!-- Bread crumb -->

			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="mr-auto p-2">List Watch</div>
				<table class="table table-striped table-bordered table-hover" id="">
					<thead>
						<tr>
							<th>Picture</th>
							<th>Post Name</th>
							
							<th>รายละเอียด</th>
							
							<th>Price</th>
							
							<th>Pawner</th>
							<th>Pawnshop</th>
						</tr>
					</thead>
					<c:forEach items="${adminOList}" var="adOrder">
						<c:if
							test="${adOrder.pawnshopPostId.pawnshopPostItemType == 'Watch'}">
							<tbody>
								<tr class="odd gradeX">
									<td><img class="img-responsive"
										src="img/uploadimg/pawnshopPost/${adOrder.pawnshopPostId.pawnshopPostPicture }" /></td>
									<td>${adOrder.pawnshopPostId.pawnshopPostName}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostBrand}
									${adOrder.pawnshopPostId.pawnshopPostCase}
									${adOrder.pawnshopPostId.pawnshopPostBracelet}
									${adOrder.pawnshopPostId.pawnshopPostDiamond}
									${adOrder.pawnshopPostId.pawnshopPostProduction}
									${adOrder.pawnshopPostId.pawnshopPostPackage}
									${adOrder.pawnshopPostId.pawnshopPostWarranty}
									${adOrder.pawnshopPostId.pawnshopPostDescription}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostPrice }</td>
									 
									<td>
										<p>
										Pawner ID :<span class="badge badge-default">
											${adOrder.pawnerId.pawnerId} </span> 
										</p><p>
										Pawner Name :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerFirstname}
											${adOrder.pawnerId.pawnerLastname}</span> 
										</p><p>
										Pawner Mail :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerEmail} </span>
										</p>
									</td>
									<td>
										<p>
										Pawnshop ID :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopId} </span>
										</p><p>
										Pawnshop Name :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopName} </span> 
										</p><p>
										Pawnshop Mail :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopEmail} </span>
										</p>
									</td>
								</tr>
							</tbody>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>

		<!--------------------------------------------------SmartPhone-------------------------------------------------------->
		<div class="page-wrapper">
			<!-- Bread crumb -->

			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="mr-auto p-2">List Watch</div>
				<table class="table table-striped table-bordered table-hover" id="">
					<thead>
						<tr>
							<th>Picture</th>
							<th>Post Name</th>
							
							<th>รายละเอียด</th>
							
							<th>Price</th>
							 
							<th>Pawner</th>
							<th>Pawnshop</th>
						</tr>
					</thead>
					<c:forEach items="${adminOList}" var="adOrder">
						<c:if
							test="${adOrder.pawnshopPostId.pawnshopPostItemType == 'Smartphone'}">
							<tbody>
								<tr class="odd gradeX">
									<td><img class="img-responsive"
										src="img/uploadimg/pawnshopPost/${adOrder.pawnshopPostId.pawnshopPostPicture }" /></td>
									<td>${adOrder.pawnshopPostId.pawnshopPostName}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostBrand}
									${adOrder.pawnshopPostId.pawnshopPostSerial}
									${adOrder.pawnshopPostId.pawnshopPostModel}
									${adOrder.pawnshopPostId.pawnshopPostCapacity}
									${adOrder.pawnshopPostId.pawnshopPostPurchase}
									${adOrder.pawnshopPostId.pawnshopPostProduction}
									${adOrder.pawnshopPostId.pawnshopPostBattery}
									${adOrder.pawnshopPostId.pawnshopPostWarranty}
									${adOrder.pawnshopPostId.pawnshopPostDescription}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostPrice}</td>
																	
									<td>
										<p>
										Pawner ID :<span class="badge badge-default">
											${adOrder.pawnerId.pawnerId} </span> 
										</p><p>
										Pawner Name :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerFirstname}
											${adOrder.pawnerId.pawnerLastname}</span> 
										</p><p>
										Pawner Mail :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerEmail} </span>
										</p>
									</td>
									<td>
										<p>
										Pawnshop ID :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopId} </span>
										</p><p>
										Pawnshop Name :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopName} </span> 
										</p><p>
										Pawnshop Mail :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopEmail} </span>
										</p>
									</td>
								</tr>
							</tbody>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>

		<!--------------------------------------------------Laptop-------------------------------------------------------->
		<div class="page-wrapper">
			<!-- Bread crumb -->

			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="mr-auto p-2">List Laptop</div>
				<table class="table table-striped table-bordered table-hover" id="">
					<thead>
						<tr>
							<th>Picture</th>
							<th>Post Name</th>
							
							<th>รายละเอียด</th>
							
							<th>Price</th>
							 
							<th>Pawner</th>
							<th>Pawnshop</th>
						</tr>
					</thead>
					<c:forEach items="${adminOList}" var="adOrder">
						<c:if
							test="${adOrder.pawnshopPostId.pawnshopPostItemType == 'Laptop'}">
							<tbody>
								<tr class="odd gradeX">
									<td><img class="img-responsive"
										src="img/uploadimg/pawnshopPost/${adOrder.pawnshopPostId.pawnshopPostPicture }" /></td>
									<td>${adOrder.pawnshopPostId.pawnshopPostName}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostBrand}
									${adOrder.pawnshopPostId.pawnshopPostSerial}
									${adOrder.pawnshopPostId.pawnshopPostModel}
									${adOrder.pawnshopPostId.pawnshopPostSize}
									${adOrder.pawnshopPostId.pawnshopPostHarddisk}
									${adOrder.pawnshopPostId.pawnshopPostRam}
									${adOrder.pawnshopPostId.pawnshopPostPurchase}
									${adOrder.pawnshopPostId.pawnshopPostProduction}
									${adOrder.pawnshopPostId.pawnshopPostBattery}
									${adOrder.pawnshopPostId.pawnshopPostWarranty}
									${adOrder.pawnshopPostId.pawnshopPostDescription}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostPrice}</td>
									
									<td>
										<p>
										Pawner ID :<span class="badge badge-default">
											${adOrder.pawnerId.pawnerId} </span> 
										</p><p>
										Pawner Name :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerFirstname}
											${adOrder.pawnerId.pawnerLastname}</span> 
										</p><p>
										Pawner Mail :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerEmail} </span>
										</p>
									</td>
									<td>
										<p>
										Pawnshop ID :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopId} </span>
										</p><p>
										Pawnshop Name :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopName} </span> 
										</p><p>
										Pawnshop Mail :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopEmail} </span>
										</p>
									</td>
								</tr>
							</tbody>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>

		<!--------------------------------------------------Camera-------------------------------------------------------->
		<div class="page-wrapper">
			<!-- Bread crumb -->

			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="mr-auto p-2">List Camera</div>
				<table class="table table-striped table-bordered table-hover" id="">
					<thead>
						<tr>
							<th>Picture</th>
							<th>Post Name</th>
							
							<th>รายละเอียด</th>
							
							<th>Price</th>
							 
							<th>Pawner</th>
							<th>Pawnshop</th>
						</tr>
					</thead>
					<c:forEach items="${adminOList}" var="adOrder">
						<c:if
							test="${adOrder.pawnshopPostId.pawnshopPostItemType == 'Camera'}">
							<tbody>
								<tr class="odd gradeX">
									<td><img class="img-responsive"
										src="img/uploadimg/pawnshopPost/${adOrder.pawnshopPostId.pawnshopPostPicture }" /></td>
									<td>${adOrder.pawnshopPostId.pawnshopPostName}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostBrand}
									${adOrder.pawnshopPostId.pawnshopPostSerial}
									${adOrder.pawnshopPostId.pawnshopPostModel}
									${adOrder.pawnshopPostId.pawnshopPostTypeCamera}
									${adOrder.pawnshopPostId.pawnshopPostCameraLen}
									${adOrder.pawnshopPostId.pawnshopPostPurchase}
									${adOrder.pawnshopPostId.pawnshopPostProduction}
									${adOrder.pawnshopPostId.pawnshopPostBattery}
									${adOrder.pawnshopPostId.pawnshopPostWarranty}
									${adOrder.pawnshopPostId.pawnshopPostDescription}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostPrice}</td>
									
									
									<td>
										<p>
										Pawner ID :<span class="badge badge-default">
											${adOrder.pawnerId.pawnerId} </span> 
										</p><p>
										Pawner Name :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerFirstname}
											${adOrder.pawnerId.pawnerLastname}</span> 
										</p><p>
										Pawner Mail :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerEmail} </span>
										</p>
									</td>
									<td>
										<p>
										Pawnshop ID :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopId} </span>
										</p><p>
										Pawnshop Name :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopName} </span> 
										</p><p>
										Pawnshop Mail :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopEmail} </span>
										</p>
									</td>
								</tr>
							</tbody>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>

		<!--------------------------------------------------TV-------------------------------------------------------->
		<div class="page-wrapper">
			<!-- Bread crumb -->

			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="mr-auto p-2">List Camera</div>
				<table class="table table-striped table-bordered table-hover" id="">
					<thead>
						<tr>
							<th>Picture</th>
							<th>Post Name</th>
						
							<th>รายละเอียด</th>
							
							<th>Price</th>
							 
							<th>Pawner</th>
							<th>Pawnshop</th>
						</tr>
					</thead>
					<c:forEach items="${adminOList}" var="adOrder">
						<c:if test="${adOrder.pawnshopPostId.pawnshopPostItemType == 'Tv'}">
							<tbody>
								<tr class="odd gradeX">
									<td><img class="img-responsive"
										src="img/uploadimg/pawnshopPost/${adOrder.pawnshopPostId.pawnshopPostPicture }" /></td>
									<td>${adOrder.pawnshopPostId.pawnshopPostName}</td>
									<td>${adOrder.pawnshopPostId.pawnshopPostBrand}
									${adOrder.pawnshopPostId.pawnshopPostSerial}
									${adOrder.pawnshopPostId.pawnshopPostModel}
									${adOrder.pawnshopPostId.pawnshopPostSize}
									${adOrder.pawnshopPostId.pawnshopPostPurchase}
									${adOrder.pawnshopPostId.pawnshopPostProduction}
									${adOrder.pawnshopPostId.pawnshopPostRemote}
									${adOrder.pawnshopPostId.pawnshopPostWarranty}
									${adOrder.pawnshopPostId.pawnshopPostDescription}</td>
									<td>${adEstimate.pawnerPostId.pawnerPostPrice}</td>
									
									<td>
										<p>
										Pawner ID :<span class="badge badge-default">
											${adOrder.pawnerId.pawnerId} </span> 
										</p><p>
										Pawner Name :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerFirstname}
											${adOrder.pawnerId.pawnerLastname}</span> 
										</p><p>
										Pawner Mail :<span
										class="badge badge-default">
											${adOrder.pawnerId.pawnerEmail} </span>
										</p>
									</td>
									<td>
										<p>
										Pawnshop ID :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopId} </span>
										</p><p>
										Pawnshop Name :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopName} </span> 
										</p><p>
										Pawnshop Mail :<span class="badge badge-default">
											${adOrder.pawnshopPostId.pawnshopId.pawnshopEmail} </span>
										</p>
									</td>
								</tr>
							</tbody>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>



		<!-- End Page wrapper  -->
	</div>
	<!-- End Wrapper -->
	<!-- All Jquery -->
	<script src="BoonAdmin-js/lib/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="BoonAdmin-js/lib/bootstrap/js/popper.min.js"></script>
	<script src="BoonAdmin-js/lib/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="BoonAdmin-js/jquery.slimscroll.js"></script>
	<!--Menu sidebar -->
	<script src="BoonAdmin-js/sidebarmenu.js"></script>
	<!--stickey kit -->
	<script src="BoonAdmin-js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<!--Custom JavaScript -->


	<!-- Amchart -->
	<script src="BoonAdmin-js/lib/morris-chart/raphael-min.js"></script>
	<script src="BoonAdmin-js/lib/morris-chart/morris.js"></script>
	<script src="BoonAdmin-js/lib/morris-chart/dashboard1-init.js"></script>


	<script src="BoonAdmin-js/lib/calendar-2/moment.latest.min.js"></script>
	<!-- scripit init-->
	<script src="BoonAdmin-js/lib/calendar-2/semantic.ui.min.js"></script>
	<!-- scripit init-->
	<script src="BoonAdmin-js/lib/calendar-2/prism.min.js"></script>
	<!-- scripit init-->
	<script src="BoonAdmin-js/lib/calendar-2/pignose.calendar.min.js"></script>
	<!-- scripit init-->
	<script src="BoonAdmin-js/lib/calendar-2/pignose.init.js"></script>

	<script src="BoonAdmin-js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script src="BoonAdmin-js/lib/owl-carousel/owl.carousel-init.js"></script>
	<script src="BoonAdmin-js/scripts.js"></script>
	<!-- scripit init-->

	<script src="BoonAdmin-js/custom.min.js"></script>


</body>
</html>
