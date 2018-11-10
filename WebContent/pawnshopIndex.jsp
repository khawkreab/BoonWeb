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
					<div class="col-md-4 float-left result-img" style="height: 122px">
						<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
							<img src="images/imageUpload/${post.pawnerPostPicture }"
							class="img-responsive" alt="">
						</a>
					</div>
					<div class="col-md-8">
						<h2 class="featured text-orange">
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
								${post.pawnerPostName} - ${post.pawnerPostBrand} </a>
						</h2>
						<div class="info-r">
							<span class="text-orange">${post.pawnerPostName}</span> ลงจำนำ
							วันที่<span class="text-black"><fmt:setLocale
									value="en_US" /> <fmt:formatDate type="date" dateStyle="long"
									value="${post.pawnerPostDate }" /></span> โดย <span
								class="text-orange">${post.pawnerId.pawnerFirstname }
								${post.pawnerId.pawnerLastname }</span> จากจังหวัด <span
								class="text-black"> ${post.pawnerId.pawnerProvince }</span>
						</div>
						<div class="text-orange">
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ต้องการประเมิน
							</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

</body>

</html>