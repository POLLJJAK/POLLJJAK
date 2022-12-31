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
						<nav id="navbar_" class="mt-5 pb-0 navbar inner-nav"> 
						   <ul style="margin-left: auto; margin-right: auto;">
						      <li><a class="nav-link pb-0  scrollto active" href="Project-home-teamManage.jsp">팀원 관리</a></li>
						      <li><a class="nav-link pb-0  scrollto" href="Project-home-workManage.jsp">업무 관리</a></li>
						      <li><a class="nav-link pb-0  scrollto" href="Project-home-todoManage.jsp">일정 관리</a></li>
						      <li><a class="nav-link pb-0  scrollto" href="Project-home-meetingManage.jsp">회의록</a></li>
						      <li><a class="nav-link pb-0  scrollto " href="Project-home-rounge.jsp">라운지</a></li>
						   </ul>
						</nav>
						
						<div class="container">
						   <hr>
						</div>


						<!-- 컨텐츠 란 -->
						<h5 class="container-lg p-4 pb-0 fw-bolder">팀원 관리</h5>
						
						<div style="overflow-x:auto;">
								<table class="table table-hover text-center align-middle">
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
										<tr>
											<th scope="row">팀장</th>
											<td>팀원1</td>
											<td>백엔드</td>
											<td>20%</td>
											<td>2022-12-25</td>
											<td><button class="btn btn-primary">ON</button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">프로필버튼</button></td>								
										</tr>
										<tr>
											<th scope="row">팀원</th>
											<td>팀원2</td>
											<td>백엔드</td>
											<td>20%</td>
											<td>2022-12-25</td>
											<td><button class="btn btn-light">OFF</button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">프로필버튼</button></td>								
										</tr>
										<tr>
											<th scope="row">팀원</th>
											<td>팀원3</td>
											<td>백엔드</td>
											<td>20%</td>
											<td>2022-12-25</td>
											<td><button class="btn btn-light">OFF</button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">프로필버튼</button></td>								
										</tr>
										<tr>
											<th scope="row">팀원</th>
											<td>팀원4</td>
											<td>백엔드</td>
											<td>20%</td>
											<td>2022-12-25</td>
											<td><button class="btn btn-light">OFF</button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">프로필버튼</button></td>								
										</tr>
										<tr>
											<td colspan="7">현재 팀원이 없습니다.</td>
										</tr>
									</tbody>								
								</table>
						</div>
						
						<div class="p-2 pt-0">
							<div class="p-1 d-flex justify-content-end">
								<div class=" p-2 border rounded">
									전체 팀원 : 4 / 5
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
						<div class="col-lg-12 mb-2">팀원 1</div>
						<!-- 별점 기능 -->
						<div class="row justify-content-center">
							<div class="rating-big col-lg-1 align-self-center">1.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">3.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">5.0</div>
						</div>
					</div>

					<div class="mb-2 row justify-content-center text-center">
						<div class="col-lg-12 mb-2">팀원 2</div>
						<!-- 별점 기능 -->
						<div class="row justify-content-center">
							<div class="rating-big col-lg-1 align-self-center">1.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">3.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">5.0</div>
						</div>
					</div>
					
					<div class="mb-2 row justify-content-center text-center">
						<div class="col-lg-12 mb-2">팀원 3</div>
						<!-- 별점 기능 -->
						<div class="row justify-content-center">
							<div class="rating-big col-lg-1 align-self-center">1.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">3.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">5.0</div>
						</div>
					</div>
					
					<div class="mb-2 row justify-content-center text-center">
						<div class="col-lg-12 mb-2">팀원 4</div>
						<!-- 별점 기능 -->
						<div class="row justify-content-center">
							<div class="rating-big col-lg-1 align-self-center">1.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">3.0</div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-medium col-lg-1 align-self-center"></div>
							<div class="rating col-lg-1 align-self-center"></div>
							<div class="rating-big col-lg-1 align-self-center">5.0</div>
						</div>
					</div>
					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="btn btn-primary">팀원평가 완료</button>
		      	</div>
		    </div>
		 </div>
	</div>
	
	<!-- 중단 요청 모달창 -->
	<div class="modal fade" id="stopProject" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">중단 요청</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      		<div style="margin-bottom: 20px;">
		      			중단하시겠습니까?<br>
		      			※ 중단한 프로젝트는 다시 시작할 수 없습니다.
		      		</div>
		      		
		      		<div class="form-group">
						<textarea class="form-control" placeholder="중단 사유를 입력해주세요.">
						</textarea>
						<div style="float: right;">(최대 500자)</div>
					</div>
					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="btn btn-primary">중단하기</button>
		        	<button type="button" class="btn btn-primary">취소하기</button>
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
	.rating {
		width: 15px;
		height: 15px;
		padding: 3px;
		border: 1px solid gray;
		border-radius: 50%;
		margin-left: 5px;
		margin-right: 5px;
	}
	.rating-medium{
		text-align: center;
		font-size: 12px;
		width: 20px;
		height: 20px;
		padding: 3px;
		border: 1px solid gray;
		border-radius: 50%;
		margin-left: 5px;
		margin-right: 5px;
	}
	
	.rating-big {
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 12px;
		width: 35px;
		height: 35px;
		border: 1px solid gray;
		border-radius: 50%;
		margin-left: 5px;
		margin-right: 5px;
	}
	
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script>

</script>



</html>