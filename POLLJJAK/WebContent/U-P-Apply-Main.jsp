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


<!-- Vendor JS Files -->
<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

<!-- <script src="./js/U-P-Apply-Main.js"></script> -->

<body>
	<c:import url="./common/Nav.jsp" />

	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<!-- <div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>프로젝트 조회/지원</h2>
					<ol>
						<li><a href="U-main.jsp">플젝폴짝 홈으로</a></li>
						<li>프로젝트 조회/지원</li>
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
						<h6>프로젝트 조회/지원</h6>
						<p>다양한 프로젝트 모집을 찾아보세요!</p>
					</div>
				</div>
				<hr>
				<!-- End PageIntro Section -->

				<!-- ====== InnerNav ====== -->
				<nav id="navbar_" class="navbar inner-nav" data-aos="fade-up"> 
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto active" href="Inner-page.jsp">전체 프로젝트</a></li>
						<li><a class="nav-link scrollto" href="Inner-page.jsp">신규 프로젝트</a></li>
						<li><a class="nav-link scrollto" href="Inner-page.jsp">인기 프로젝트</a></li>
						<li><a class="nav-link scrollto " href="Inner-page.jsp">완료 프로젝트</a></li>
					</ul>
				</nav>
				<hr>
				<!-- End InnerNav -->

				<!-- ====== Select Section ====== -->
				<div class="select-project-part form-group" data-aos="fade-up">
					<p>전체 프로젝트</p>
					<div class="row row-cols-auto">
						<div class="col">
							<select class="form-select form-select-sm">
								<option value="none">지역</option>
								<option value="서울">서울</option>
								<option value="경기">경기</option>
								<option value="인천">인천</option>
								<option value="강원">강원</option>
								<option value="충북">충북</option>
								<option value="충남">충남</option>
								<option value="전북">전북</option>
								<option value="전남">전남</option>
								<option value="경북">경북</option>
								<option value="경남">경남</option>
								<option value="제주">제주</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select form-select-sm">
								<option value="none">주제</option>
								<option value="생활">생활</option>
								<option value="업무">업무</option>
								<option value="공공/교통">공공/교통</option>
								<option value="금융/핀테크">금융/핀테크</option>
								<option value="의료">의료</option>
								<option value="교육">교육</option>
								<option value="유통/쇼핑">유통/쇼핑</option>
								<option value="엔터테인먼트">엔터테인먼트</option>
								<option value="기타">기타</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select form-select-sm">
								<option value="none">모집분야</option>
								<option value="UI/UX">UI/UX</option>
								<option value="게임">게임</option>
								<option value="프로젝트 매니저">프로젝트 매니저</option>
								<option value="하드웨어 기획">하드웨어 기획</option>
								<option value="그래픽 디자인">그래픽 디자인</option>
								<option value="UI/UX 디자인">UI/UX 디자인</option>
								<option value="3D 디자인">3D 디자인</option>
								<option value="하드웨어 디자인">하드웨어 디자인</option>
								<option value="IOS">IOS</option>
								<option value="안드로이드">안드로이드</option>
								<option value="웹 프론트엔드">웹 프론트엔드</option>
								<option value="웹 퍼블리셔">웹 퍼블리셔</option>
								<option value="크로스 플랫폼">크로스 플랫폼</option>
								<option value="임베디드SW">임베디드SW</option>
								<option value="웹서버">웹서버</option>
								<option value="블록체인">블록체인</option>
								<option value="AI">AI</option>
								<option value="DB/빅데이터/DS">DB/빅데이터/DS</option>
								<option value="게임서버">게임서버</option>
								<option value="사업기획">사업기획</option>
								<option value="마케팅">마케팅</option>
								<option value="재무/회계">재무/회계</option>
								<option value="영업">영업</option>
								<option value="전략/컨설팅">전략/컨설팅</option>
								<option value="투자/고문">투자/고문</option>
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
		<h2>인기 프로젝트</h2>
		<p>플젝폴짝의 인기 프로젝트 모집을 확인하세요!</p>
	</div>
	<section class="pt-5 pb-5" data-aos="fade-up">
		<div class="container">
			<div id="carousel-poupular -project" class="carousel carousel-dark" data-bs-ride="carousel">
				<div class="row">
					<div class="col-12">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="carousel-row">
									<div class="col-md-3 mb-3">
										<div class="card ">
											<input type="hidden" value="aaaa"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
											<div class="card-body">
												<h4 class="card-title">한은영의 프로젝트</h4>
												<p class="card-text">한은영의 프로젝트</p>
												<p class="card-text">JAVA/ORACLE</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="BBBB"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">김유림의 프로젝트</h4>
												<p class="card-text">김유림의 프로젝트</p>
												<p class="card-text">C/MariaDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="cccc"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
											<div class="card-body">
												<h4 class="card-title">김인교의 프로젝트</h4>
												<p class="card-text">김인교의 프로젝트</p>
												<p class="card-text">C++/MongoDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="dddd"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">박원석의 프로젝트</h4>
												<p class="card-text">박원석의 프로젝트</p>
												<p class="card-text">Python/Django</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div id="carousel-poupular -project" class="carousel carousel-dark" data-bs-ride="carousel">
				<div class="row">
					<div class="col-12">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="carousel-row">
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="eeee"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
											<div class="card-body">
												<h4 class="card-title">한은영의 프로젝트</h4>
												<p class="card-text">한은영의 프로젝트</p>
												<p class="card-text">JAVA/ORACLE</p>
											</div>

										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="ffff"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">김유림의 프로젝트</h4>
												<p class="card-text">김유림의 프로젝트</p>
												<p class="card-text">C/MariaDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="gggg"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
											<div class="card-body">
												<h4 class="card-title">김인교의 프로젝트</h4>
												<p class="card-text">김인교의 프로젝트</p>
												<p class="card-text">C++/MongoDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="hhhh"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">박원석의 프로젝트</h4>
												<p class="card-text">박원석의 프로젝트</p>
												<p class="card-text">Python/Django</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div id="carousel-poupular -project" class="carousel carousel-dark" data-bs-ride="carousel">
				<div class="row">
					<div class="col-12">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="carousel-row">
									<div class="col-md-3 mb-3"> 
										<div class="card">
											<input type="hidden" value="iiii"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
											<div class="card-body">
												<h4 class="card-title">한은영1의 프로젝트</h4>
												<p class="card-text">한은영의 프로젝트</p>
												<p class="card-text">JAVA/ORACLE</p>
											</div>

										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="jjjj"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">김유림의 프로젝트</h4>
												<p class="card-text">김유림의 프로젝트</p>
												<p class="card-text">C/MariaDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="kkkk"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
											<div class="card-body">
												<h4 class="card-title">김인교의 프로젝트</h4>
												<p class="card-text">김인교의 프로젝트</p>
												<p class="card-text">C++/MongoDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="llll"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">박원석의 프로젝트</h4>
												<p class="card-text">박원석의 프로젝트</p>
												<p class="card-text">Python/Django</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div id="carousel-poupular -project" class="carousel carousel-dark" data-bs-ride="carousel">
				<div class="row">
					<div class="col-12">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="carousel-row">
									<div class="col-md-3 mb-3" onclick="javascript:void(0);">
										<div class="card">
											<input type="hidden" value="rtrt"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
											<div class="card-body">
												<h4 class="card-title">한은영의 프로젝트</h4>
												<p class="card-text">한은영의 프로젝트</p>
												<p class="card-text">JAVA/ORACLE</p>
											</div>

										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="ytyt"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">김유림의 프로젝트</h4>
												<p class="card-text">김유림의 프로젝트</p>
												<p class="card-text">C/MariaDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="uyuy"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
											<div class="card-body">
												<h4 class="card-title">김인교의 프로젝트</h4>
												<p class="card-text">김인교의 프로젝트</p>
												<p class="card-text">C++/MongoDB</p>
											</div>
										</div>
									</div>
									<div class="col-md-3 mb-3">
										<div class="card">
											<input type="hidden" value="iuiu"/>
											<img class="img-fluid" alt="100%x280"
												src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
											<div class="card-body">
												<h4 class="card-title">박원석의 프로젝트</h4>
												<p class="card-text">박원석의 프로젝트</p>
												<p class="card-text">Python/Django</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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

<script>

	$().ready(function(){
		$(".card").click(function(){
			var target = $(this).find("input").val();
			/*$(location).attr("href", "/POLLJJAK/Inner-page.jsp?target=" + target);*/
			$(location).attr("href", "/POLLJJAK/ProjectDetail.jsp");
		});
	})

</script>

</html>


