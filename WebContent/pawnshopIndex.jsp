<!-- 
// page : pawnshop-index
// version : 3.1
// task : send data to pawnshop-estimate-form
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop</title>

<!-- ----------------------------------checkLogin------------------------------------------  -->
<%-- <script type="text/javascript">
	var checkLogin =
<%=session.getAttribute("isLogin")%>
	;
	if (checkLogin != null) {
		sessionStorage.setItem("login", checkLogin);
	}
</script>
<script src="js/checkLogin.js"></script> --%>


</head>

<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner-top">
		<h1 id="checkpost">รายการของจำนำ</h1>
		<em></em>
	</div>


	<div class="result-group">
	


		<c:forEach items="${pawnerPosts}" var="post">

			<div class="result">
				<div class="row">
					<div class="col-md-4 float-left result-img">
						<img src="images/imageUpload/${post.pawnerPostPicture }" class="img-responsive" alt="">
					</div>
					<div class="col-md-8">
						<h2 class="featured">
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
								${post.pawnerPostName} - ${post.pawnerPostBrand} </a>
						</h2>
						<div class="info-r">
							ต้องการจำนำ <span class="color-orange">${post.pawnerPostName}</span>
							โพสเมื่อ วันที่<span class="color-black"><fmt:setLocale
									value="en_US" /> <fmt:formatDate type="date" dateStyle="long"
									value="${post.pawnerPostDate }" /></span> โดย <span
								class="color-orange">${post.pawnerId.pawnerFirstname }
								${post.pawnerId.pawnerLastname }</span> จากจังหวัด  Province <span
								class="color-black"> ${post.pawnerId.pawnerProvince }</span>
						</div>
						<div>
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ประเมินเลย
							</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<script>
		$(document).ready(function() {
			var featured = $('.featured').length;

			console.log("featured => " + featured)
			if (featured == 0) {
				$('#checkpost').text("ไม่มีรายการของจำนำ")
			}

		});
	</script>

</body>

</html>