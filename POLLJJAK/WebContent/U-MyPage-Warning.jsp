<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />

<body>

	<c:import url="./common/Nav.jsp" />

	<main id="main">
		<!-- ======= Breadcrumbs Section ======= -->
		 <section class="breadcrumbs">
			<!-- <div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>마이페이지ddd</h2>
					<ol>
						<li><a href="U-main.jsp">플젝폴짝 홈으로</a></li>
						<li>마이페이지</li>
					</ol>
				</div>
			</div> -->
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container" data-aos="fade-up">
				<!-- ====== PageIntro Section ====== -->
				<div class="pageintro">
					<div class="section-title">
						<h6>마이 페이지</h6>
					</div>
				</div>
				<!-- End PageIntro Section -->
				
				<div class="MyPage-Info" style="text-align: center; font-size: small;">
					<img src="assets/img/UserIcon/User-Icon.png" alt=""
						style="width: 60px; height: 60px; padding: 10px;"> <br>
					<button
						style="color: white; background-color: #3498db; width: 20px; height: 20px; border: none; border-radius: 5px;">1</button>
					<span>닉네임</span>
					<p style="margin-bottom: 0px; margin-top: 5px;">4.0/5.0</p>

					<!-- ====== Star ====== 추후 스크립트 처리예정 -->
					<img src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;">
					<!-- End Star -->

					<p>최근 로그인 날짜 : 2022-12-09</p>
				</div>
				<hr>

				<!-- ====== InnerNav ====== -->
				<nav id="navbar" class="navbar" >
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto" href="Inner-page.jsp">정보</a></li>
						<li><a class="nav-link scrollto" href="Inner-page.jsp">프로젝트</a></li>
						<li><a class="nav-link scrollto" href="Inner-page.jsp">알림</a></li>
						<li><a class="nav-link scrollto " href="Inner-page.jsp">활동내역</a></li>
					</ul>
					<i class="bi bi-list mobile-nav-toggle"></i>
				</nav>
				<hr>
				<!-- End InnerNav -->

				<div class="section-title" style = "margin-top: 100px;">
					<h6>비밀번호 입력</h6>
					<p>비밀번호 입력 후 마이페이지를 이용하실 수 있습니다</p>
				</div>

				<div class="MyPage-Warning" style="text-align: center; margin-bottom: 100px;" >
					<!-- <p style="font-weight: bold;">패스워드 입력 후 마이페이지를 이용하실 수 있습니다</p> -->
					<div style="margin: 0 auto; width: 300px; text-align: center;">
						<input type="password" class="form-control" id = "pw"
							placeholder="비밀번호를 입력하세요"
							style="background-color: #3498db; color: white;" >
						<button
							style="background-color: #3498db; border-radius: 50px; margin-top: 20px; width: 300px;"
							class="btn btn-default">
							<span style="color: white;">확인</span>
						</button>
					</div>
				</div>
				<hr>
			</div>
		</section>
	</main>
	<!-- End #main -->

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />


	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>
<script>

	$().ready(function(){
		$(".btn").click(function(){
			var target = $("#pw").val();
			// PW 임의 지정
			if(target == "0000")
				{
					$(location).attr("href", "/POLLJJAK/U-MyPage-Info.jsp");
				}
		});
	})

</script>


</html>