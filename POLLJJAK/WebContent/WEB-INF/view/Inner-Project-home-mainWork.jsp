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

	<main id="main" class="main-container">

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
											<c:choose>
												<c:when test="${pj_title_info.pj_end_check == '종료' }">
													<div class="progress p-0" style="font-size: 8px; height: 10px; border: 1px solid #C2C2C2">
														<div class="progress-bar" role="progressbar" style="width: 100%; background-color: #37417C" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
													</div>
												</c:when>
												<c:otherwise>
													<div class="progress p-0" style="font-size: 8px; height: 10px; border: 1px solid #C2C2C2">
														<div class="progress-bar" role="progressbar" style="width: ${pj_title_info.all_percent }%; background-color: #4EE193" aria-valuenow="${pj_title_info.all_percent }" aria-valuemin="0" aria-valuemax="100">${pj_title_info.all_percent }%</div>
													</div>
												</c:otherwise>
											</c:choose>
											
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
							      <li><a class="nav-link pb-0 scrollto active" href="inner-project-home-mainwork.action?u_p_apply_code=${u_p_apply_code}">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-meet.action?u_p_apply_code=${u_p_apply_code}">회의록</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-todo.action?u_p_apply_code=${u_p_apply_code }">일정 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-lounge.action?u_p_apply_code=${u_p_apply_code }">라운지</a></li>
							   </ul>
							</nav>
						</div>
						
						
						<div class="container">
						   <hr>
						</div>



						<!-- 컨텐츠 란 -->
						<div class="container d-flex justify-content-between">
							<h5 class="p-2 m-0 fw-bolder align-self-center">업무 관리</h5>
							
							<%--
 							팀장코드 : ${pj_team_leader.u_p_apply_code}<br>
							유저코드 : ${u_p_apply_code }
							--%>
							
							<c:if test="${pj_team_leader.u_p_apply_code == u_p_apply_code }">
								<div class="p-2 ms-auto align-self-center" data-bs-toggle="modal" data-bs-target="#mainWorkAdd">
									<button type="button" class="btn btn-light">주요 업무 등록</button>
								</div>
							</c:if>
							
							
							
						</div>
						

						
						
						<!-- 주요 업무 1 -->
						<c:forEach var="pj_mainwork_list" items="${pj_mainwork_list}">
						
							<div class="d-flex justify-content-between p-0">
								<div class="container mb-3" onclick="location.href='inner-project-home-subwork.action?u_p_apply_code=${u_p_apply_code}&ph_mainwork_code=${pj_mainwork_list.ph_mainwork_code}';" style="cursor: pointer;">
									<div class="flex-fill pj-box">
										<div class="pj-box-body p-3 col-xs-12 col-lg-12">
											<div class="d-flex justify-content-between">
												<div class="pj-box-title">${pj_mainwork_list.ph_mainwork_title }</div>
												<div class="mb-2 pj-box-date">${pj_mainwork_list.pj_start_date } ~ ${pj_mainwork_list.pj_end_date }</div>
											</div>
											
											<div class="d-flex">
												<div class="align-self-center pt-1 pb-1 pr-1" style="font-size: 14px; font-weight: bold;">진척도 ${pj_mainwork_list.mainwork_percent }%</div>
												
													<c:choose>
														<c:when test="${pj_mainwork_list.mainwork_percent == 100 }">
															<div class="progress align-self-center" style="width: 65%; height: 10px; margin-left: 5px;">
																<div class="progress-bar" role="progressbar" style="width: ${pj_mainwork_list.mainwork_percent }%; background-color: #0094F8" aria-valuenow="${pj_mainwork_list.mainwork_percent }" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</c:when>
														<c:otherwise>
															<div class="progress align-self-center" style="width: 65%; height: 10px; margin-left: 5px;">
																<div class="progress-bar" role="progressbar" style="width: ${pj_mainwork_list.mainwork_percent }%; background-color: #4EE193" aria-valuenow="${pj_mainwork_list.mainwork_percent }" aria-valuemin="0" aria-valuemax="100"></div>
															</div>	
														</c:otherwise>
													</c:choose>
												
												
													<div class="d-flex ms-auto">
														<c:forEach var="member_list" items="${member_list }">
															<c:if test="${pj_mainwork_list.ph_mainwork_title == member_list.ph_mainwork_title }">
															
																<div class="align-self-center text-center">
																	<div class="teamIcon">${member_list.u_name }</div>
																</div>
																
															</c:if>
														</c:forEach>
													</div>
												
											</div>
											
										</div>
									</div>
								</div>
								
								<c:if test="${pj_team_leader.u_p_apply_code == u_p_apply_code }">
									
									<div class="d-flex align-items-start flex-column pe-3 mb-3">
									
										<div class="mb-auto" data-bs-toggle="modal" data-bs-target="#mainWorkUpdate">
											<button class="p-2 btn btn-white" style="background-color: #98E5AE; color: white;">
												<div class="bi bi-pencil-square"></div>
											</button>
										</div>
										
										<div class="mt-auto">
											<button class="p-2 btn btn-danger">
												<div class="bi bi-trash3-fill"></div>
											</button>
										</div>
										
									</div>
									
								</c:if>
								
								
								
							</div>
							
						</c:forEach>




						<!-- 파일 관리 -->
						<h5 class="container-lg p-4 pb-0 fw-bolder">프로젝트 파일 목록</h5>
						
						<div class="container">
							<div class="filelistBox mb-3">
								<ul class="p-3 list-unstyled">
									<li> 파일1.png </li>
									<li> 파일2.png </li>
									<li> 파일3.png </li>
									<li> 파일4.png </li>
								</ul>
							</div>
						</div>
						
						
					</div>
				</div>
				
				
				
				
			</div>
		</section>
		
	</main>
	
	<!-- 주요 업무 등록 모달창 -->
	<div class="modal fade" id="mainWorkAdd" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">주요 업무 등록</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	
		      	<form action="addmainwork.action?u_p_apply_code=${u_p_apply_code}" method="post" id="addMainWorkForm">
			      	<div class="modal-body row mb-3 justify-content-center">
			      	
						<div class="form-group mb-3 row">
							<label class="col-sm-4 form-label">주요 업무 제목</label>
							<div class="com-sm-3">
								<input type="text" name="ph_mainwork_title" class="form-control" placeholder="제목을 입력해주세요">
							</div>
						</div>
						
						<div class="form-group mb-3 row">
							<label class="col-sm-6 form-label">주요 업무 진행 날짜</label>
							<div class="com-sm-3">
								<div class="d-flex com-sm-3">
							        <input type="text" name="ph_mainwork_start_date" value="" class="datepicker inp p-1 me-2" placeholder="시작일" readonly="readonly"/> 
									<input type="text" name="ph_mainwork_end_date" value="" class="datepicker inp p-1" placeholder="종료일" readonly="readonly" />
								</div>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-sm-4 form-label">진행 팀원</label>
							<div class="checkbox">
								<c:forEach var="mainWorkInsertForm_memberlist" items="${mainWorkInsertForm_memberlist }">
									<input type="checkbox"
									id="${mainWorkInsertForm_memberlist.upa_code }" name="mainWorkMembers" value="${mainWorkInsertForm_memberlist.upa_code }">
									<label for="${mainWorkInsertForm_memberlist.upa_code }"> ${mainWorkInsertForm_memberlist.insert_member }</label>
								</c:forEach>
							</div>
						</div>
						
			      	</div>
			      	
			      	<div class="modal-footer justify-content-center">
			        	<button type="button" class="btn btn-primary" style="cursor: pointer;" id="addMainWorkBtn">등록하기</button>
			      	</div>
		      	</form>
		      	
		      	
		    </div>
		 </div>
	</div>
	
	
	<!-- 주요 업무 수정 모달창 -->
	<div class="modal fade" id="mainWorkUpdate" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">주요 업무 수정</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      	
					<div class="form-group mb-3 row">
						<label class="col-sm-4 form-label">주요 업무 제목</label>
						<div class="com-sm-3">
							<input type="text" name="mainWorkTitle" class="form-control" placeholder="제목을 입력해주세요">
						</div>
					</div>
					
					<div class="form-group mb-3 row">
						<label class="col-sm-6 form-label">주요 업무 진행 날짜</label>
						<div class="com-sm-3">
							<div class="com-sm-3">
						        <input type="text" name="startDate" value="" class="datepicker inp" placeholder="시작일" readonly="readonly"/> 
								<input type="text" name="endDate" value="" class="datepicker inp" placeholder="종료일" readonly="readonly" />
							</div>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-sm-4 form-label">진행 팀원</label>
						<div class="checkbox">
							<input type="checkbox" id="memberUpdate1" name="memberUpdate" value="memberUpdate1"><label for="memberUpdate1">팀원1</label>
							<input type="checkbox" id="memberUpdate2" name="memberUpdate" value="memberUpdate2"><label for="memberUpdate2">팀원2</label>
							<input type="checkbox" id="memberUpdate3" name="memberUpdate" value="memberUpdate3"><label for="memberUpdate3">팀원3</label>	
							<input type="checkbox" id="memberUpdate4" name="memberUpdate" value="memberUpdate4"><label for="memberUpdate4">팀원4</label>
						</div>
					</div>
					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="btn btn-primary" onclick="location.href='<%=cp %>/Inner-Project-home-mainWork.jsp';" style="cursor: pointer;">수정하기</button>
		      	</div>
		    </div>
		 </div>
	</div>
	

	
	
	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	

</body>


<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>


<script type="text/javascript">
	$(function(){
			$('#addMainWorkBtn').click(function(){
				$('#addMainWorkForm').submit();
			});
	})
</script>

</html>