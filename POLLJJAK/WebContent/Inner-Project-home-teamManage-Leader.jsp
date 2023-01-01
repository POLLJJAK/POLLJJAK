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
											
											<div class="row col-md-12 col-lg-12"  data-bs-toggle="modal" data-bs-target="#stopProject">
												<button class="L-stopBtn mb-2">중단하기</button>
											</div>
											
											<div class="row col-md-12 col-lg-12">
												<div class="col-lg-6 ps-0 pe-0" data-bs-toggle="modal" data-bs-target="#teamEvaluation">
													<button class="L-scoreBtn mb-2">팀원평가</button>
												</div>
												<div class="col-lg-6 ps-0 pe-0">
													<button type="button" class="projectEndBtn mb-2">마감처리</button>
												</div>
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
							      <li><a class="nav-link pb-0 scrollto active" href="Inner-Project-home-teamManage.jsp">팀원 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-mainWork.jsp">업무 관리</a></li>
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
							<h5 class="p-2 m-0 fw-bolder align-self-center">팀원 관리</h5>
						</div>
						
						
						
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
											<td><button class="btn btn-danger"><div class="bi bi-person-x"></div></button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">Profile</button></td>								
										</tr>
										<tr>
											<th scope="row">팀원</th>
											<td>팀원2</td>
											<td>백엔드</td>
											<td>20%</td>
											<td>2022-12-25</td>
											<td><button class="btn btn-light"><div class="bi bi-person-check-fill"></div></button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">Profile</button></td>								
										</tr>
										<tr>
											<th scope="row">팀원</th>
											<td>팀원3</td>
											<td>백엔드</td>
											<td>20%</td>
											<td>2022-12-25</td>
											<td><button class="btn btn-light"><div class="bi bi-person-check-fill"></div></button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">Profile</button></td>								
										</tr>
										<tr>
											<th scope="row">팀원</th>
											<td>팀원4</td>
											<td>백엔드</td>
											<td>20%</td>
											<td>2022-12-25</td>
											<td><button class="btn btn-light"><div class="bi bi-person-check-fill"></div></button></td>
											<td><button class="btn btn-light" onclick="location.href='./U-MyPage-Warning.jsp';">Profile</button></td>								
										</tr>
										<tr>
											<td colspan="7">현재 팀원이 없습니다.</td>
										</tr>
									</tbody>								
								</table>
						</div>
						
						<div class="container">
							<div class="p-2 row justify-content-between">
								<div class="p-1 col-lg-2 text-center align-self-center">
									<div class="p-2 border rounded ">
									전체 팀원 : 4 / 5
									</div>
								</div>
								
								<div class="p-1 col-lg-2" data-bs-toggle="modal" data-bs-target="#inviteTeamBtn">
									<button class="p-2 gradientBtn color-9" style="float: right;">팀원초대</button>
								</div>
							</div>
						</div>
						
					</div>
				</div>
				
				
				
				
			</div>
		</section>
		
	</main>
	

	<!-- 팀원 초대 모달창 -->
	<div class="modal fade" id="inviteTeamBtn" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">팀원 초대</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      		<div class="mb-2">새로운 팀원을 초대하세요.</div>
		      		
					<div class="input-group mb-3">
					  <label class="input-group-text" for="inputGroupSelect01">초대 직무</label>
					  <select class="form-select" id="inputGroupSelect01">
					    <option selected>직무</option>
					    <option value="frond-end">백엔드 개발자</option>
					    <option value="back-end">프론트 개발자</option>
					    <option value="designer">UI/UX 디자이너</option>
					  </select>
					</div>
					
					<div class="input-group mb-3">
					  <input type="text" class="form-control" aria-describedby="button-addon2" readonly value="링크 생성되면 값들어가는 곳">
					  <button class="btn btn-outline-secondary" type="button" id="button-addon2">링크 생성</button>
					</div>
					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="gradientBtn color-9" id="submitStopBtn">링크 복사하기</button>
		      	</div>
		    </div>
		 </div>
	</div>


	<!-- 팀원 방출 모달창 -->
	<div class="modal fade" id="outTeamBtn" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">팀원 방출</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      		<div class="mb-2">팀원 방출 사유를 입력하세요.</div>
		      		
					<div class="input-group mb-3">
					  <label class="input-group-text" for="inputGroupSelect01">방출 사유</label>
					  <select class="form-select" id="inputGroupSelect01">
					    <option selected>방출 사유</option>
					    <option value="out-notparticipate">참여도 저조</option>
					    <option value="out-bad">욕설 및 비방</option>
					    <option value="out-notlogin">로그인 기록 없음</option>
					    <option value="out-etc">기타</option>
					  </select>
					</div>

					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="btn btn-danger" id="submitStopBtn">방출하기</button>
		      	</div>
		    </div>
		 </div>
	</div>


	<!-- 팀원 평가 모달창 -->
	<div class="modal fade" id="teamEvaluation" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">팀원 평가</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      		<div>
		      			함께한 팀원들을 평가하세요!
		      		</div>
					<div style="font-size: 12px; margin-bottom: 20px;">
						팀장이 팀원평가를 완료하면 팀원들도 팀원평가를 진행할 수 있습니다.
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
	

	<!-- 중단 요청 모달창 -->
	<div class="modal fade" id="stopProject" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">중단 요청</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      		<div>중단하시겠습니까?</div>
		      		<div style="margin-bottom: 20px; font-size: 12px; font-weight: bold;">※ 중단한 프로젝트는 다시 시작할 수 없습니다.</div>
		      		
		      		<div class="form-group">
						<textarea class="form-control" rows="2" placeholder="중단 사유를 입력해주세요."></textarea>
						<div style="float: right; font-size: 12px;">(최대 500자)</div>
					</div>
					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="btn btn-danger" id="submitStopBtn">중단하기</button>
		        	<button type="button" class="btn btn-light" data-bs-dismiss="modal">취소하기</button>
		      	</div>
		    </div>
		 </div>
	</div>


	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />

</body>


</html>