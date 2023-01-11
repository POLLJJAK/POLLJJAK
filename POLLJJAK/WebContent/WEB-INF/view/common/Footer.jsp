<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!-- ======= Footer ======= -->
<footer id="footer">
	<div class="container">
		<div class="row d-flex">
			<div class="col-md-12 col-lg-2">
				<img class="footer-logoImg" alt="플젝폴짝로고" src="assets/img/logo.png">
				<div class="footer-subtitle">Creative Developers!</div>
				<div class="d-flex m-0 mt-3">
					<div class="footer-icon bi bi-house-fill align-self-center"></div>
					<div class="footer-icon bi bi-youtube ms-4 align-self-center"></div>
					<div class="footer-icon bi bi-envelope-fill ms-4 align-self-center"></div>
				</div>
			</div>


			<div class="col-sm-12 col-lg-8">
				<div class="footer-navbar">
					<nav class="footer-links d-flex">
						<div>
							<a href="Inner-page.jsp" class="scrollto">사이트소개</a>
							<a class="ms-3" href="Inner-page.jsp" class="scrollto">공지사항</a>
							<a class="ms-3" href="Inner-page.jsp" class="scrollto">연락처</a>
							<a class="ms-3" href="Inner-page.jsp" class="scrollto">광고문의</a>
						</div>
						<div class="ms-3 footer-navtextline  align-self-center"></div>
						<div>
							<a class="ms-3" href="Inner-page.jsp" class="scrollto">신고</a>
							<a class="ms-3" href="Inner-page.jsp" class="scrollto">버그제보</a>
						</div>
						<div class="ms-3 footer-navtextline align-self-center"></div>
						<div class="ms-3">
							<a class="" href="TermsOfService.jsp">개인정보 처리방침</a>
							<a class="ms-3" href="TermsOfService.jsp">서비스 이용약관</a>
						</div>
					</nav>
				</div>
				<div class="mt-4 footer-ownerInfo">
					<div>쌍용강북교육센터 4조 | 한은영 김인교 김유림 박원석</div>
					<div>주소 : 서울특별시 마포구 월드컵북로 21 풍성빌딩 2층 B강의장</div>
					<div>@ 2023 (주) 플젝폴짝, Inc. All rights reserved.</div>
				</div>
			</div>
			
			<div class="col-md-12 col-lg-2">
				<div class="footer-createBy">
					CREATED BY
				</div>
				<div>
					<div class="footer-logoImgbox">
						<img class="footer-logoImg" alt="플젝폴짝로고" src="assets/img/spring_logo.svg">
					</div>
					<div class="footer-img">
						<img class="footer-logoImg" alt="플젝폴짝로고" src="assets/img/oracle_logo.svg">
					</div>
				</div>
			</div>
		</div> <!-- .d-flex -->
	</div> <!-- .container -->
</footer> <!-- End Footer -->



<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="resources/common/js/calendar.js"></script>


<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
  
