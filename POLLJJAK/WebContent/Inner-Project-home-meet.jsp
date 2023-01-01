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
									<div class="col-md-0 col-lg-2"></div>
									

								</div>
							</div>
						</div>
						
						<!-- 프로젝트 홈 메뉴 -->
						<nav id="navbar_" class="mt-5 pb-0 navbar inner-nav"> 
						   <ul style="margin-left: auto; margin-right: auto;">
						      <li><a class="nav-link pb-0  scrollto" href="Inner-Project-home-teamManage.jsp">팀원 관리</a></li>
						      <li><a class="nav-link pb-0  scrollto" href="Inner-Project-home-mainWork.jsp">업무 관리</a></li>
						      <li><a class="nav-link pb-0  scrollto active" href="Inner-Project-home-meet.jsp">회의록</a></li>
						      <li><a class="nav-link pb-0  scrollto" href="Inner-Project-home-todo.jsp">일정 관리</a></li>
						      <li><a class="nav-link pb-0  scrollto " href="Inner-Project-home-Lounge.jsp">라운지</a></li>
						   </ul>
						</nav>
						
						<div class="container">
						   <hr>
						</div>


						<!-- 컨텐츠 란 -->
						<div class="container d-flex justify-content-between">
							<h5 class="p-2 m-0 fw-bolder align-self-center">회의록</h5>
							<div class="p-2 ms-auto align-self-center" data-bs-toggle="modal" data-bs-target="#mainWorkAdd">
								<button type="button" class="btn btn-light">작성하기</button>
							</div>
						</div>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
					</div>
				</div>
				
				
				
				
			</div>
		</section>
		
	</main>
	

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	


</body>


<!-- css 스타일 적용 -->
<style>
	.projectView {
		border: 1px solid gray;
		border-radius: 6px;
	}
	
	.projectStatus {
		background: #EEEEEE;
	}

	.pj-title {
		font-size: 14px;
		font-weight: bold;
		background: #BDBDBD;
	}
	.pj-date {
		font-size: 12px;
	}
	.stopBtn {
		float: right;
		font-size: 14px;
		color: white;
		background: #EC5454;
		border: 0px solid;
		border-radius: 5px;
		transition: 0.3s;
		transition: ease-in-out 0.3s;
	}
	.stopBtn:hover {
		background: #C74B4B;
	}
	
	.scoreBtn {
		float: right;
		font-size: 14px;
		color: black;
		background: #fff;
		border: 1px dotted;
		border-radius: 5px;
		transition: 0.3s;
		transition: ease-in-out 0.3s;
	}
	.scoreBtn:hover {
		color: white;
		background: #5e5e5e;
	}
	.scrollme {
		overflow-x: auto;
	}


</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script>

</script>

</html>