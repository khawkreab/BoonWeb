<!-- 
// page : index
// version : 1.0
// task : new
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

<title>Boonyong</title>

</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel" data-interval="5000">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img class="d-block img-fluid" src="img/header-bg.jpg"
						alt="First slide">
					<div class="carousel-caption d-none d-md-block">
						<h3>Pledge online</h3>
						<p>Updated every day</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="img/header-gold.jpg"
						alt="Second slide">
					<div class="carousel-caption d-none d-md-block">
						<h3>How to pledge</h3>
						<p>Easy Convenient Fast</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="img/header-bank.jpg"
						alt="Third slide">
					<div class="carousel-caption d-none d-md-block">
						<h3>BoonYong</h3>
						<p>Support your dream</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev">
				<h1>
					<i class="	glyphicon glyphicon-circle-arrow-left"
						aria-hidden="true"></i>
				</h1> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"><h1>
					<i class="	glyphicon glyphicon-circle-arrow-right"
						aria-hidden="true"></i>
				</h1> <span class="sr-only">Next</span> </a>
		</div>
	</div>

	<!--content-->
	<div class="content">
		<div class="container">
			<!--products-->
			<div class="content-mid">
				<h3>Trending Items</h3>
				<label class="line"></label>
				<div class="mid-popular">
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> <a
										href="single.html"><i
										class="glyphicon glyphicon-menu-right icon"></i></a>
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Women</span>
										<h6>
											<a href="single.html">Sed ut perspiciati</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc1.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc1.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> <a
										href="single.html"><i
										class="glyphicon glyphicon-menu-right icon"></i></a>
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Women</span>
										<h6>
											<a href="single.html">At vero eos</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc2.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc2.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> <a
										href="single.html"><i
										class="glyphicon glyphicon-menu-right icon"></i></a>
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Men</span>
										<h6>
											<a href="single.html">Sed ut perspiciati</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc3.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc3.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> <a
										href="single.html"><i
										class="glyphicon glyphicon-menu-right icon"></i></a>
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Women</span>
										<h6>
											<a href="single.html">On the other</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="mid-popular">
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc4.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc4.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> 
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Men</span>
										<h6>
											<a href="single.html">On the other</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc5.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc5.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> <a
										href="single.html"><i
										class="glyphicon glyphicon-menu-right icon"></i></a>
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Men</span>
										<h6>
											<a href="single.html">Sed ut perspiciati</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc6.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc6.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> <a
										href="single.html"><i
										class="glyphicon glyphicon-menu-right icon"></i></a>
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Women</span>
										<h6>
											<a href="single.html">At vero eos</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
						<div class=" mid-pop">
							<div class="pro-img">
								<img src="images/pc7.jpg" class="img-responsive" alt="">
								<div class="zoom-icon ">
									<a class="picture" href="images/pc7.jpg" rel="title"
										class="b-link-stripe b-animate-go  thickbox"><i
										class="glyphicon glyphicon-search icon "></i></a> <a
										href="single.html"><i
										class="glyphicon glyphicon-menu-right icon"></i></a>
								</div>
							</div>
							<div class="mid-1">
								<div class="women">
									<div class="women-top">
										<span>Men</span>
										<h6>
											<a href="single.html">Sed ut perspiciati</a>
										</h6>
									</div>
									<div class="img item_add">
										<a href="#"><img src="images/ca.png" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mid-2">
									<p>
										<label>$100.00</label><em class="item_price">$70.00</em>
									</p>
									<div class="block">
										<div class="starbox small ghosting"></div>
									</div>

									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--//products-->
			<!--brand-->
			<div class="brand">
				<div class="col-md-3 brand-grid">
					<img src="images/ic.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic1.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic2.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic3.png" class="img-responsive" alt="">
				</div>
				<div class="clearfix"></div>
			</div>
			<!--//brand-->
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>