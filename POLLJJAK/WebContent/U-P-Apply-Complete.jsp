<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<!--  전체 공지 -->
<!-- 현재 정적으로 Card를 만들어준 상황  -->
<!-- 추후 프로젝트에 따른 URL을 따라 Input Hidden에 넣어준 게시글 ID로 이동할 수 있도록 처리할 예정  -->
<!-- 페이지 하단 Script 처리 부분 참고  -->
<!-- 모든 Js 처리는 페이지와 같은 이름을 가진 JS 파일을 따로 생성하여 처리하도록 하길 바랍니다 -->
<!DOCTYPE html>
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />

<script src="<%=cp %>/resources/js/U-P-Apply-Complete.js"></script>
<link href="<%=cp %>/resources/css/Inner-Project-home.css" rel="stylesheet">

<body>
	<c:import url="./common/Nav.jsp" />

	<main id="main">

		<!-- 빈칸 여백 -->
		<section class="pb-2"></section><!-- <div class="mt-5"></div> -->
		
		<section class="inner-page">
		
			<!-- title -->
			<div class="container"  data-aos="fade-up">
				<div class="row">
					<div class="d-flex justify-content-center col" style="width: 50%;"  data-aos="fade-up">
						<div class="section-title pt-4">
							<h6>프로젝트 조회/지원</h6>
							<div>참여하고 싶은 다양한 프로젝트 모집을 찾아보세요!</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end title -->
		
		
			<div class="container" data-aos="fade-up">
				<!-- ====== PageIntro Section ====== -->
				<!--
 				<div class="pageintro" style="margin-buttom: 50px;">
					<div class="section-title">
						<h6>프로젝트 조회/지원</h6>
						<p>다양한 프로젝트 모집을 찾아보세요!</p>
					</div>
				</div>
				-->


				<hr>

				<!-- End PageIntro Section -->

				<!-- ====== InnerNav ====== -->
				<nav id="navbar_" class="navbar inner-nav" data-aos="fade-up"> 
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto" href="U-P-Apply-Main.jsp">전체 프로젝트</a></li>
						<li><a class="nav-link scrollto " href="U-P-Apply-New.jsp">신규 프로젝트</a></li>
						<li><a class="nav-link scrollto " href="U-P-Apply-Popular.jsp">인기 프로젝트</a></li>
						<li><a class="nav-link scrollto active " href="U-P-Apply-Complete.jsp">완료 프로젝트</a></li>
					</ul>
				</nav>
				<hr>
				<!-- End InnerNav -->

				<!-- ====== Select Section ====== -->
				<div class="select-project-part form-group" data-aos="fade-up">
					<p>전체 프로젝트</p>
					<div class="row row-cols-auto">
						<div class="col">
							<select class="form-select form-select-sm selectTrigger" id="regionPart">
								<option value="">지역</option>
								<option value="RPT0000001">서울</option>
								<option value="RPT0000002">경기</option>
								<option value="RPT0000003">인천</option>
								<option value="RPT0000004">강원</option>
								<option value="RPT0000005">충북</option>
								<option value="RPT0000006">충남</option>
								<option value="RPT0000007">전북</option>
								<option value="RPT0000008">전남</option>
								<option value="RPT0000009">경북</option>
								<option value="RPT0000010">경남</option>
								<option value="RPT0000011">제주</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select form-select-sm selectTrigger" id="subjectPart">
								<option value="">주제</option>
								<option value="SBPT000001">생활</option>
								<option value="SBPT000002">업무</option>
								<option value="SBPT000003">공공/교통</option>
								<option value="SBPT000004">금융/핀테크</option>
								<option value="SBPT000005">의료</option>
								<option value="SBPT000006">교육</option>
								<option value="SBPT000007">유통/쇼핑</option>
								<option value="SBPT000008">엔터테인먼트</option>
								<option value="SBPT000009">기타</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select form-select-sm selectTrigger" id="positionPart">
								<option value="">모집분야</option>
								<option value="PSPT000001">UI/UX</option>
								<option value="PSPT000002">게임</option>
								<option value="PSPT000003">프로젝트 매니저</option>
								<option value="PSPT000004">하드웨어 기획</option>
								<option value="PSPT000005">그래픽 디자인</option>
								<option value="PSPT000006">UI/UX 디자인</option>
								<option value="PSPT000007">3D 디자인</option>
								<option value="PSPT000008">하드웨어 디자인</option>
								<option value="PSPT000009">IOS</option>
								<option value="PSPT000010">안드로이드</option>
								<option value="PSPT000011">웹 프론트엔드</option>
								<option value="PSPT000012">웹 퍼블리셔</option>
								<option value="PSPT000013">크로스 플랫폼</option>
								<option value="PSPT000014">임베디드SW</option>
								<option value="PSPT000015">웹서버</option>
								<option value="PSPT000016">블록체인</option>
								<option value="PSPT000017">AI</option>
								<option value="PSPT000018">DB/빅데이터/DS</option>
								<option value="PSPT000019">게임서버</option>
								<option value="PSPT000020">사업기획</option>
								<option value="PSPT000021">마케팅</option>
								<option value="PSPT000022">재무/회계</option>
								<option value="PSPT000023">영업</option>
								<option value="PSPT000024">전략/컨설팅</option>
								<option value="PSPT000025">투자/고문</option>
							</select>
						</div>
					</div>
				</div>
				<hr>
			</div>
		</section>
	</main>
	<!-- End #main -->
	
	<!-- ====== Carousel Popular Project Section ====== -->
	<div class="section-title" data-aos="fade-up">
		<h2>완료 프로젝트</h2>
		<p>플젝폴짝의 완료 프로젝트 모집을 확인하세요!</p>
	</div>
	<section class="pt-5 pb-5" data-aos="fade-up">
		<div class="container">
			<div id="appendChildSpot">
			</div>
		</div>
	</section>
	<!--  Carousel Popular Project Section -->

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>
</body>

</html>


