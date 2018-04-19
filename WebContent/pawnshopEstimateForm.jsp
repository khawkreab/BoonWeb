<!-- 
// page : pawnshop-estimate-form
// version : 3.0
// task : design 
// edit by : khawkreab 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<title>pawnshop-estimate-form</title>

<%
	int dataslideto = 0;
	int dataslideto2 = 0;
	String active = "active";
	String active2 = "active";
%>
</head>
<body style="background-color: #f9f9f9">
	<jsp:include page="navbar.jsp" />
	
	<!-- title bar -->
		<div class="title-bar-link">
			<span>หน้าหลัก > ${pawnerPost.pawnerPostItemType} >
				${pawnerPost.pawnerPostName }</span>
		</div>

	<div class="container">
		<div class="item-info-pic row">
			<div class="col-md-10 item-info-pic-list">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel" data-interval="0">

					<div class="carousel-inner" role="listbox">
						<c:forEach var="pic" items="${pictures}">

							<div class="carousel-item <%=active2%>">
								<img class="d-block img-fluid"
									src="images/imageUpload/${pic.picture}" alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<h3>Pledge online</h3>
									<p>Updated every day</p>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="images/imageUpload/${pic.picture}" alt="Second slide">
								<div class="carousel-caption d-none d-md-block">
									<h3></h3>
									<p></p>
								</div>
							</div>
							<%
								dataslideto2++;
									if (dataslideto2 > 0) {
										active2 = "";
									}
							%>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-md-2 item-info-thumb">

				<ol class="">
					<c:forEach var="pic" items="${pictures}">

						<li data-target="#carouselExampleIndicators"
							data-slide-to="<%=dataslideto%>" class="<%=active%>"><img
							class="" src="images/imageUpload/${pic.picture}" alt=""></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"><img
							class="" src="images/imageUpload/${pic.picture}" alt=""></li>
						<%
							dataslideto++;
								if (dataslideto > 0) {
									active = "";
								}
						%>
					</c:forEach>
				</ol>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row item-info">
			<div class="col-md-8">
				<div class="bg-white item-info-content">
					<span class="item-info-location"><i
						class="fas fa-map-marker-alt"></i>
						${pawnerPost.pawnerId.pawnerProvince} <i class="far fa-clock"></i>
						<fmt:setLocale value="en_US" /> <fmt:formatDate type="date"
							dateStyle="long" value="${pawnerPost.pawnerPostDate}" /></span>
					<h3>
						<span class="item-info-title">${pawnerPost.pawnerPostName }
							${pawnerPost.pawnerPostBrand }</span>
					</h3>
					<div>
						${pawnerPost.pawnerPostName }
						<ul class="item-info-list">

							<!-- Watch,Electronic -->
							<c:if test="${pawnerPost.pawnerPostModel != null}">
								<li class="">Production :
									${pawnerPost.pawnerPostProduction}</li>
								<li class="">Model : ${pawnerPost.pawnerPostModel}</li>
								<li class="">Serial : ${pawnerPost.pawnerPostSerial}</li>
								<li class="">Purchase : ${pawnerPost.pawnerPostPurchase }</li>
							</c:if>

							<!-- Gold -->
							<c:if test="${pawnerPost.pawnerPostPure != null}">
								<li class="">Pure : ${pawnerPost.pawnerPostPure  }</li>
								<li class="">Weigh : ${pawnerPost.pawnerPostWeigh }</li>
								<li class="">Category : ${pawnerPost.pawnerPostCategory }</li>
							</c:if>



							<!-- Electronic tv com telephone -->
							<c:if test="${pawnerPost.pawnerPostSize != null}">
								<li class="">Size : ${pawnerPost.pawnerPostSize }</li>
							</c:if>

							<!-- Electronic camera com telephone -->
							<c:if test="${pawnerPost.pawnerPostBattery != null}">
								<li class="">Battery : ${pawnerPost.pawnerPostBattery }</li>
							</c:if>

							<!-- Electronic com telephone -->
							<c:if test="${pawnerPost.pawnerPostHarddisk != null}">
								<li class="">Harddisk : ${pawnerPost.pawnerPostHarddisk }</li>
							</c:if>

							<!-- Electronic com-->
							<c:if test="${pawnerPost.pawnerPostRam != null}">
								<li class="">Ram : ${pawnerPost.pawnerPostRam }</li>
							</c:if>

							<!-- Watch -->
							<c:if test="${pawnerPost.pawnerPostCase != null}">
								<li class="">Case : ${pawnerPost.pawnerPostCase }</li>
								<li class="">Bracelet : ${pawnerPost.pawnerPostBracelet }</li>
								<c:if test="${pawnerPost.pawnerPostDiamond != null}">
									<li class="">Diamond : ${pawnerPost.pawnerPostDiamond }</li>
								</c:if>
								<c:if test="${pawnerPost.pawnerPostPackage != null}">
									<li class=""><span class="glyphicon glyphicon-check"
										aria-hidden="true"> </span> Package</li>
								</c:if>
							</c:if>

							<!-- Electronic tv -->
							<c:if test="${pawnerPost.panwePostRemote != null}">
								<li class=""><span class="glyphicon glyphicon-check"
									aria-hidden="true"> </span> Remote</li>
							</c:if>


							<!-- Watch,Electronic -->
							<c:if test="${pawnerPost.pawnerPostModel != null}">
								<li class=""><span class="glyphicon glyphicon-check"
									aria-hidden="true"> </span> Warranty</li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="col-md-4">
				<div class="bg-white">
					<div class="">
						<ul class="row item-info-estimate">
							<form:form method="post" action="saveEstimate.html"
								commandName="estimate">
								<form:hidden path="estimateId" />
								<form:hidden path="pawnshopId.pawnshopId" />
								<form:hidden path="pawnerPostId.pawnerPostId"
									value="${pawnerPost.pawnerPostId}" />
								<li class="fas fa-info-circle item-info-tip"><span class="">ประเมินราคาสินค้า
										โดยให้เป็นช่วงราคา </span></li>
								<li class="fas fa-tags item-info-price"><span class=""><form:input
											path="estimatePriceMin" class="#" pattern="[0-9]{2,45}"
											required="required" placeholder="Min price" /> - <form:input
											path="estimatePriceMax" class="#" pattern="[0-9]{2,45}"
											required="required" placeholder="Max price" />
										<button type="submit" class="">Estimate</button></span></li>

								<li class="fas fa-user item-info-user"><span>${pawnerPost.pawnerId.pawnerFirstname}
										${pawnerPost.pawnerId.pawnerLastname} </span></li>
								<li class="fas fa-phone item-info-user"><span>088777xxxx</span></li>
							</form:form>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%-- <div class="single">

		<div class="container">
			<div class="col-md-11">
				<div class="col-md-4 grid">
	
				</div>
				<div class="col-md-7 single-top-in">
					<div class="span_2_of_a1 simpleCart_shelfItem">
						<h3>${pawnerPost.pawnerPostName }${pawnerPost.pawnerPostBrand }</h3>
						<p class="in-para">Information</p>
						<div class="price_single">
							<div class="preview">
								<ul class="row">

									<!-- Watch,Electronic -->
									<c:if test="${pawnerPost.pawnerPostModel != null}">
										<li class="col-md-6">Production :
											${pawnerPost.pawnerPostProduction}</li>
										<li class="col-md-6">Model :
											${pawnerPost.pawnerPostModel}</li>
										<li class="col-md-6">Serial :
											${pawnerPost.pawnerPostSerial}</li>
										<li class="col-md-6">Purchase :
											${pawnerPost.pawnerPostPurchase }</li>
									</c:if>

									<!-- Gold -->
									<c:if test="${pawnerPost.pawnerPostPure != null}">
										<li class="col-md-6">Pure : ${pawnerPost.pawnerPostPure  }</li>
										<li class="col-md-6">Weigh : ${pawnerPost.pawnerPostWeigh }</li>
										<li class="col-md-6">Category :
											${pawnerPost.pawnerPostCategory }</li>
									</c:if>



									<!-- Electronic tv com telephone -->
									<c:if test="${pawnerPost.pawnerPostSize != null}">
										<li class="col-md-6">Size : ${pawnerPost.pawnerPostSize }</li>
									</c:if>

									<!-- Electronic camera com telephone -->
									<c:if test="${pawnerPost.pawnerPostBattery != null}">
										<li class="col-md-6">Battery :
											${pawnerPost.pawnerPostBattery }</li>
									</c:if>

									<!-- Electronic com telephone -->
									<c:if test="${pawnerPost.pawnerPostHarddisk != null}">
										<li class="col-md-6">Harddisk :
											${pawnerPost.pawnerPostHarddisk }</li>
									</c:if>

									<!-- Electronic com-->
									<c:if test="${pawnerPost.pawnerPostRam != null}">
										<li class="col-md-6">Ram : ${pawnerPost.pawnerPostRam }</li>
									</c:if>

									<!-- Watch -->
									<c:if test="${pawnerPost.pawnerPostCase != null}">
										<li class="col-md-6">Case : ${pawnerPost.pawnerPostCase }</li>
										<li class="col-md-6">Bracelet :
											${pawnerPost.pawnerPostBracelet }</li>
										<c:if test="${pawnerPost.pawnerPostDiamond != null}">
											<li class="col-md-6">Diamond :
												${pawnerPost.pawnerPostDiamond }</li>
										</c:if>
										<c:if test="${pawnerPost.pawnerPostPackage != null}">
											<li class="col-md-6"><span
												class="glyphicon glyphicon-check" aria-hidden="true">
											</span> Package</li>
										</c:if>
									</c:if>

									<!-- Electronic tv -->
									<c:if test="${pawnerPost.panwePostRemote != null}">
										<li class="col-md-6"><span
											class="glyphicon glyphicon-check" aria-hidden="true">
										</span> Remote</li>
									</c:if>


									<!-- Watch,Electronic -->
									<c:if test="${pawnerPost.pawnerPostModel != null}">
										<li class="col-md-6"><span
											class="glyphicon glyphicon-check" aria-hidden="true">
										</span> Warranty</li>
									</c:if>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Other Detail :</h4>
						<p class="quick_desc">${pawnerPost.pawnerPostDescription }</p>
						<div class="wish-list">By
							${pawnerPost.pawnerId.pawnerFirstname}
							${pawnerPost.pawnerId.pawnerLastname} From
							${pawnerPost.pawnerId.pawnerProvince}</div>
						<div class="quantity">

							<div class="quantity-select row">
								<form:form method="post" action="saveEstimate.html"
									commandName="estimate">
									<form:hidden path="estimateId" />
									<form:hidden path="pawnshopId.pawnshopId" />
									<form:hidden path="pawnerPostId.pawnerPostId"
										value="${pawnerPost.pawnerPostId}" />
									<div class="col-md-4">
										<form:input path="estimatePriceMin" class="#"
											pattern="[0-9]{2,45}" required="required"
											placeholder="Min price" />
									</div>
									<div class="col-md-1">-</div>
									<div class="col-md-4">
										<form:input path="estimatePriceMax" class="#"
											pattern="[0-9]{2,45}" required="required"
											placeholder="Max price" />
									</div>
									<div class="col-md-3">
										<button type="submit" class="item_add hvr-skew-backward">Estimate
											Item</button>
									</div>
								</form:form>
							</div>


						</div>


						<div class="clearfix"></div>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
			<!--//content-->
		</div>
	</div> --%>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>