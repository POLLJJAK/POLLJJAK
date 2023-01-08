<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

	<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<c:import url="./common/Nav.jsp" />

	<main id="main">

		<!-- 빈칸 여백 -->
		<section class="pb-2"></section>

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
							      <li><a class="nav-link pb-0 scrollto active" href="inner-project-home-teammanage.action?u_p_apply_code=${u_p_apply_code}">팀원 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-mainwork.action?u_p_apply_code=${u_p_apply_code}">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-meet.jsp">회의록</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-todo.jsp">일정 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto " href="Inner-Project-home-Lounge.jsp">라운지</a></li>
							   </ul>
							</nav>
						</div>
						
						<div class="container">
						   <hr>
						</div>


						<!-- 컨텐츠 란 -->
						<div class="container d-flex justify-content-between">
							<h5 class="p-2 m-0 fw-bolder align-self-center">팀원 목록</h5>
						</div>
						
						
						<div style="overflow-x:auto;">
								<table class="mt-3 mb-3 table table-hover text-center align-middle">
									<thead>
										<tr>
											<th scope="col">권한</th>
											<th scope="col">이름</th>
											<th scope="col">직무</th>
											<th scope="col">기여도</th>
											<th scope="col">마지막 로그인 일자</th>
											<th scope="col">중단요청</th>
											<th scope="col">프로필</th>
										</tr>
									</thead>
									<tbody>	

										<c:forEach var="pj_team_info" items="${pj_team_info}">
											<tr>
												<th scope="row">${pj_team_info.team_role }</th>
												<td>${pj_team_info.u_name }</td>
												<td>${pj_team_info.position_part }</td>
												<td>${pj_team_info.contribute }%</td>
												<td>${pj_team_info.last_login_date }</td>
												<td><button class="btn btn-danger"><div class="bi bi-person-x"></div></button></td>
												<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">Profile</button></td>								
											</tr>
										</c:forEach>

									</tbody>								
								</table>
						</div>
						
						<div class="container">
							<div class="p-2 row justify-content-between">
								<div class="p-1 col-md-12 col-lg-2 text-center align-self-center">
									<div class="p-2 border rounded ">
									전체 팀원 : ${pj_team_count }
									</div>
								</div>

							</div>
						</div>
						
						
						
					</div>
				</div>
				
				
				
				
			</div>
		</section>
		
	</main>
	

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	
	
	<!-- 팀원 평가 모달창 -->
	<div class="modal fade" id="teamEvaluation" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">팀원 평가</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      		<div style="margin-bottom: 20px;">
		      			함께한 팀원들을 평가하세요!
		      		</div>

					<div class="mb-2 row justify-content-center text-center">
						<div class="col-lg-12 mb-1">팀원 1</div>
						
						<!-- 별점 기능 -->
						<div class="scoreSelect1">
							<input type="radio" class="score" id="score1.0" name="score"><label for="score1.0">1.0</label>
							<input type="radio" class="score" id="score1.5" name="score"><label for="score1.5">1.5</label>
							<input type="radio" class="score" id="score2.0" name="score"><label for="score2.0">2.0</label>
							<input type="radio" class="score" id="score2.5" name="score"><label for="score2.5">2.5</label>
							<input type="radio" class="score" id="score3.0" name="score"><label for="score3.0">3.0</label>
							<input type="radio" class="score" id="score3.5" name="score"><label for="score3.5">3.5</label>
							<input type="radio" class="score" id="score4.0" name="score"><label for="score4.0">4.0</label>
							<input type="radio" class="score" id="score4.5" name="score"><label for="score4.5">4.5</label>
							<input type="radio" class="score" id="score5.0" name="score"><label for="score5.0">5.0</label>
						</div>
						
					</div>
					
				
					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="gradientBtn color-9">팀원평가 완료</button>
		      	</div>
		    </div>
		 </div>
	</div>
	
	
	


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


	/* 팀원 평가 별점 기능css*/
	.scoreSelect1 {
	    padding: 15px 10px;
	}
	.scoreSelect1 input[type=radio]{
	    display: none;
	}
	.scoreSelect1 input[type=radio]+label{
	    display: inline-block;
	    cursor: pointer;
	    height: 40px;
	    width: 40px;
	    border: 1px solid #E8E7DA;
	    border-radius: 100%;
	    line-height: 40px;
	    text-align: center;
	    font-weight:bold;
	    font-size:12px;
	}
	.scoreSelect1 input[type=radio]+label{
	    background-color: #fff;
	    color: #333;
	}
	.scoreSelect1 input[type=radio]:checked+label{
	    background-color: #FFE400;
	    border: 1px solid #FFE400;
	    color: #fff;
	}
	
	/* 프로젝트 홈 메뉴*/
	.pj_nav {
	  padding: 0;
	}
	
	.pj_nav ul {
	  margin: 0;
	  padding: 0;
	  display: flex;
	  list-style: none;
	  align-items: center;
	}
	
	.pj_nav li {
	  position: relative;
	}
	
	.pj_nav a,
	.pj_nav a:focus {
	  display: flex;
	  align-items: center;
	  justify-content: space-between;
	  padding: 0 15px 0 15px;
	  font-size: 0.9rem;
	  font-weight: 400;
	  color: #555555;
	  white-space: nowrap;
	}
	
	.pj_nav a:hover,
	.pj_nav .active,
	.pj_nav .active:focus,
	.pj_nav li:hover>a {
	  color: #3498db;
	}
	
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script>

</script>



</html>