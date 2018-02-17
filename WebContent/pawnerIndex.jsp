<!-- 
// page : pawner-index
// version : 1.3
// task : modal select type 
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>pawner-index</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
   <style>
        .icon {
            width: 150px;
            margin: auto;
        }

        .scrollbar-auto {
            overflow-y: auto;
            height: 75%;
        }

        .card-icon {
            border: 1px solid #999999;
            border-radius: 4px;
            margin: 16px;
        }

        .card-icon:hover {
            transition: 0.3s;
            box-shadow: 4px 4px 4px 0 rgba(141, 139, 139, 0.2);
            border: 1px solid #999999;
            border-radius: 4px;
        }
    </style>
</head>

<body id="page-top" style="overflow-y: hidden">


	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<section>
        <div class="container">

            <div class="row">
                <div class="col-md-6">
                    <div class="box-sup">
                        <div class="box-semi text-center">
                            <h1>The 5 Step</h1>
                            <h6>---- easy to pawn ----</h6>
                            <br>
                        </div>
                        <div class="box-semi">
                            <span class="time-line"></span>
                            <ul>
                                <li>
                                    <span class="cycle">1</span> Enter item information</li>
                                <li>
                                    <span class="cycle">2</span> Upload picture and post item
                                </li>
                                <li>
                                    <span class="cycle">3</span> Get offers from pawner shop</li>
                                <li>
                                    <span class="cycle">4</span> Walk in pawn shop</li>
                                <li>
                                    <span class="cycle">5</span> Deal rice again with pawn shop
                                </li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="Subhead ">
                        <h2 class="Subhead-heading">Select Pledge Item...</h2>
                        <p class="Subhead-description">We have 7 items</p>
                    </div>
                    <div class="scrollbar-auto">
                        <div class="d-flex flex-row flex-wrap text-center backgroup-icon">
                        <a href="pawner-post-form-gold.html">
                            <div class="p-2 card-icon">
                                <div class="box-icon">
                                    <img class="icon" src="img/icon/gold-ingots.png">
                                </div>
                                <p>Gold</p>
                            </div>
                            </a>
                            <a href="pawner-post-form-watch.html">
                            <div class="p-2 card-icon">
                                <div class="box-icon">
                                    <img class="icon" src="img/icon/wristwatch.png">
                                    <p>Watch</p>
                                </div>
                            </div>
                            </a>
                            <a href="pawner-post-form-smartphone.html">
                            <div class="p-2 card-icon">
                                <div class="box-icon">
                                    <img class="icon" src="img/icon/smartphone.png">
                                    <p>Smart Phone</p>
                                </div>
                            </div>
                            </a>
                            <a href="pawner-post-form-laptop.html">
                            <div class="p-2 card-icon">
                                <div class="box-icon">
                                    <img class="icon" src="img/icon/laptop.png">
                                    <p> Laptop</p>
                                </div>
                            </div>
                            </a>
                            <a href="pawner-post-form-camera.html">
                            <div class="p-2 card-icon">
                                <div class="box-icon">
                                    <img class="icon" src="img/icon/photo-camera.png">
                                    <p> Camera</p>
                                </div>
                            </div>
                            </a>
                             <a href="pawner-post-form-tv.html">
                            <div class="p-2 card-icon">
                                <div class="box-icon">
                                    <img class="icon" src="img/icon/tv.png">
                                    <p>TV</p>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</body>
</html>