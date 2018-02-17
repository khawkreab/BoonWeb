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

            .scrollbar{
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
                box-shadow: 0 0 2px 2px rgba(20, 23, 28, .1), 0 4px 1px 0 rgba(20, 23, 28, .1);
                border: 1px solid #999999;
                border-radius: 4px;
            }
        </style>
    </head>

    <body id="page-top">


        <!-- Navigation -->
        <jsp:include page="navbar.jsp" />

        <section>
            <div class="container">
                <div class="re-contain">
                    <div class="Subhead ">
                        <h2 class="Subhead-heading">Select Pledge Item...</h2>
                        <p class="Subhead-description">We have 7 items</p>
                    </div>
                    <div class="scrollbar-auto">
                        <div class="d-flex flex-row flex-wrap text-center backgroup-icon">
                            <a href="pawner-post-form-gold.html">
                                <div class="p-2 card-icon">
                                    <div>
                                        <img class="icon" src="img/icon/gold-ingots.png">
                                    </div>
                                    <p>Gold</p>
                                </div>
                            </a>
                            <a href="pawner-post-form-watch.html">
                                <div class="p-2 card-icon">
                                    <div>
                                        <img class="icon" src="img/icon/wristwatch.png">
                                        <p>Watch</p>
                                    </div>
                                </div>
                            </a>
                            <a href="pawner-post-form-smartphone.html">
                                <div class="p-2 card-icon">
                                    <div>
                                        <img class="icon" src="img/icon/smartphone.png">
                                        <p>Smart Phone</p>
                                    </div>
                                </div>
                            </a>
                            <a href="pawner-post-form-laptop.html">
                                <div class="p-2 card-icon">
                                    <div>
                                        <img class="icon" src="img/icon/laptop.png">
                                        <p> Laptop</p>
                                    </div>
                                </div>
                            </a>
                            <a href="pawner-post-form-camera.html">
                                <div class="p-2 card-icon">
                                    <div>
                                        <img class="icon" src="img/icon/photo-camera.png">
                                        <p> Camera</p>
                                    </div>
                                </div>
                            </a>
                            <a href="pawner-post-form-tv.html">
                                <div class="p-2 card-icon">
                                    <div>
                                        <img class="icon" src="img/icon/tv.png">
                                        <p>TV</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>

    </html>