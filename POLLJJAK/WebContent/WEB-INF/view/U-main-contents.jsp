<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!-- 현재 페이지 resources import -->
<script src="<%=cp %>/resources/js/U-main-contents.js"></script>

<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">

	<div class="container" data-aos="fade-up">
		<div class="row">
			<div
				class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
				<h1 data-aos="fade-up">
					쉽고 빠른 사이드 프로젝트 <br>플젝폴짝과 함께하세요!
				</h1>
				<h2 data-aos="fade-up" data-aos-delay="400">개발자가 되고싶어?</h2>
				<div data-aos="fade-up" data-aos-delay="800">
					<a href="Inner-page.jsp" class="btn-get-started scrollto">프로젝트 둘러보기</a>
				</div>
			</div>
			<div class="col-lg-6 order-1 order-lg-2 hero-img"
				data-aos="fade-left" data-aos-delay="200">
				<img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
			</div>
		</div>
	</div>
</section>
<!-- End Hero -->


<!-- ====== Carousel Notice Section ====== -->
<!-- 일단 메인 배너에 대한 코드를 만들어 놓긴 했는데
저는 개인적으로 메인만 있는게 더 좋을 것 같은 생각입니다 -->
<!-- <div class="section-title"  style = "margin-bottom: 50px;"data-aos="fade-up">
	<h2>관리자 공지사항</h2>
	<p>플젝폴짝의 새로운 공지사항을 확인하세요!</p>
</div>
<div class="container mb-100" data-aos="fade-up">
	<div id="carousel-new-notice" class="carousel carousel-dark slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carousel-new-notice"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carousel-new-notice"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carousel-new-notice"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="https://images.unsplash.com/photo-1563725911583-7d108f720483"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>라운지 이용 에티켓</h5>
					<p>라운지를 이용할 때는 상호존중 에티켓을 지켜주세요!</p>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="https://images.unsplash.com/photo-1563725911583-7d108f720483"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>새로운 프로젝트 개설</h5>
					<p>마음에 드는 프로젝트가 없나요? 자신만의 새로운 프로젝트를 개설해보세요!</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://images.unsplash.com/photo-1563725911583-7d108f720483"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>새로운 공지사항</h5>
					<p>고객센터에서 관리자에게 무엇이든 물어보세요!</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carousel-new-notice" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carousel-new-notice" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
</div> -->
<!-- End Carousel Notice Section -->

<!-- ====== Carousel New Project Section ====== -->
<div class="section-title" data-aos="fade-up">
	<h2>신규 프로젝트</h2>
	<p>플젝폴짝의 새로운 프로젝트 모집을 확인하세요!</p>
</div>
<section class="pt-5 pb-5" data-aos="fade-up">
	<div class="container mb-100">
		<div id="carousel-new-project" class="carousel carousel-dark slide"
			data-bs-ride="carousel">
			<div class="row">
				<div class="col-12">
					<div class="col-1">
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carousel-new-project" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
					</div>
					<div class="col-10"></div>
					<div class="col-1">
						<button class="carousel-control-next" type="button"
							data-bs-target="#carousel-new-project" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
					<div class="carousel-inner" id="appendChildSpot">
						<div class="carousel-item active">
							<div class="carousel-row">
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">한은영의 프로젝트</h4>
											<p class="card-text">한은영의 프로젝트</p>
											<p class="card-text">JAVA/ORACLE</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">김유림의 프로젝트</h4>
											<p class="card-text">김유림의 프로젝트</p>
											<p class="card-text">C/MariaDB</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">김인교의 프로젝트</h4>
											<p class="card-text">김인교의 프로젝트</p>
											<p class="card-text">C++/MongoDB</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">박원석의 프로젝트</h4>
											<p class="card-text">박원석의 프로젝트</p>
											<p class="card-text">Python/Django</p>
										</div>
									</div>
								</div>
							</div>
						</div>
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
											<h4 class="card-title">조윤상의 프로젝트</h4>
											<p class="card-text">조윤상의 프로젝트</p>
											<p class="card-text">React/Angular</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">임권묵의 프로젝트</h4>
											<p class="card-text">임권묵의 프로젝트</p>
											<p class="card-text">C++/C</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">권희용의 프로젝트</h4>
											<p class="card-text">권희용의 프로젝트</p>
											<p class="card-text">AI/Android</p>
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
<!--  Carousel New Project Section -->


<!-- ====== Carousel Popular Project Section ====== -->
<div class="section-title" data-aos="fade-up">
	<h2>인기 프로젝트</h2>
	<p>플젝폴짝의 인기 프로젝트 모집을 확인하세요!</p>
</div>
<section class="pt-5 pb-5" data-aos="fade-up">
	<div class="container mb-100">
		<div id="carousel-poupular-project"
			class="carousel carousel-dark slide" data-bs-ride="carousel">
			<div class="row">
				<div class="col-12">
					<div class="col-1">
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carousel-poupular-project" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
					</div>
					<div class="col-10"></div>
					<div class="col-1">
						<button class="carousel-control-next" type="button"
							data-bs-target="#carousel-poupular-project" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div> 
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="carousel-row">
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">한공주의 프로젝트</h4>
											<p class="card-text">한은영의 프로젝트</p>
											<p class="card-text">JAVA/ORACLE</p>
										</div>

									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">김유림의 프로젝트</h4>
											<p class="card-text">김유림의 프로젝트</p>
											<p class="card-text">C/MariaDB</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">김인교의 프로젝트</h4>
											<p class="card-text">김인교의 프로젝트</p>
											<p class="card-text">C++/MongoDB</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">박성순의 프로젝트</h4>
											<p class="card-text">박성순의 프로젝트</p>
											<p class="card-text">JAVA/Web</p>
										</div>
									</div>
								</div>
							</div>
						</div>
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
											<h4 class="card-title">조윤상의 프로젝트</h4>
											<p class="card-text">조윤상의 프로젝트</p>
											<p class="card-text">React/Angular</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">임권묵의 프로젝트</h4>
											<p class="card-text">임권묵의 프로젝트</p>
											<p class="card-text">C++/C</p>
										</div>
									</div>
								</div>
								<div class="col-md-3 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280"
											src="https://images.unsplash.com/photo-1563725911583-7d108f720483">
										<div class="card-body">
											<h4 class="card-title">권희용의 프로젝트</h4>
											<p class="card-text">권희용의 프로젝트</p>
											<p class="card-text">AI/Android</p>
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











