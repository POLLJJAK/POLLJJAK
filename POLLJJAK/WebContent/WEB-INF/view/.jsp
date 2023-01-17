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
					<span>${user.u_nickname }</span>
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
					<form name="navForm">
						<input type="hidden" name="user_code"/>
					</form>
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto" href="userupdateform.action?user_code=${user_code }">정보</a></li>
						<li><a class="nav-link scrollto active" href="umypageproject.action?user_code=${user_code }">프로젝트</a></li>
						<li><a class="nav-link scrollto" href="umypagenotification.action?user_code=${user_code }">알림</a></li>
						<li><a class="nav-link scrollto " href="umypagelog.action?user_code=${user_code }">활동내역</a></li>
					</ul>
					<i class="bi bi-list mobile-nav-toggle"></i>
				</nav>
				<hr>
				<!-- End InnerNav -->
				
				<!-- ====== Page Menu Intro Section ====== -->
				<div class="pageintro"  style="margin-top: 50px;">
					<div class="section-title">
						<h6>진행중인 프로젝트</h6>
					</div>
				</div>
				<!-- End Page Menu Intro Section -->

				
				<!-- ====== Project in Progress Section ====== -->
				<section class="pt-5 pb-5">
					<div class="container mb-50 row">
						<div class="col-sm-3"></div>
						<c:choose>
							<c:when test="${fn:length(myPageRunPJ) == 0}">
							<div class="container mb-3">
								<div class="mt-3 mb-3 p-3 d-flex justify-content-center">
									<div class="no-pj-title">프로젝트가 존재하지 않습니다.</div>
								</div>
							</div>
							</c:when>
							<c:otherwise>
							<c:forEach var="myPageRunPJ" items="${myPageRunPJ }">
								<div class="col-sm-6">
									<div class="card" onclick="location.href='projectDetail.action?p_code=${myPageRunPJ.p_code}'">
										<input type="hidden" value="aaaa" /> 
										<img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">${myPageRunPJ.p_name }</h4>
											<p class="card-text">${myPageRunPJ.p_name }</p>
											<p class="card-text">${myPageRunPJ.skill_part }</p>
										</div>
									</div>
								</div>
							</c:forEach>
							</c:otherwise>
						</c:choose>
						<div class="col-sm-3"></div>
					</div>
				</section>
				<!--  End Project in Progress Section -->
				

				<!-- ====== Page Menu Intro Section ====== -->
				<div class="pageintro" >
					<div class="section-title">
						<h6>지원한 프로젝트</h6>
					</div>
				</div>
				<!-- End Page Menu Intro Section -->

				<!-- ====== Apply-Project Section ====== -->
				<section class="pt-5 pb-5" >
					<div class="container mb-50">
						<div id="carousel-apply-project"
							class="carousel carousel-dark slide" data-bs-ride="carousel">
							<div class="row">
								<div class="col-12">
									<div class="col-1">
										<button class="carousel-control-prev" type="button"
											data-bs-target="#carousel-apply-project" data-bs-slide="prev">
											<span class="carousel-control-prev-icon" aria-hidden="true"></span>
											<span class="visually-hidden">Previous</span>
										</button>
									</div>
									<div class="col-10"></div>
									<div class="col-1">
										<button class="carousel-control-next" type="button"
											data-bs-target="#carousel-apply-project" data-bs-slide="next">
											<span class="carousel-control-next-icon" aria-hidden="true"></span>
											<span class="visually-hidden">Next</span>
										</button>
									</div>
									<div class="carousel-inner">
										<div class="carousel-item active">
											<div class="carousel-row">
												<c:choose>
													<c:when test="${fn:length(myPageSupportPJ) == 0}">
														<div class="container mb-3">
															<div class="mt-3 mb-3 p-3 d-flex justify-content-center">
																<div class="no-pj-title">프로젝트가 존재하지 않습니다.</div>
															</div>
														</div>
													</c:when>
													<c:otherwise>
													<c:forEach var="myPageSupportPJ" items="${myPageSupportPJ }">
														<div class="col-md-3 mb-3">
															<div class="card" onclick="location.href='projectDetail.action?p_code=${myPageSupportPJ.p_code}'">
																<img class="img-fluid" alt="100%x280"
																	src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
																<div class="card-body">
																	<h4 class="card-title">${myPageSupportPJ.p_name }</h4>
																	<p class="card-text">${myPageSupportPJ.p_name }</p>
																	<p class="card-text">${myPageSupportPJ.skill_part }</p>
																</div>
															</div>
														</div>
													</c:forEach>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
										<!-- 
										<div class="carousel-item">
											<div class="carousel-row">
												<div class="col-md-3 mb-3">
													<div class="card">
														<img class="img-fluid" alt="100%x280"
															src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
														<div class="card-body">
															<h4 class="card-title">이상홍의 프로젝트</h4>
															<p class="card-text">이상홍의 프로젝트</p>
															<p class="card-text">Network/Android</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--  End Apply-Project Section -->
				
				
				<!-- ====== Page Menu Intro Section ====== -->
				<div class="pageintro" >
					<div class="section-title">
						<h6>완료한 프로젝트</h6>
					</div>
				</div>
				<!-- End Page Menu Intro Section -->


				<!-- ====== Project Complete Section ====== -->
				<section class="pt-5 pb-5" >
					<div class="container mb-50">
						<div id="carousel-complete-project" class="carousel carousel-dark slide" data-bs-ride="carousel">
							<div class="row">
								<div class="col-12">
									<div class="col-1">
										<button class="carousel-control-prev" type="button"
											data-bs-target="#carousel-complete-project" data-bs-slide="prev">
											<span class="carousel-control-prev-icon" aria-hidden="true"></span>
											<span class="visually-hidden">Previous</span>
										</button>
									</div>
									<div class="col-10"></div>
									<div class="col-1">
										<button class="carousel-control-next" type="button"
											data-bs-target="#carousel-complete-project" data-bs-slide="next">
											<span class="carousel-control-next-icon" aria-hidden="true"></span>
											<span class="visually-hidden">Next</span>
										</button>
									</div>
									<div class="carousel-inner">
										<div class="carousel-item active">
											<div class="carousel-row">
												<c:choose>
													<c:when test="${fn:length(myPageCompletePJ) == 0}">
														<div class="container mb-3">
															<div class="mt-3 mb-3 p-3 d-flex justify-content-center">
																<div class="no-pj-title">프로젝트가 존재하지 않습니다.</div>
															</div>
														</div>
													</c:when>
													<c:otherwise>
													<c:forEach var="myPageCompletePJ" items="${myPageCompletePJ }">
														<div class="col-md-3 mb-3">
															<div class="card" onclick="location.href='projectDetail.action?p_code=${myPageCompletePJ.p_code}'">
																<img class="img-fluid" alt="100%x280"
																	src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
																<div class="card-body">
																	<h4 class="card-title">${myPageCompletePJ.p_name }</h4>
																	<p class="card-text">${myPageCompletePJ.p_name }</p>
																	<p class="card-text">${myPageCompletePJ.skill_part }</p>
																</div>
															</div>
														</div>
													</c:forEach>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
										<!-- 
										<div class="carousel-item">
											<div class="carousel-row">
												<div class="col-md-3 mb-3">
													<div class="card">
														<img class="img-fluid" alt="100%x280"
															src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
														<div class="card-body">
															<h4 class="card-title">이상홍의 프로젝트</h4>
															<p class="card-text">이상홍의 프로젝트</p>
															<p class="card-text">Network/Android</p>
														</div>
													</div>
												</div>
												<div class="col-md-3 mb-3">
													<div class="card">
														<img class="img-fluid" alt="100%x280"
															src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
														<div class="card-body">
															<h4 class="card-title">김호진의 프로젝트</h4>
															<p class="card-text">김호진의 프로젝트</p>
															<p class="card-text">Java/React</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--  Project Complete Section -->
				
				
				
				
				<!-- ====== Page Menu Intro Section ====== -->
				<div class="pageintro" >
					<div class="section-title">
						<h6>개설한 프로젝트</h6>
					</div>
				</div>
				<!-- End Page Menu Intro Section -->

				<!-- ====== Open Project Section ====== -->
				<section class="pt-5 pb-5" >
					<div class="container mb-50">
						<div id="carousel-open-project" class="carousel carousel-dark slide" data-bs-ride="carousel">
							<div class="row">
								<div class="col-12">
									<div class="col-1">
										<button class="carousel-control-prev" type="button"
											data-bs-target="#carousel-open-project" data-bs-slide="prev">
											<span class="carousel-control-prev-icon" aria-hidden="true"></span>
											<span class="visually-hidden">Previous</span>
										</button>
									</div>
									<div class="col-10"></div>
									<div class="col-1">
										<button class="carousel-control-next" type="button"
											data-bs-target="#carousel-open-project" data-bs-slide="next">
											<span class="carousel-control-next-icon" aria-hidden="true"></span>
											<span class="visually-hidden">Next</span>
										</button>
									</div>
									<div class="carousel-inner">
										<div class="carousel-item active">
											<div class="carousel-row">
											<c:choose>
												<c:when test="${fn:length(myPageOpenPJ) == 0}">
												<div class="container mb-3">
													<div class="mt-3 mb-3 p-3 d-flex justify-content-center">
														<div class="no-pj-title">프로젝트가 존재하지 않습니다.</div>
													</div>
												</div>
												</c:when>
												<c:otherwise>
												<c:forEach var="myPageOpenPJ" items="${myPageOpenPJ }">
												<div class="col-md-3 mb-3">
													<div class="card" onclick="location.href='projectDetail.action?p_code=${myPageOpenPJ.p_code}'">
														<img class="img-fluid" alt="100%x280"
															src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
														<div class="card-body">
															<h4 class="card-title">${myPageOpenPJ.p_name }</h4>
															<p class="card-text">${myPageOpenPJ.p_name }</p>
															<p class="card-text">${myPageOpenPJ.skill_part }</p>
														</div>
													</div>
												</div>
												</c:forEach>
												</c:otherwise>
											</c:choose>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- Open Project Section -->
				
				

			</div>
			<hr>
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

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

<script>
/* 
	$().ready(function(){
		$(".card").click(function(){
			var target = $(this).find("input").val();
			//$(location).attr("href", "/POLLJJAK/Inner-page.jsp?target=" + target);
			$(location).attr("href", "projectDetail.action?p_code=" + $(this).val());
		});
	})
 */
 
</script>

</html>