<!-- 
// page : pawner-pledge
// version : 1.0
// task : create
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

    <html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>pawner-index</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/new-design.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
                margin: 16px;
                text-align: center;
                width: 201px;
                height: 201px;
            }

            .card-icon:hover {
                text-align: center;
                transition: 0.3s;
                box-shadow: 0 0 2px 2px rgba(20, 23, 28, .1), 0 4px 1px 0 rgba(20, 23, 28, .1);
                border: 1px solid #999999;
                transform: scale3d(1.006, 1.006, 1);
            }

            .card-font {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                margin-top: .5rem;
                color: white;
                background-color: #ff7f00;
                text-align: center;
                cursor: pointer;
                width: 100%;
                font-size: 18px;
            }
        </style>
    </head>

    <body id="page-top" style="overflow-y: hidden">


        <!-- Navigation -->
        <jsp:include page="navbar.jsp" />

        <!--content-->
        <div class="content">
            <div class="container">
                <!--products-->
                <div class="content-mid">
                    <h3>Pledge Item</h3>
                    <label class="line"></label>
                    <div class="mid-popular">
                        <div class="scrollbar-auto">
                            <!-- <div class="d-flex flex-row flex-wrap text-center backgroup-icon"> -->
                             <div class="row">
                                <div class="card-icon col-md-2">
                                    <a href="pawner-post-form-gold.html">
                                            <img class="icon" src="img/icon/gold-ingots.png">
                                    </a>
                                </div>
                              <div class="card-icon col-md-2">
                                    <a href="pawner-post-form-watch.html">
                                            <img class="icon" src="img/icon/wristwatch.png">
                                    </a>
                                </div>
                                <div class="card-icon col-md-2">
                                    <a href="pawner-post-form-smartphone.html">
                                            <img class="icon" src="img/icon/smartphone.png">
                                    </a>
                                </div>
                                <div class="card-icon col-md-2">
                                    <a href="pawner-post-form-laptop.html">
                                            <img class="icon" src="img/icon/laptop.png">
                                    </a>
                                </div>
                                <div class="card-icon col-md-2">
                                    <a href="pawner-post-form-camera.html">
                                            <img class="icon" src="img/icon/photo-camera.png">
                                    </a>
                                </div>
                                <div class="card-icon col-md-2">
                                    <a href="pawner-post-form-tv.html">
                                            <img class="icon" src="img/icon/tv.png">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>