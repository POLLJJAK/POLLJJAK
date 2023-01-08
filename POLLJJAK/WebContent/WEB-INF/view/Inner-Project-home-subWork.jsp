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
							      <li><a class="nav-link pb-0 scrollto active" href="inner-project-home-mainwork.action?u_p_apply_code=${u_p_apply_code}">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-meet.action?u_p_apply_code=${u_p_apply_code}">회의록</a></li>
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
							<h5 class="p-2 m-0 fw-bolder align-self-center">업무 관리</h5>
							<div class="p-2 pe-0 ms-auto align-self-center">
								<button type="button" class="btn btn-light"
									onClick="location.href = 'inner-project-home-mainwork.action?u_p_apply_code=${u_p_apply_code}'">주요 업무 목록 돌아가기</button>
							</div>
						</div>





						<div class="container-lg mb-3">
							<div class="subWork-box">
								<div class="pj-box-body p-3 col-xs-12 col-lg-12">
									<div class="d-flex justify-content-between">
										<div style="font-size: 1.0rem; font-weight: bold;">${mainwork_title.ph_mainwork_title}</div>
										<div class="mb-2" style="font-size: 1.0rem;">
											${mainwork_title.ph_mainwork_start_date} ~ ${mainwork_title.ph_mainwork_end_date}
										</div>
									</div>
									<div class="d-flex">
										<div class="align-self-center pt-1 pb-1 pr-1"
											style="font-size: 0.8rem; font-weight: bold;">
											진척도 <span>${mainwork_percent}%</span>
										</div>
										<div class="progress align-self-center"
											style="width: 70%; height: 10px;">
											<div class="progress-bar" role="progressbar"
												style="width: ${mainwork_percent}%; background-color: #81EC81"
												aria-valuenow="${mainwork_percent}" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="d-flex ms-auto text-center align-self-center">
											<c:forEach var="mainwork_team" items="${mainwork_team }">
												<div class="teamIcon">${mainwork_team.main_u_name}</div>
											</c:forEach>
										</div>
									</div>

									<hr>

									<!-- 업무 목록 -->
									<div class="container d-flex justify-content-between p-0">
										<div class="align-self-center"
											style="font-size: 1.0rem; font-weight: bold;">업무 목록</div>
										<div class="p-2 pe-0 ms-auto align-self-center"
											data-bs-toggle="modal" data-bs-target="#subWorkAdd">
											<button type="button" class="btn btn-light">세부 업무 추가</button>
										</div>
									</div>


									<c:forEach var="subwork_list" items="${subwork_list }">
									<c:set var="i" value="${i+1 }"/>
									
									<div class="d-flex justify-content-between mb-3">
										<div class="accordion" style="width: 95%;" id="accordionExample">
											<div class="accordion-item">
											
												<div class="accordion-header" id="heading${i}">
													<button class="accordion-button collapsed p-2"
														type="button" data-bs-toggle="collapse"
														data-bs-target="#collapse${i}" aria-expanded="false"
														aria-controls="collapse">
														<div class="col-lg-1">${subwork_list.u_name }</div>
														<div class="col-lg-5">${subwork_list.ph_subwork_title }</div>
														<div class="col-lg-2">${subwork_list.ph_subwork_start_date }</div>
														<div class="col-lg-1">${subwork_list.ph_subwork_complete_date }</div>
													</button>
												</div>
												
												<div id="collapse${i}" class="accordion-collapse collapse"
													aria-labelledby="heading${i}"
													data-bs-parent="#accordionExample">
													<div class="accordion-body">
														<div style="font-size: 1.0rem; font-weight: bold;">세부
															업무 설명</div>
														<hr>
														<div>
															${subwork_list.ph_subwork_detail}
														</div>

														<hr>

														<div>
															<textarea class="form-control" rows="3"></textarea>
															<div class="text-end mt-2">
																<button type="button" class="btn btn-primary"
																	onClick="javascript:addReply();">코멘트 작성</button>
															</div>
														</div>

														<div style="font-size: 1.0rem; font-weight: bold;">팀원
															코멘트</div>

														<hr>
														
														<c:forEach var="subwork_teamComment" items="${subwork_teamComment }">
															
															<c:if test="${subwork_list.swlistcode == subwork_teamComment.scsbcode}">
																<div class="mb-3">
																	<div class="fw-bolder">${subwork_teamComment.tc_u_name }</div>
																	<div>${subwork_teamComment.ph_s_comment_content }</div>
																</div>
															</c:if>

														</c:forEach>
														
													</div>
												</div>
											</div>
										</div>

										<div class="ps-1">
											<button class="p-2 btn btn-success">
												<div class="bi bi-check-lg"></div>
											</button>
										</div>
										<div class="ps-1">
											<button class="p-2 btn btn-danger">
												<div class="bi bi-trash3-fill"></div>
											</button>
										</div>
									</div>
									
									</c:forEach>
									
									
									
									

									<!-- 구분선 -->
									<hr class="p-2">

									<!-- 파일 업로드 -->
									<div class="mb-3" style="font-size: 1.0rem; font-weight: bold;">파일 업로드</div>







									<form action="" method="post" encType="multipart/form-data">
										<div class="input-group mb-3">
											<input class="form-control" type="file" id="formFileMultiple" multiple>
											<input type="submit" class="btn btn-primary" value="업로드">
										</div>
									</form>



									<!-- 파일 목록 -->
									<div class="d-flex">
										<div class="flex-fill filelistBox mb-2">파일이름1.jpg</div>
										<div class="align-items-start mb-2">
											<button class="btn btn-danger">
												<div class="bi bi-trash3-fill"></div>
											</button>
										</div>
									</div>
									<div class="d-flex">
										<div class="flex-fill filelistBox mb-2">파일이름2.jpg</div>
										<div class="align-items-start mb-2">
											<button class="btn btn-danger">
												<div class="bi bi-trash3-fill"></div>
											</button>
										</div>
									</div>
									<div class="d-flex">
										<div class="flex-fill filelistBox mb-2">파일이름3.jpg</div>
										<div class="align-items-start mb-2">
											<button class="btn btn-danger">
												<div class="bi bi-trash3-fill"></div>
											</button>
										</div>
									</div>


									<hr>

								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</section>
		
	</main>
	
	
	<!-- 세부 업무 등록 모달창 -->
	<div class="modal fade" id="subWorkAdd" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">세부 업무 등록</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      	
					<div class="form-group mb-3 row">
						<label class="col-sm-4 form-label">세부 업무 제목</label>
						<div class="com-sm-3">
							<input type="text" name="mainWorkTitle" class="form-control" placeholder="제목을 입력해주세요">
						</div>
					</div>
					
					<div class="form-group mb-3 row">
						<label class="col-sm-6 form-label">세부 업무 설명</label>
						<div class="form-group">
							<textarea class="form-control" rows="2" placeholder="세부내용 설명을 입력해주세요."></textarea>
							<div style="float: right; font-size: 12px;">(최대 500자)</div>
						</div>
						
					</div>
					
					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="btn btn-primary" onclick="location.href='<%=cp %>/Inner-Project-home-mainWork-Leader.jsp';" style="cursor: pointer;">등록하기</button>
		      	</div>
		    </div>
		 </div>
	</div>
	
	
	
	

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />

</body>



</html>