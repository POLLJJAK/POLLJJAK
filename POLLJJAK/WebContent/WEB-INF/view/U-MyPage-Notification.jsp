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
		 <section class="inner-page">
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
						<h2>마이 페이지</h2>
					</div>
				</div>
				<!-- End PageIntro Section -->

				<div class="MyPage-Info"
					style="text-align: center; font-size: small;">
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
					<p>최근 로그인 날짜 : 2023-01-18</p>
				</div>
				<hr>
				<!-- ====== InnerNav ====== -->
				<nav id="navbar" class="navbar">
					<ul style="margin-left: auto; margin-right: auto;">
						<%-- <li><a class="nav-link scrollto active updateform" href="userupdateform.action?user_code=${user_code }">정보</a></li> --%>
						<li><a class="nav-link scrollto updateform" href="#">정보</a></li>
						<%-- <li><a class="nav-link scrollto active updateform" onclick="javascript:pageMove('userupdateform.action', '${user_code }');">정보</a></li> --%>
						<li><a class="nav-link scrollto" href="umypageproject.action?user_code=${user_code }">프로젝트</a></li>
						<li><a class="nav-link scrollto active" href="umypagenotification.action?user_code=${user_code }">알림</a></li>
						<li><a class="nav-link scrollto" href="umypagelog.action?user_code=${user_code }">활동내역</a></li>
					</ul>
					<i class="bi bi-list mobile-nav-toggle"></i>
				</nav>
				<hr>
				<!-- End InnerNav -->

				<!--  ====== User-Notification Section ====== -->
				<div class="form-group row">
					<div class="col-sm-3"></div>
					<label for="form-select" class="col-sm-4 col-form-label">오늘</label>
					<div class="col-sm-2">
						<select class="form-select form-select-sm">
							<option value="none">기간 선택</option>
							<option value="1">1개월 이내</option>
							<option value="3">3개월 이내</option>
							<option value="6">6개월 이내</option>
							<option value="all">전체 기간</option>
						</select>
						<div class="col-sm-3"></div>
					</div>
					<hr>
					<div class="container">
						<div class="personal-news row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6 news">
								<p style="margin-bottom : 0px">
									23.01.01 <br> <span style="color: blue; font-weight: bold;">게시글1</span>에 <b>한은영</b>님이 댓글을 달았습니다.
								</p> 
							</div>
							<div class="col-sm-3"></div>
						</div>	
						<div class="personal-news row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6 news">
								<p style="margin-bottom : 0px">
									23.01.01 <br> <span style="color: blue; font-weight: bold;">게시글2</span>에 <b>김유림</b>님이 좋아요를 달았습니다.
								</p> 
							</div>
							<div class="col-sm-3"></div>
						</div>	
						<div class="personal-news row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6 news">
								<p style="margin-bottom : 0px">
									23.01.01 <br> <span style="color: blue; font-weight: bold;">프로젝트1</span>에 <b>박원석</b>님이 지원하셨습니다.
								</p> 
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="personal-news row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6 news">
								<p style="margin-bottom : 0px">
									23.01.01 <br> <span style="color: blue; font-weight: bold;">프로젝트1</span>에 <b>김인교</b>님이 지원하셨습니다.
								</p> 
							</div>
							<div class="col-sm-3"></div>
						</div>	
						<div class="personal-news row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6 news">
								<p style="margin-bottom : 0px">
									23.01.01 <br> <span style="color: blue; font-weight: bold;">프로필</span>에 <b>기업회원1</b>님이 좋아요를 달았습니다.
								</p> 
							</div>
							<div class="col-sm-3"></div>
						</div>	
						<div class="personal-news row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6 news">
								<p style="margin-bottom : 0px">
									23.01.01 <br> <span style="color: blue; font-weight: bold;">프로필</span>에 <b>기업회원2</b>님이 좋아요를 달았습니다.
								</p> 
							</div>
							<div class="col-sm-3"></div>
						</div>		
					</div>
				</div>
				<!-- User-Notification Section -->
			</div>
		</section>
		<hr>
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

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>
</html>