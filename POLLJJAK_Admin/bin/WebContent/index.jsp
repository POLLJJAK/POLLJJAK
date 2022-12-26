<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!doctype html>

<html lang="ko">


<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />

<title>플젝폴짝 관리자 페이지</title>

<!-- js 파일 -->
<script src="https://cdn.jsdelivr.net/npm/@tabler/core@latest/dist/js/tabler.min.js"></script>

<!-- css 파일 -->
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/tabler.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/tabler.min.css">

<!-- 글꼴 폰트 -->
<style>
@import url('https://rsms.me/inter/inter.css');
:root { -
	-tblr-font-sans-serif: Inter, -apple-system, BlinkMacSystemFont, San
		Francisco, Segoe UI, Roboto, Helvetica Neue, sans-serif;
}
</style>
   
</head>

   

<body>
	<!-- 일단 다크모드 js파일 -->
	<script src="<%=cp%>/js/dark-theme.min.js"></script>
	
	<div class="page">
	
	
		<!-- Navbar -->
		<header class="navbar navbar-expand-md navbar-light d-print-none">
			<div class="container-xl">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbar-menu"
					aria-controls="navbar-menu" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<h1
					class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
					<a href="."> <img src="./static/pj_logo.svg" width="110"
						height="32" alt="Tabler" class="navbar-brand-image">
					</a>
				</h1>

				<div class="navbar-nav flex-row order-md-last">


					<div class="d-none d-md-flex">

						<!-- 다크 모드 버튼 -->
						<a href="?theme=dark" class="nav-link px-0 hide-theme-dark"
							title="Enable dark mode" data-bs-toggle="tooltip" data-bs-placement="bottom">
							
							<!-- Download SVG icon from http://tabler-icons.io/i/moon -->
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
								height="24" viewBox="0 0 24 24" stroke-width="2"
								stroke="currentColor" fill="none" stroke-linecap="round"
								stroke-linejoin="round">
								<path stroke="none" d="M0 0h24v24H0z" fill="none" />
								<path
									d="M12 3c.132 0 .263 0 .393 0a7.5 7.5 0 0 0 7.92 12.446a9 9 0 1 1 -8.313 -12.454z" />
							</svg>
						</a>

						<!-- 라이트 모드 버튼 -->
						<a href="?theme=light" class="nav-link px-0 hide-theme-light"
							title="Enable light mode" data-bs-toggle="tooltip"
							data-bs-placement="bottom"> <!-- Download SVG icon from http://tabler-icons.io/i/sun -->
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
								height="24" viewBox="0 0 24 24" stroke-width="2"
								stroke="currentColor" fill="none" stroke-linecap="round"
								stroke-linejoin="round">
								<path stroke="none" d="M0 0h24v24H0z" fill="none" />
								<circle cx="12" cy="12" r="4" />
								<path
									d="M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7" /></svg>
						</a>

						<div class="nav-item dropdown d-none d-md-flex me-3">

							<a href="#" class="nav-link px-0" data-bs-toggle="dropdown"
								tabindex="-1" aria-label="Show notifications"> <!-- Download SVG icon from http://tabler-icons.io/i/bell -->
								<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
									height="24" viewBox="0 0 24 24" stroke-width="2"
									stroke="currentColor" fill="none" stroke-linecap="round"
									stroke-linejoin="round">
									<path stroke="none" d="M0 0h24v24H0z" fill="none" />
									<path
										d="M10 5a2 2 0 0 1 4 0a7 7 0 0 1 4 6v3a4 4 0 0 0 2 3h-16a4 4 0 0 0 2 -3v-3a7 7 0 0 1 4 -6" />
									<path d="M9 17v1a3 3 0 0 0 6 0v-1" /></svg> <span
								class="badge bg-red"></span>
							</a>

							<!-- 알림 버튼 -->
							<div
								class="dropdown-menu dropdown-menu-arrow dropdown-menu-end dropdown-menu-card">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Last updates</h3>
									</div>
									<div class="list-group list-group-flush list-group-hoverable">
										<div class="list-group-item">
											<div class="row align-items-center">
												<div class="col-auto">
													<span class="status-dot status-dot-animated bg-red d-block"></span>
												</div>
												<div class="col text-truncate">
													<a href="#" class="text-body d-block">Example 1</a>
													<div class="d-block text-muted text-truncate mt-n1">
														Change deprecated html tags to text decoration classes
														(#29604)</div>
												</div>
												<div class="col-auto">
													<a href="#" class="list-group-item-actions"> <!-- Download SVG icon from http://tabler-icons.io/i/star -->
														<svg xmlns="http://www.w3.org/2000/svg"
															class="icon text-muted" width="24" height="24"
															viewBox="0 0 24 24" stroke-width="2"
															stroke="currentColor" fill="none" stroke-linecap="round"
															stroke-linejoin="round">
															<path stroke="none" d="M0 0h24v24H0z" fill="none" />
															<path
																d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" /></svg>
													</a>
												</div>
											</div>
										</div>
										<div class="list-group-item">
											<div class="row align-items-center">
												<div class="col-auto">
													<span class="status-dot d-block"></span>
												</div>
												<div class="col text-truncate">
													<a href="#" class="text-body d-block">Example 2</a>
													<div class="d-block text-muted text-truncate mt-n1">
														justify-content:between ⇒ justify-content:space-between
														(#29734)</div>
												</div>
												<div class="col-auto">
													<a href="#" class="list-group-item-actions show"> <!-- Download SVG icon from http://tabler-icons.io/i/star -->
														<svg xmlns="http://www.w3.org/2000/svg"
															class="icon text-yellow" width="24" height="24"
															viewBox="0 0 24 24" stroke-width="2"
															stroke="currentColor" fill="none" stroke-linecap="round"
															stroke-linejoin="round">
															<path stroke="none" d="M0 0h24v24H0z" fill="none" />
															<path
																d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" /></svg>
													</a>
												</div>
											</div>
										</div>
										<div class="list-group-item">
											<div class="row align-items-center">
												<div class="col-auto">
													<span class="status-dot d-block"></span>
												</div>
												<div class="col text-truncate">
													<a href="#" class="text-body d-block">Example 3</a>
													<div class="d-block text-muted text-truncate mt-n1">
														Update change-version.js (#29736)</div>
												</div>
												<div class="col-auto">
													<a href="#" class="list-group-item-actions"> <!-- Download SVG icon from http://tabler-icons.io/i/star -->
														<svg xmlns="http://www.w3.org/2000/svg"
															class="icon text-muted" width="24" height="24"
															viewBox="0 0 24 24" stroke-width="2"
															stroke="currentColor" fill="none" stroke-linecap="round"
															stroke-linejoin="round">
															<path stroke="none" d="M0 0h24v24H0z" fill="none" />
															<path
																d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" /></svg>
													</a>
												</div>
											</div>
										</div>
										<div class="list-group-item">
											<div class="row align-items-center">
												<div class="col-auto">
													<span
														class="status-dot status-dot-animated bg-green d-block"></span>
												</div>
												<div class="col text-truncate">
													<a href="#" class="text-body d-block">Example 4</a>
													<div class="d-block text-muted text-truncate mt-n1">
														Regenerate package-lock.json (#29730)</div>
												</div>
												<div class="col-auto">
													<a href="#" class="list-group-item-actions"> <!-- Download SVG icon from http://tabler-icons.io/i/star -->
														<svg xmlns="http://www.w3.org/2000/svg"
															class="icon text-muted" width="24" height="24"
															viewBox="0 0 24 24" stroke-width="2"
															stroke="currentColor" fill="none" stroke-linecap="round"
															stroke-linejoin="round">
															<path stroke="none" d="M0 0h24v24H0z" fill="none" />
															<path
																d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" /></svg>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="nav-item dropdown">
						<a href="#" class="nav-link d-flex lh-1 text-reset p-0"
							data-bs-toggle="dropdown" aria-label="Open user menu"> <span
							class="avatar avatar-sm"
							style="background-image: url(./static/avatars/000m.jpg)"></span>
							<div class="d-none d-xl-block ps-2">
								<div>관리자</div>
								<div class="mt-1 small text-muted">Admin(관리자)</div>
							</div>
						</a>

						<!-- 프로필 사진 누르면 나오는 드롭다운 -->
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
							<a href="#" class="dropdown-item">Status</a> <a href="#"
								class="dropdown-item">Profile</a> <a href="#"
								class="dropdown-item">Feedback</a>
							<div class="dropdown-divider"></div>
							<a href="./settings.html" class="dropdown-item">Settings</a> <a
								href="./sign-in.html" class="dropdown-item">Logout</a>
						</div>
					</div>
				</div>
			</div>

		</header>


		<div class="navbar-expand-md">
			<div class="collapse navbar-collapse" id="navbar-menu">
				<div class="navbar navbar-light">
					<div class="container-xl">
						<ul class="navbar-nav">

							<!-- 관리 홈 -->
							<li class="nav-item active"><a class="nav-link" href="./">
									<span class="nav-link-icon d-md-none d-lg-inline-block">
										<!-- Download SVG icon from http://tabler-icons.io/i/home -->
										<svg xmlns="http://www.w3.org/2000/svg" class="icon"
											width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
											stroke="currentColor" fill="none" stroke-linecap="round"
											stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<polyline points="5 12 3 12 12 3 21 12 19 12" />
											<path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
											<path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" /></svg>
								</span> <span class="nav-link-title"> 관리 홈 </span>
							</a></li>


							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#navbar-base"
								data-bs-toggle="dropdown" data-bs-auto-close="outside"
								role="button" aria-expanded="false"> <span
									class="nav-link-icon d-md-none d-lg-inline-block"> <!-- Download SVG icon from http://tabler-icons.io/i/package -->
										<svg xmlns="http://www.w3.org/2000/svg" class="icon"
											width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
											stroke="currentColor" fill="none" stroke-linecap="round"
											stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<polyline
												points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" />
											<line x1="12" y1="12" x2="20" y2="7.5" />
											<line x1="12" y1="12" x2="12" y2="21" />
											<line x1="12" y1="12" x2="4" y2="7.5" />
											<line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
								</span> <span class="nav-link-title"> 회원 관리 </span>
							</a>
								<div class="dropdown-menu">
									<div class="dropdown-menu-columns">
										<div class="dropdown-menu-column">
											<a class="dropdown-item" href="./empty.html"> 계정관리 페이지 </a> <a
												class="dropdown-item" href="./accordion.html"> 이용정보 페이지
											</a>
										</div>

									</div>
								</div></li>



							<li class="nav-item"><a class="nav-link" href="./"> <span
									class="nav-link-title"> 프로젝트 관리 </span>
							</a></li>



							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#navbar-extra"
								data-bs-toggle="dropdown" data-bs-auto-close="outside"
								role="button" aria-expanded="false"> <span
									class="nav-link-icon d-md-none d-lg-inline-block">
										<!-- Download SVG icon from http://tabler-icons.io/i/star -->
										<svg xmlns="http://www.w3.org/2000/svg" class="icon"
											width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
											stroke="currentColor" fill="none" stroke-linecap="round"
											stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<path
												d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" /></svg>
								</span> <span class="nav-link-title"> 라운지 관리 </span>
							</a>
								<div class="dropdown-menu">
									<div class="dropdown-menu-columns">
										<div class="dropdown-menu-column">
											<a class="dropdown-item" href="./activity.html"> 공지사항 관리
											</a> <a class="dropdown-item" href="./gallery.html"> 자유게시판 관리
											</a>
										</div>
									</div>
								</div></li>



							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#navbar-layout"
								data-bs-toggle="dropdown" data-bs-auto-close="outside"
								role="button" aria-expanded="false"> <span
									class="nav-link-icon d-md-none d-lg-inline-block">
										<!-- Download SVG icon from http://tabler-icons.io/i/layout-2 -->
										<svg xmlns="http://www.w3.org/2000/svg" class="icon"
											width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
											stroke="currentColor" fill="none" stroke-linecap="round"
											stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<rect x="4" y="4" width="6" height="5" rx="2" />
											<rect x="4" y="13" width="6" height="7" rx="2" />
											<rect x="14" y="4" width="6" height="7" rx="2" />
											<rect x="14" y="15" width="6" height="5" rx="2" /></svg>
								</span> <span class="nav-link-title"> 고객센터 관리 </span>
							</a>
								<div class="dropdown-menu">
									<div class="dropdown-menu-columns">
										<div class="dropdown-menu-column">
											<a class="dropdown-item" href="./layout-horizontal.html">
												문의 접수 </a> <a class="dropdown-item" href="./layout-boxed.html">
												페널티 내역 <!-- <span class="badge badge-sm bg-green-lt text-uppercase ms-auto">New</span> -->
											</a> <a class="dropdown-item" href="./layout-vertical.html">
												FAQ </a>
										</div>
									</div>
								</div></li>


							<!-- 헬프 버튼 -->
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#navbar-help"
								data-bs-toggle="dropdown" data-bs-auto-close="outside"
								role="button" aria-expanded="false"> <span
									class="nav-link-icon d-md-none d-lg-inline-block">
										<!-- Download SVG icon from http://tabler-icons.io/i/lifebuoy -->
										<svg xmlns="http://www.w3.org/2000/svg" class="icon"
											width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
											stroke="currentColor" fill="none" stroke-linecap="round"
											stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<circle cx="12" cy="12" r="4" />
											<circle cx="12" cy="12" r="9" />
											<line x1="15" y1="15" x2="18.35" y2="18.35" />
											<line x1="9" y1="15" x2="5.65" y2="18.35" />
											<line x1="5.65" y1="5.65" x2="9" y2="9" />
											<line x1="18.35" y1="5.65" x2="15" y2="9" /></svg>
								</span> <span class="nav-link-title"> 데이터 항목 관리 </span>
							</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="./docs/"> 이메일 데이터 </a> <a
										class="dropdown-item" href="./changelog.html"> 지역 데이터 </a> <a
										class="dropdown-item" href="./changelog.html"> 시간 데이터 </a> <a
										class="dropdown-item" href="./changelog.html"> 프로젝트 주제 데이터
									</a> <a class="dropdown-item" href="./changelog.html"> 프로젝트 분야
										데이터 </a> <a class="dropdown-item" href="./changelog.html">
										프로젝트 출시 플랫폼 데이터 </a> <a class="dropdown-item"
										href="./changelog.html"> 방출 사유 데이터 </a> <a
										class="dropdown-item" href="./changelog.html"> 경고 사유 데이터 </a>

									<a class="dropdown-item"
										href="https://github.com/tabler/tabler"> 문의 유형 데이터 </a> <a
										class="dropdown-item" href="https://github.com/tabler/tabler">
										기술 언어 데이터 </a>

								</div></li>
						</ul>

						<!-- 검색 바 -->
						<div
							class="my-2 my-md-0 flex-grow-1 flex-md-grow-0 order-first order-md-last">
							<form action="./" method="get" autocomplete="off" novalidate>
								<div class="input-icon">
									<span class="input-icon-addon"> <svg
											xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
											height="24" viewBox="0 0 24 24" stroke-width="2"
											stroke="currentColor" fill="none" stroke-linecap="round"
											stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<circle cx="10" cy="10" r="7" />
											<line x1="21" y1="21" x2="15" y2="15" /></svg>
									</span> <input type="text" value="" class="form-control"
										placeholder="Search…" aria-label="Search in website">
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>


		<!-- 콘텐츠 영역 -->
		<div class="page-wrapper">
			<!-- Page header -->
			<div class="page-header d-print-none">
				<div class="container-xl">
					<div class="row g-2 align-items-center">
						<div class="col">
							<!-- Page pre-title -->
							<div class="page-pretitle">Data Management</div>
							<h2 class="page-title">현재 관리 데이터 수</h2>
						</div>
						<!-- Page title actions -->
						<div class="col-auto ms-auto d-print-none">
							<div class="btn-list">
								</span> <a href="#" class="btn btn-primary d-none d-sm-inline-block"
									data-bs-toggle="modal" data-bs-target="#modal-report"> <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
									<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
										height="24" viewBox="0 0 24 24" stroke-width="2"
										stroke="currentColor" fill="none" stroke-linecap="round"
										stroke-linejoin="round">
										<path stroke="none" d="M0 0h24v24H0z" fill="none" />
										<line x1="12" y1="5" x2="12" y2="19" />
										<line x1="5" y1="12" x2="19" y2="12" /></svg> 일단 넣어둠 어디에쓸까
								</a> <a href="#" class="btn btn-primary d-sm-none btn-icon"
									data-bs-toggle="modal" data-bs-target="#modal-report"
									aria-label="Create new report"> <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
									<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
										height="24" viewBox="0 0 24 24" stroke-width="2"
										stroke="currentColor" fill="none" stroke-linecap="round"
										stroke-linejoin="round">
										<path stroke="none" d="M0 0h24v24H0z" fill="none" />
										<line x1="12" y1="5" x2="12" y2="19" />
										<line x1="5" y1="12" x2="19" y2="12" /></svg>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>





			<!-- Page body -->
			<div class="page-body">
				<div class="container-xl">
					<div class="row row-deck row-cards">

						<!--  총 회원 수 -->
						<div class="col-sm-6 col-lg-3">
							<div class="card">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="subheader mb-3">총 회원 수</div>
									</div>
									<div class="dataCountNum">2501</div>
								</div>
							</div>
						</div>

						<!--  모집 중인 프로젝트 -->
						<div class="col-sm-6 col-lg-2">
							<div class="card">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="subheader mb-3">모집 중인 프로젝트</div>
									</div>
									<div class="d-flex align-items-baseline">
										<div class="dataCountNum">321</div>
									</div>
								</div>
							</div>
						</div>


						<!--  진행 중인 프로젝트 -->
						<div class="col-sm-6 col-lg-2">
							<div class="card">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="subheader mb-3">진행 중인 프로젝트</div>
									</div>
									<div class="d-flex align-items-baseline">
										<div class="dataCountNum">6,782</div>
									</div>
								</div>
							</div>
						</div>



						<!--  완료 프로젝트 -->
						<div class="col-sm-6 col-lg-2">
							<div class="card">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="subheader mb-3">완료 프로젝트</div>
									</div>
									<div class="d-flex align-items-baseline">
										<div class="dataCountNum">2,986</div>
									</div>
								</div>
							</div>
						</div>


						<!--  총 게시글 수 -->
						<div class="col-sm-6 col-lg-3">
							<div class="card">
								<div class="card-body">
									<div class="d-flex align-items-center">
										<div class="subheader mb-3">총 게시글 수</div>
									</div>
									<div class="d-flex align-items-baseline">
										<div class="dataCountNum">2,986</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 둘째 라인 - 메인 배너 관리 탭 -->
						<div class="col-12">
							<div class="row row-cards">
								<div class="col-sm-12 col-lg-12">
									<div class="card card-sm">
										<div class="card-body">
											<div class="row align-items-center">
												<div class="col-auto">
													<span class="bg-primary text-white avatar"> <!-- Download SVG icon from http://tabler-icons.io/i/currency-dollar -->
														<svg xmlns="http://www.w3.org/2000/svg"
															class="icon icon-tabler icon-tabler-photo-edit"
															width="24" height="24" viewBox="0 0 24 24"
															stroke-width="2" stroke="currentColor" fill="none"
															stroke-linecap="round" stroke-linejoin="round">
								   <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
								   <path d="M15 8h.01"></path>
								   <path
																d="M11 20h-4a3 3 0 0 1 -3 -3v-10a3 3 0 0 1 3 -3h10a3 3 0 0 1 3 3v4"></path>
								   <path d="M4 15l4 -4c.928 -.893 2.072 -.893 3 0l3 3"></path>
								   <path d="M14 14l1 -1c.31 -.298 .644 -.497 .987 -.596"></path>
								   <path
																d="M18.42 15.61a2.1 2.1 0 0 1 2.97 2.97l-3.39 3.42h-3v-3l3.42 -3.39z"></path>
								</svg>
													</span>

												</div>
												<div class="col">
													<div class="font-weight-medium">메인 배너 관리</div>
													<div class="text-muted">현재 메인 등록된 배너 갯수 : 0 개</div>
												</div>
												<div class="col-auto ms-auto d-print-none">
													<a href="#"
														class="btn btn-primary d-none d-sm-inline-block"
														data-bs-toggle="modal" data-bs-target="#modal-report">
														관리 </a>
												</div>

											</div>
										</div>
									</div>
								</div>



								<!-- 셋째 라인-->
								<div class="col-md-12 col-lg-12">
									<div class="row row-deck row-cards">
										<!-- 셋째 라인 - 신규 일반 회원-->
										<div class="col-md-6 col-lg-6">
											<div class="card">
												<div class="card-header">
													<h3 class="card-title">신규 일반 회원</h3>
												</div>
												<div class="card-table table-responsive">
													<table class="table table-vcenter">
														<thead>
															<tr>
																<th>회원명</th>
																<th>닉네임</th>
																<th>가입일자</th>
																<th colspan="2"></th>
															</tr>
														</thead>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>

										<!-- 셋째 줄 둘째 테이블 라인 - 신규 기업 회원 -->
										<div class="col-md-6 col-lg-6">
											<div class="card">
												<div class="card-header">
													<h3 class="card-title">신규 기업 회원</h3>
												</div>
												<div class="card-table table-responsive">
													<table class="table table-vcenter">
														<thead>
															<tr>
																<th>회원명</th>
																<th>닉네임</th>
																<th>가입일자</th>
																<th colspan="2"></th>
															</tr>
														</thead>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
														<tr>
															<td><a href="#" class="ms-1"
																aria-label="Open website"> 회원명 </a></td>
															<td class="text-muted">아이디</td>
															<td class="text-muted">2022-12-18</td>
															<td class="text-end w-1">
																<div class="chart-sparkline chart-sparkline-sm"
																	id="sparkline-bounce-rate-2"></div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>



								<!-- 고객센터 신규 글 -->
								<div class="col-12 mb-3">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title">고객센터 신규 문의</h3>
											<div class="ms-auto text-muted">
												<div class="ms-2 d-inline-block">
													<span class="dropdown">
														<button class="btn dropdown-toggle align-text-top" data-bs-boundary="viewport" data-bs-toggle="dropdown">불만신고</button>
														<div class="dropdown-menu dropdown-menu-end">
															<a class="dropdown-item" href="#"> 불만신고 </a> <a
																class="dropdown-item" href="#"> 문의접수 </a>
														</div>
													</span>
												</div>
											</div>
										</div>
										
										<div class="table-responsive">
											<table
												class="table card-table table-vcenter text-nowrap datatable">
												<thead>
													<tr>
														<th class="w-1">문의번호</th>
														<th>문의 제목</th>
														<th>작성자닉네임</th>
														<th>작성자명</th>
														<th>접수일자</th>
														<th>상태</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><span class="text-muted">001401</span></td>
														<td><a href="invoice.html" class="text-reset"
															tabindex="-1">문의 제목입니다</a></td>
														<td><span class="flag flag-country-us"></span>
															까를로스다요</td>
														<td>김모씨</td>
														<td>2022-12-20</td>
														<td><span class="badge bg-success me-1"></span>답변대기</td>
													</tr>
													<tr>
														<td>
															<span class="text-muted">001402</span>
														</td>
														<td>
															<a href="invoice.html" class="text-reset" tabindex="-1">
																문의 제목입니다
															</a>
														</td>
														<td>
															<span class="flag flag-country-gb"></span>
															어도비이즈프리
														</td>
														<td>최모씨</td>
														<td>2022-12-20</td>
														<td><span class="badge bg-success me-1"></span>답변대기</td>

													</tr>
													<tr>
														<td><span class="text-muted">001403</span></td>
														<td><a href="invoice.html" class="text-reset"
															tabindex="-1">문의 제목입니다</a></td>
														<td><span class="flag flag-country-de"></span>
															콘옥수수솔나무</td>
														<td>이모씨</td>
														<td>2022-12-20</td>
														<td><span class="badge bg-success me-1"></span>답변대기</td>

													</tr>
													<tr>
														<td><span class="text-muted">001404</span></td>
														<td><a href="invoice.html" class="text-reset"
															tabindex="-1">문의 제목입니다</a></td>
														<td><span class="flag flag-country-br"></span>
															전당포아저씨</td>
														<td>김모씨</td>
														<td>2022-12-20</td>
														<td><span class="badge bg-secondary me-1"></span>답변완료</td>
													</tr>
													<tr>
														<td><span class="text-muted">001405</span></td>
														<td><a href="invoice.html" class="text-reset"
															tabindex="-1">문의 제목입니다</a></td>
														<td><span class="flag flag-country-pl"></span>고등개발자</td>
														<td>안모씨</td>
														<td>2022-12-20</td>
														<td><span class="badge bg-secondary me-1"></span>답변완료</td>

													</tr>
													<tr>
														<td><span class="text-muted">001406</span></td>
														<td><a href="invoice.html" class="text-reset"
															tabindex="-1">문의 제목입니다</a></td>
														<td><span class="flag flag-country-br"></span>프젝일인자
														</td>
														<td>박모씨</td>
														<td>2022-12-20</td>
														<td><span class="badge bg-secondary me-1"></span>답변완료</td>
													</tr>

												</tbody>
											</table>
										</div>
										<div class="card-footer d-flex align-items-center">
											<p class="m-0 text-muted">
												Showing <span>1</span> to <span>8</span> of <span>16</span>
												entries
											</p>
											<ul class="pagination m-0 ms-auto">
												<li class="page-item disabled"><a class="page-link"
													href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
														<svg xmlns="http://www.w3.org/2000/svg" class="icon"
															width="24" height="24" viewBox="0 0 24 24"
															stroke-width="2" stroke="currentColor" fill="none"
															stroke-linecap="round" stroke-linejoin="round">
															<path stroke="none" d="M0 0h24v24H0z" fill="none" />
															<polyline points="15 6 9 12 15 18" /></svg> prev
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item active"><a class="page-link"
													href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#">4</a></li>
												<li class="page-item"><a class="page-link" href="#">5</a></li>
												<li class="page-item"><a class="page-link" href="#">
														next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
														<svg xmlns="http://www.w3.org/2000/svg" class="icon"
															width="24" height="24" viewBox="0 0 24 24"
															stroke-width="2" stroke="currentColor" fill="none"
															stroke-linecap="round" stroke-linejoin="round">
															<path stroke="none" d="M0 0h24v24H0z" fill="none" />
															<polyline points="9 6 15 12 9 18" /></svg>
												</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<!-- 설명 적기 좋은 칸으로 혹시나 남겨둠 -->
					<div class="col-12">
						<div class="card card-md">
							<div class="card-stamp card-stamp-lg">
								<div class="card-stamp-icon bg-primary">
									<!-- Download SVG icon from http://tabler-icons.io/i/ghost -->
									<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
										height="24" viewBox="0 0 24 24" stroke-width="2"
										stroke="currentColor" fill="none" stroke-linecap="round"
										stroke-linejoin="round">
										<path stroke="none" d="M0 0h24v24H0z" fill="none" />
										<path
											d="M5 11a7 7 0 0 1 14 0v7a1.78 1.78 0 0 1 -3.1 1.4a1.65 1.65 0 0 0 -2.6 0a1.65 1.65 0 0 1 -2.6 0a1.65 1.65 0 0 0 -2.6 0a1.78 1.78 0 0 1 -3.1 -1.4v-7" />
										<line x1="10" y1="10" x2="10.01" y2="10" />
										<line x1="14" y1="10" x2="14.01" y2="10" />
										<path d="M10 14a3.5 3.5 0 0 0 4 0" /></svg>
								</div>
							</div>
							<div class="card-body">
								<div class="row align-items-center">
									<div class="col-10">
										<h3 class="h1">플젝폴짝 관리자</h3>
										<div class="markdown text-muted">
											《플젝폴짝》은 프로젝트를 찾고 사람을 만나기 위한 개발자들을 위한 프로젝트 매칭
											플랫폼 서비스입니다.<br />
											<a href="https://tabler-icons.io" target="_blank" rel="noopener">플젝폴짝</a>
											, download any of the 2979 icons in SVG, PNG or
											&nbsp;React and use them in your favourite design tools.
										</div>
										<div class="mt-3">
											<a href="https://tabler-icons.io" class="btn btn-primary"
												target="_blank" rel="noopener">플젝폴짝 바로가기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- footer 부분 -->
					<footer class="footer footer-transparent d-print-none">
						<div class="container-xl">
							<div class="row text-center align-items-center flex-row-reverse">
								<div class="col-lg-auto ms-lg-auto">
									<ul class="list-inline list-inline-dots mb-0">
										<li class="list-inline-item"><a href="./docs/"
											class="link-secondary">Documentation</a></li>
										<li class="list-inline-item"><a href="./license.html"
											class="link-secondary">License</a></li>
										<li class="list-inline-item"><a
											href="https://github.com/tabler/tabler" target="_blank"
											class="link-secondary" rel="noopener">Source code</a></li>
										<li class="list-inline-item"><a
											href="https://github.com/sponsors/codecalm" target="_blank"
											class="link-secondary" rel="noopener"> <!-- Download SVG icon from http://tabler-icons.io/i/heart -->
												<svg xmlns="http://www.w3.org/2000/svg"
													class="icon text-pink icon-filled icon-inline" width="24"
													height="24" viewBox="0 0 24 24" stroke-width="2"
													stroke="currentColor" fill="none" stroke-linecap="round"
													stroke-linejoin="round">
													<path stroke="none" d="M0 0h24v24H0z" fill="none" />
													<path
														d="M19.5 12.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" /></svg>
												Sponsor
										</a></li>
									</ul>
								</div>
								
								<div class="col-12 col-lg-auto mt-3 mt-lg-0">
									<ul class="list-inline list-inline-dots mb-0">
										<li class="list-inline-item">Copyright &copy; 2022 <a
											href="." class="link-secondary">Tabler</a>. All rights
											reserved.
										</li>
										<li class="list-inline-item"><a href="./changelog.html"
											class="link-secondary" rel="noopener"> v1.0.0-beta16 </a></li>
									</ul>
								</div>
							</div>
						</div>
						
					</footer>
				</div>
			</div>
			
			
			
			
			
			
			<!-- 모달 창 -->
			<div class="modal modal-blur fade" id="modal-report" tabindex="-1"
				role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">New report</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="mb-3">
								<label class="form-label">Name</label> <input type="text"
									class="form-control" name="example-text-input"
									placeholder="Your report name">
							</div>
							<label class="form-label">Report type</label>
							<div class="form-selectgroup-boxes row mb-3">
								<div class="col-lg-6">
									<label class="form-selectgroup-item"> <input
										type="radio" name="report-type" value="1"
										class="form-selectgroup-input" checked> <span
										class="form-selectgroup-label d-flex align-items-center p-3">
											<span class="me-3"> <span
												class="form-selectgroup-check"></span>
										</span> <span class="form-selectgroup-label-content"> <span
												class="form-selectgroup-title strong mb-1">Simple</span> <span
												class="d-block text-muted">Provide only basic data
													needed for the report</span>
										</span>
									</span>
									</label>
								</div>
								<div class="col-lg-6">
									<label class="form-selectgroup-item"> <input
										type="radio" name="report-type" value="1"
										class="form-selectgroup-input"> <span
										class="form-selectgroup-label d-flex align-items-center p-3">
											<span class="me-3"> <span
												class="form-selectgroup-check"></span>
										</span> <span class="form-selectgroup-label-content"> <span
												class="form-selectgroup-title strong mb-1">Advanced</span> <span
												class="d-block text-muted">Insert charts and
													additional advanced analyses to be inserted in the report</span>
										</span>
									</span>
									</label>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8">
									<div class="mb-3">
										<label class="form-label">Report url</label>
										<div class="input-group input-group-flat">
											<span class="input-group-text">
												https://tabler.io/reports/ </span> <input type="text"
												class="form-control ps-0" value="report-01"
												autocomplete="off">
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="mb-3">
										<label class="form-label">Visibility</label> <select
											class="form-select">
											<option value="1" selected>Private</option>
											<option value="2">Public</option>
											<option value="3">Hidden</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">Client name</label> <input
											type="text" class="form-control">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">Reporting period</label> <input
											type="date" class="form-control">
									</div>
								</div>
								<div class="col-lg-12">
									<div>
										<label class="form-label">Additional information</label>
										<textarea class="form-control" rows="3"></textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<a href="#" class="btn btn-link link-secondary"
								data-bs-dismiss="modal"> Cancel </a> <a href="#"
								class="btn btn-primary ms-auto" data-bs-dismiss="modal"> <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
								<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
									height="24" viewBox="0 0 24 24" stroke-width="2"
									stroke="currentColor" fill="none" stroke-linecap="round"
									stroke-linejoin="round">
									<path stroke="none" d="M0 0h24v24H0z" fill="none" />
									<line x1="12" y1="5" x2="12" y2="19" />
									<line x1="5" y1="12" x2="19" y2="12" /></svg> Create new report
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>