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
<html lang="ko">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />

<!-- 내 프로젝트 홈 css 파일 -->
<link href="<%=cp %>/resources/css/Inner-Project-home.css" rel="stylesheet">

<body>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<c:import url="./common/Nav.jsp" />

	<main id="main">

		<!-- 빈칸 여백 -->
		<section class="pb-2"></section><!-- <div class="mt-5"></div> -->

		<section class="projectHome-list-now pb-2">
			<div class="container">
			
				<!-- 상단 현재 보고있는 프로젝트 표시바 -->
				<div class="projectView container col-lg-12">
					<div class="row">
						<div class="projectStatus p-3 pb-0 border rounded-top">
							<div class="container text-center">
								<div class="row justify-content-center">
								
									<div class="col-md-0 col-lg-2"></div>
									<div class="col-md-0 col-lg-2"></div>
									
									<!-- 프로젝트 정보 (제목, 진행기간, 전체 진척도)-->
									<div class="col-md-12 col-lg-4 mb-4">
										<div>
											<div class="pj-title p-0 md-2 rounded">진행중인 프로젝트 제목1</div>
										</div>
										
										<div>
											<div class="pj-date p-0 mt-1 mb-1">2022-12-24 ~ 2022-12-25</div>
										</div>
										
										<div>
											<div class="progress p-0" style="font-size: 8px; height: 10px; border: 1px solid #C2C2C2">
												<div class="progress-bar" role="progressbar" style="width: 75%; background-color: #81EC81" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
											</div>
										</div>
									</div>
									
									<div class="col-md-0 col-lg-2"></div>
									
									<!-- 중단요청 버튼, 팀원평가 버튼 -->
									<div class="m-0 col-md-12 col-lg-2">
										<div class="row justify-content-center">
											<div class="row col-md-12 col-lg-12" data-bs-toggle="modal" data-bs-target="#stopProject">
												<button class="stopBtn mb-2">중단요청</button>
											</div>
											<div class="row col-md-12 col-lg-12" data-bs-toggle="modal" data-bs-target="#teamEvaluation">
												<button class="scoreBtn mb-2">
													팀원평가
												</button>
											</div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						<!-- 프로젝트 홈 메뉴 -->
						<div class="container">
							<nav id="navbar_" class="mt-5 pj_nav">
							   <ul class="justify-content-center">
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-teamManage.jsp">팀원 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-mainWork.jsp">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-meet.jsp">회의록</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-todo.jsp">일정 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto active" href="Inner-Project-home-Lounge.jsp">라운지</a></li>
							   </ul>
							</nav>
						</div>
						
						<div class="container">
						   <hr>
						</div>


						<!-- 컨텐츠 란 -->
						<h5 class="container-lg p-4 pb-0 fw-bolder">라운지</h5>
				
					</div>
				</div>
				
				
				
				
			</div>
		</section>
		
	</main>
	

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	


</body>


<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script>

</script>

</html>