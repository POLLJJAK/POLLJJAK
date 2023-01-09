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

<link href="assets/css/Inner-Project-home.css" rel="stylesheet">
<c:import url="./common/Head.jsp" />
<!-- 내 프로젝트 홈 css 파일 -->
<link href="<%=cp %>/resources/css/Inner-Project-home.css" rel="stylesheet">

<body>
	<!-- 위로 가는 버튼 -->
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>
	
	
	<c:import url="./common/Nav.jsp" />


	<main id="main" class="main-container">

		<!-- 빈칸 여백 -->
		<section class="pb-2"></section>

		<section class="projectHome-list-now pb-2">
			<div class="container">
			
				<div class="projectView container col-lg-12">
					<div class="row">
			
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
											<div class="pj-title p-0 md-2 rounded">${pj_title_info.p_name }</div>
										</div>
										
										<div>
											<div class="pj-date p-0 mt-1 mb-1">${pj_title_info.pj_start_date } ~ ${pj_title_info.pj_end_date }</div>
										</div>
										
										<div>
											<div class="progress p-0" style="font-size: 8px; height: 10px; border: 1px solid #C2C2C2">
												<div class="progress-bar" role="progressbar" style="width: ${pj_title_info.all_percent }%; background-color: #37417C" aria-valuenow="${pj_title_info.all_percent }" aria-valuemin="0" aria-valuemax="100">${pj_title_info.all_percent }%</div>
											</div>
										</div>
									</div>
									
									<div class="col-md-0 col-lg-2"></div>
									<div class="col-md-0 col-lg-2"></div>

								</div>
							</div>
						</div>
						
						
						<!-- 프로젝트 홈 메뉴 -->
						<div class="container">
							<nav id="navbar_" class="mt-5 pj_nav">
							   <ul class="justify-content-center">
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-teammanage.action?u_p_apply_code=${u_p_apply_code}">팀원 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-mainwork.action?u_p_apply_code=${u_p_apply_code}">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto active" href="inner-project-home-meet.action?u_p_apply_code=${u_p_apply_code}">회의록</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-todo.jsp">일정 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto " href="Inner-Project-home-Lounge.jsp">라운지</a></li>
							   </ul>
							</nav>
						</div>

						
						<div class="container">
						   <hr>
						</div>


						<!-- 컨텐츠 란 -->
						<div class="container mb-2 d-flex justify-content-between" style="width: 75%;">
							<h5 class="p-2 m-0 fw-bolder align-self-center">회의록</h5>
							<div class="p-2 ms-auto align-self-center">
								<button type="button" class="gradientBtn color-9" onclick="location.href='<%=cp %>/Inner-Project-home-meet-Post-Insert.jsp'">
								작성하기</button>
							</div>
						</div>
						



	
						<!-- 게시판 글 목록 -->
						<div class="container meetBoard">
							<div class="post-box row justify-content-center">
							
								<c:forEach var="meetBoardList" items="${meetBoardList }">
									<div class="mb-3 post-line-box">
										<div class="d-flex">
											<div class="post-writer align-self-center">${meetBoardList.ph_meet_writer }</div>
											<div class="post-date align-self-center">${meetBoardList.meet_date }</div>
										</div>
										<div class="post-title">${meetBoardList.ph_meet_title }</div>	
										<div class="d-flex">					
											<div class="post-subTitle">${meetBoardList.ph_meet_subtitle }</div>
											<div class="post-updateDate ms-auto align-self-center">${meetBoardList.meet_update_date }</div>
										</div>
									</div>
								</c:forEach>
								
							</div>
						</div>
								

						
						<div class="board_page">
							<ul class="pagination justify-content-center">
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    
							    <li class="page-item"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
						  	</ul>
						</div>

						
						
					</div>
				</div>
			</div>
		</section>
		
	</main>
	

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	


</body>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

</html>