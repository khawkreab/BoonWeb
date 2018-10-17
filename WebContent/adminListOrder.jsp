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
    <link rel="icon" type="image/png" sizes="16x16" href="BoonAdmin-images/Boon-logo.png">
    <title>Admin List Order</title>

    <!-- Bootstrap Core CSS -->
    <link href="BoonAdmin-css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->

    <link href="BoonAdmin-css/lib/calendar2/semantic.ui.min.css" rel="stylesheet">
    <link href="BoonAdmin-css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="BoonAdmin-css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="BoonAdmin-css/lib/owl.theme.default.min.css" rel="stylesheet" />
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
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">

        <!-- header header  -->
        <div class="header">

            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- Logo -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="admin-index.html">
                        <!-- Logo icon -->
                        <b><img src="BoonAdmin-images/Boon-logo1.png" alt="homepage" class="dark-logo" /></b>
                        <!--End Logo icon -->
                    </a>
                </div>
                <!-- End Logo -->
                <div class="navbar-collapse">
                    <!-- toggle and nav items -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <!-- Messages -->

                        <!-- End Messages -->
                    </ul>
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0">

                        <!-- Search -->
                        <li class="nav-item hidden-sm-down search-box"> <a class="nav-link hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search here"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li>



                        <!-- Profile -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="BoonAdmin-images/users/5.jpg" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                    <li><a href="logout.html"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
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

                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-table"></i><span class="hide-menu">Tables</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="admin-list-pawner.html">List Pawner</a></li>
                                <li><a href="admin-list-pawnshop.html">List Pawnshop</a></li>
                                <li><a href="admin-list-estimate.html">List Estimate</a></li>
                                <li><a href="admin-list-order.html">List Order</a></li>
                            </ul>
                        </li>


                       </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>

<!-- ---------------------------------------------------------------------------------------------------- -->

<section style="margin-left: 240px">
		<div class="container">
			<div class="history-filter">
				<div class="d-flex">
					<div class="mr-auto p-2">List Order</div>
					 
				</div>
			</div>
		</div>
		<c:forEach items="${adminOList}" var="adOrder">
			<div class="container"><div class="card">
				<div class="history-main">
					<div class="d-flex history-title">
					
				 
					
						<div class="ml-auto p-2">
							<span>${adOrder.pawnshopPostId.pawnshopId.pawnshopName } shop</span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">
 								<div class="pro-img">
									<img class="img-responsive"
										src="images/imageUpload/${adOrder.pawnshopPostPicture }" />
								</div>
							</div>
							<div class="col-sm-7">

								<span class="history-name">${adOrder.pawnshopPostId.pawnshopPostName }
									${adOrder.pawnshopPostId.pawnshopPostBrand } ${adOrder.pawnshopPostId.pawnshopPostTypeCamera }
									${adOrder.pawnshopPostId.pawnshopPostCameraLen } </span>
								<div class="history-detail">
									<ul>

										<!-- Watch,Electronic -->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostModel != null}">
											<li>Model : ${adOrder.pawnshopPostId.pawnshopPostModel}</li>
											<li>Serial : ${adOrder.pawnshopPostId.pawnshopPostSerial}</li>
										</c:if>
										
											<c:if test="${adOrder.pawnshopPostId.pawnshopPostProduction != null}">
											<li>Production : ${adOrder.pawnshopPostId.pawnshopPostProduction}</li>
										</c:if>

										<c:if test="${adOrder.pawnshopPostId.pawnshopPostWarranty != null}">
											<li>Warranty : ${adOrder.pawnshopPostId.pawnshopPostWarranty}</li>
										</c:if>
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostPurchase != null}">
											<li>Purchase : ${adOrder.pawnshopPostId.pawnshopPostPurchase }</li>
										</c:if>

										<!-- Gold -->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostPure != null}">
											<li>Pure : ${adOrder.pawnshopPostId.pawnshopPostPure  }</li>
											<li>Weigh : ${adOrder.pawnshopPostId.pawnshopPostWeigh }</li>
											<li>Category : ${adOrder.pawnshopPostId.pawnshopPostCategory }</li>
										</c:if>

										<!-- Watch -->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostCase != null}">
											<li>Case : ${adOrder.pawnshopPostId.pawnshopPostCase }</li>
											<li>Bracelet : ${adOrder.pawnshopPostId.pawnshopPostBracelet }</li>
											<c:if test="${adOrder.pawnshopPostId.pawnshopPostDiamond != null}">
												<li>Diamond : ${adOrder.pawnshopPostId.pawnshopPostDiamond }</li>
											</c:if>
											<c:if test="${adOrder.pawnshopPostId.pawnshopPostPackage != null}">
												<li>Package : ${adOrder.pawnshopPostId.pawnshopPostPackage }</li>
											</c:if>
										</c:if>

										<!-- Electronic tv com telephone -->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostSize != null}">
											<li>Size : ${adOrder.pawnshopPostId.pawnshopPostSize }</li>
										</c:if>

										<!-- Electronic camera com telephone -->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostBattery != null}">
											<li>Battery : ${adOrder.pawnshopPostId.pawnshopPostBattery }</li>
										</c:if>

										<!-- Electronic com telephone -->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostHarddisk != null}">
											<li>Harddisk : ${adOrder.pawnshopPostId.pawnshopPostHarddisk }</li>
										</c:if>

										<!-- Electronic tv -->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostRemote != null}">
											<li>Remote : ${adOrder.pawnshopPostId.pawnshopPostRemote }</li>
										</c:if>

										<!-- Electronic com-->
										<c:if test="${adOrder.pawnshopPostId.pawnshopPostRam != null}">
											<li>Ram : ${adOrder.pawnshopPostId.pawnshopPostRam }</li>
										</c:if> 
										

										<!-- Electronic telephone-->
										<li>Description : ${adOrder.pawnshopPostId.pawnshopPostDescription }</li>
										
										<li>Price : ${adOrder.pawnshopPostId.pawnshopPostPrice }</li>
										
										
										<p>
										
										
										</p>
											
										<li> <h3><span class="badge badge-info">Post By</span></h3></li>
												<li> Pawnshop ID :<span class="badge badge-default"> ${adOrder.pawnshopPostId.pawnshopId.pawnshopId} </span></li>	
												<li> Pawnshop Name :<span class="badge badge-default"> ${adOrder.pawnshopPostId.pawnshopId.pawnshopName} </span></li>
												<li> Pawnshop Mail :<span class="badge badge-default"> ${adOrder.pawnshopPostId.pawnshopId.pawnshopEmail} </span></li>
										<p>
										
										
										</p>
										
										<li> <h3><span class="badge badge-info">Order By</span></h3>	</li>	
												<li> Pawner ID :<span class="badge badge-default"> ${adOrder.pawnerId.pawnerId} </span></li>								 
												<li> Pawner Name :<span class="badge badge-default"> ${adOrder.pawnerId.pawnerFirstname}  ${adOrder.pawnerId.pawnerLastname}</span></li>
												<li> Pawner Mail :<span class="badge badge-default"> ${adOrder.pawnerId.pawnerEmail} </span></li>
												
												
										
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div></div>
		</c:forEach>
	</section>



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
