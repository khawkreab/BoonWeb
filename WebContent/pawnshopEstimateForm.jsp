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

	<section>
		<div class="container">
			<div class="item-info-pic row">
				<div class="col-md-1 item-info-thumb">

					<ol class="">
						<c:forEach var="pic" items="${pictures}">

							<li data-target="#carouselExampleIndicators"
								data-slide-to="<%=dataslideto%>" class="<%=active%>"><img
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
				<div class="col-md-7 item-info-pic-list">

					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel" data-interval="0">

						<div class="carousel-inner" role="listbox">
							<c:forEach var="pic" items="${pictures}">

								<div class="carousel-item <%=active2%>">
									<img class="d-block img-fluid"
										src="images/imageUpload/${pic.picture}" alt="First slide">
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
				<div class="col-md-4 item-info-detail bg-white">
					<div class="item-info-content">
						<span><i class="fas fa-user-circle"> </i>
							${pawnerPost.pawnerId.pawnerFirstname}
							${pawnerPost.pawnerId.pawnerLastname} </span> <span
							class="item-info-location"><i class="fas fa-phone"></i>
							${pawnerPost.pawnerId.pawnerPhone} <i
							class="fas fa-map-marker-alt"></i>
							${pawnerPost.pawnerId.pawnerProvince} </span> <span
							class="item-info-location"><i class="far fa-clock"></i> <fmt:setLocale
								value="en_US" /> <fmt:formatDate type="date" dateStyle="long"
								value="${pawnerPost.pawnerPostDate}" /> </span>
						<div class="line margin-lr-1"></div>
						<h5>
							<span class="item-info-title">${pawnerPost.pawnerPostName }
								${pawnerPost.pawnerPostBrand }</span>
						</h5>
						<div>

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

					<!-- ---------------------- ประเมิน ---------------------  -->
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
											required="required" placeholder="Max price" /> </span></li>

								<li>
									<button type="submit" class="">Estimate</button>
								</li>
							</form:form>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>