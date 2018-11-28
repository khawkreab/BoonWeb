<!-- 
// page : pawnshop-estimate-form
// version : 3.0
// task : design 
// edit by : khawkreab 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>pawnshop-estimate-form</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/carddetail.css">
<%
	int dataslideto = 0, dataslideto2 = 0;
	String active = "active", active2 = "active";
%>
</head>
<body style="overflow: hidden;">
	<section class="card-section">
		<div class="card-detail d-flex animated lightSpeedIn">
			<!-- left -->
			<div class="mr-auto card-detail-left">
				<!-- show image -->
				<div class="card-detail-thumbnail">
					<div id="demo" class="carousel card-carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ul class="card-carousel-indicators carousel-indicators">
							<c:forEach var="pic" items="${pictures}">
								<li data-target="#demo" data-slide-to="<%=dataslideto%>" class="<%=active%>">
									<img src="img/uploadImge/${pic.picture}">
								</li>
								<%
									dataslideto++;
										if (dataslideto > 0) {
											active = "";
										}
								%>
							</c:forEach>
						</ul>
						<!-- The slideshow -->
						<div class="carousel-inner card-carousel-inner">
							<c:forEach var="pic" items="${pictures}">
								<div class="carousel-item <%=active2%>">
									<img src="img/uploadImge/${pic.picture}">
								</div>
								<%
									dataslideto2++;
										if (dataslideto2 > 0) {
											active2 = "";
										}
								%>
							</c:forEach>
						</div>
						<!-- Left and right controls -->
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</a>
						<a class="carousel-control-next" href="#demo" data-slide="next">
							<span class="carousel-control-next-icon"></span>
						</a>
					</div>
					<!-- 	<img class="left"
						src="https://cdn2.hubspot.net/hubfs/322787/Mychefcom/images/BLOG/Header-Blog/photo-culinaire-pexels.jpg" /> -->
				</div>
				<!-- end show image -->
				<!-- ---------------------- ประเมิน ---------------------  -->
				<div class="card-estimate">
					<p>
						<i class="fas fa-info-circle item-info-tip">
							<span> ประเมินราคาสินค้า โดยให้เป็นช่วงราคา </span>
						</i>
					</p>
					<!-- ------------- -->
					<form:form method="post" action="saveEstimate.html" commandName="estimate" id="form">
						<form:hidden path="estimateId" />
						<form:hidden path="pawnshopId.pawnshopId" />
						<form:hidden path="pawnerPostId.pawnerPostId" value="${pawnerPost.pawnerPostId}" />
						<!-- ------------- -->
						<ul>
							<li>
								<i class="fas fa-tags item-info-price"></i>
							</li>
							<li>
								<form:input class="#" maxlength="6" required="required" placeholder="Min price" title="กรุณาใสราคา" id="minNumber" onkeyup="check()" path="estimatePriceMin" />
								<span style="color: #ff0000; display: none; position: absolute; bottom: 5px; left: 20px; font-size: .9rem;" id="desError">
									<i class="fas fa-exclamation-circle"> </i>  
									 กรุณาใสราคาจากน้อยไปมาก
								</span>
								<!--<form:input path="estimatePriceMin" type="hidden" id="oo"/>-->
							</li>
							<li>-</li>
							<li>
								<form:input path="estimatePriceMax" class="#" maxlength="6" required="required" placeholder="Max price" title="กรุณาใสราคา" id="maxNumber" onkeyup="check()" />
								<!--<form:input path="estimatePriceMax" type="hidden" id="xx"/> -->
							</li>
							<li>
								<button class="btn-custom btn-custom-defalt" type="submit" id="go" disabled>ให้ราคา</button>
							</li>
						</ul>
						<!-- ------------- -->
					</form:form>
				</div>
			</div>
			<!-- right -->
			<div class="card-detail-right ml-auto">
				<div class="card-detail-title">
					<p>${pawnerPost.pawnerPostName }${pawnerPost.pawnerPostBrand }</p>
					<span>
						<i class="far fa-clock"></i>
						<fmt:setLocale value="en_US" />
						<fmt:formatDate type="date" dateStyle="long" value="${pawnerPost.pawnerPostDate}" />
					</span>
				</div>
				<div class="card-detail-separator"></div>
				<ul class="item-info-list">
					<!-- Watch,Electronic -->
					<c:if test="${pawnerPost.pawnerPostModel != null}">
						<li class="">Production : ${pawnerPost.pawnerPostProduction}</li>
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
							<li class="">
								<span class="glyphicon glyphicon-check" aria-hidden="true"> </span>
								Package
							</li>
						</c:if>
					</c:if>
					<!-- Electronic tv -->
					<c:if test="${pawnerPost.panwePostRemote != null}">
						<li class="">
							<span class="glyphicon glyphicon-check" aria-hidden="true"> </span>
							Remote
						</li>
					</c:if>
					<!-- Watch,Electronic -->
					<c:if test="${pawnerPost.pawnerPostModel != null}">
						<li class="">
							<span class="fas fa-check" aria-hidden="true"> </span>
							Warranty
						</li>
					</c:if>
				</ul>
				<!-- card profile -->
				<div class="card-detail-author">
					<div class="card-detail-separator"></div>
					<span>
						<i class="fas fa-user-circle"> </i>
						${pawnerPost.pawnerId.pawnerFirstname} ${pawnerPost.pawnerId.pawnerLastname}
					</span>
					<span class="item-info-location">
						<i class="fas fa-phone"></i>
						${pawnerPost.pawnerId.pawnerPhone}
						<i class="fas fa-map-marker-alt"></i>
						${pawnerPost.pawnerId.pawnerProvince}
					</span>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</section>
	<jsp:include page="navbar.jsp" />
	<%-- 	<div class="container">
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
		</div>
	</div> --%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		var a;
		var b;

		function check() {
			a = document.getElementById("minNumber").value;
			b = document.getElementById("maxNumber").value;
			checkdd();
		}
		function checkdd() {
			console.log(a);
			console.log(b);

			var resA = a.split(",");
			var aa = resA[0] + resA[1];
			console.log(aa);

			var resB = b.split(",");
			var bb = resB[0] + resB[1];
			console.log(bb);

			var min = parseInt(aa);
			var max = parseInt(bb);
			console.log(min);
			console.log(max);
			if (min < max) {
				document.getElementById("desError").style.display = "none";
				document.getElementById("go").disabled = false;
			} else {
				document.getElementById("desError").style.display = "inline";
				document.getElementById("go").disabled = true;
			}
		}
	</script>
	<script>
		(function($, undefined) {

			"use strict";

			// When ready.
			$(function() {
				var $form = $("#form");

				var $minNumber = $form.find("#minNumber");
				var $maxNumber = $form.find("#maxNumber");

				$minNumber.on("keyup", function(event) {
					// When user select text in the document, also abort.
					var selection = window.getSelection().toString();
					if (selection !== '') {
						return;
					}

					// When the arrow keys are pressed, abort.
					if ($.inArray(event.keyCode, [ 38, 40, 37, 39 ]) !== -1) {
						return;
					}

					var $this = $(this);

					// Get the value.
					var minNumber = $this.val();

					var minNumber = minNumber.replace(/[\D\s\._\-]+/g, "");
					minNumber = minNumber ? parseInt(minNumber, 10) : 0;

					$this.val(function() {
						return (minNumber === 0) ? "" : minNumber
								.toLocaleString("en-US");
					});

					document.getElementById("oo").value = minNumber;
				});

				$maxNumber.on("keyup", function(event) {
					// When user select text in the document, also abort.
					var selection = window.getSelection().toString();
					if (selection !== '') {
						return;
					}

					// When the arrow keys are pressed, abort.
					if ($.inArray(event.keyCode, [ 38, 40, 37, 39 ]) !== -1) {
						return;
					}

					var $this = $(this);

					// Get the value.
					var maxNumber = $this.val();

					var maxNumber = maxNumber.replace(/[\D\s\._\-]+/g, "");
					maxNumber = maxNumber ? parseInt(maxNumber, 10) : 0;

					$this.val(function() {
						return (maxNumber === 0) ? "" : maxNumber
								.toLocaleString("en-US");
					});

					//document.getElementById("xx").value = maxNumber;
				});

				/**
				 * ==================================
				 * When Form Submitted
				 * ==================================
				 */
				/* $form.on( "submit", function( event ) {
				     
				     var $this = $( this );
				     var arr = $this.serializeArray();
				 
				     for (var i = 0; i < arr.length; i++) {
				             arr[i].value = arr[i].value.replace(/[($)\s\._\-]+/g, ''); // Sanitize the values.
				     };
				     
				     console.log("show this => " +arr );
				     
				     event.preventDefault();
				 });
				 */
			});
		})(jQuery);
	</script>
</body>
</html>