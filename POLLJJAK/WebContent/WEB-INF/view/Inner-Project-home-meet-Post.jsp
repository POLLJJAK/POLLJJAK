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
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-mainwork.action?u_p_apply_code=${u_p_apply_code}">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto active" href="inner-project-home-meet.action?u_p_apply_code=${u_p_apply_code}">회의록</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-todo.action?u_p_apply_code=${u_p_apply_code }">일정 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto " href="Inner-Project-home-Lounge.jsp">라운지</a></li>
							   </ul>
							</nav>
						</div>
						

						
						<div class="container">
						   <hr>
						</div>



						<!-- 컨텐츠 란 -->
						<div class="container" style="width:75%;">
							<h5 class="p-2 ps-0 m-0 mb-3 fw-bolder align-self-center">회의록</h5>
						</div>
						
						
						
						<!-- 포스트 상세보기 -->
						<div class="container" style="width: 75%;">
							<div class="row justify-content-center">
								<hr>
								<div class="row justify-content-between m-0 mb-3 p-0">
									<div class="m-0 col-8">
										<div class="meet-writer">${meetBoardPost.ph_meet_writer }</div>
										<div class="meet-member">이번 회의에 참석한 사람은
										 <c:forEach var="meetMemberList" items="${meetMemberList }">
										 	${meetMemberList.insert_member}
										 </c:forEach>
										 입니다.</div>
									</div>
									<div class="m-0 pe-0 col-4">
										<div class="post-date">${meetBoardPost.meet_start_date } ~ ${meetBoardPost.meet_end_date }</div>
									</div>
								</div>
								
								<h1 class="meet-title mb-5">${meetBoardPost.ph_meet_title }</h1>
								
								<!-- 본문 내용 -->
								<div class="post-content mb-4">
									${meetBoardPost.ph_meet_content }
								</div>
								<hr>
								<div class="meet-post-fileTitle mb-3">첨부파일</div>
								<div class="meet-post-filebox mb-3">
									<ul class="meet-file-ul">
										<li class="meet-file-li">첨부된 파일명1</li>
										<li class="meet-file-li">첨부된 파일명2</li>
									</ul>
								</div>
								<hr>
							</div>
					    </div>
						
						<div class="container d-flex justify-content-end pe-0 mb-3" style="width: 75%;">
							<div class="d-flex p-2 pe-0 align-self-center">
								<button type="button" class="meet-post-backBtn"
								 onclick="location.href='inner-project-home-meet.action?u_p_apply_code=${u_p_apply_code}'">목록으로</button>
							</div>

							<div class="d-flex p-2 pe-0 align-self-center">
								<button type="button" class="meet-post-deleteBtn" id="DeleteViewBtn">삭제</button>
							</div>
							
							<div class="d-flex p-2 pe-0 me-0 align-self-center">
								<button type="button" class="gradientBtn color-9"
								onclick="location.href='inner-project-home-meet-post-updateform.action?u_p_apply_code=${u_p_apply_code }&ph_meet_code=${meetBoardPost.ph_meet_code }'">수정하기</button>
							</div>
							

							<div class="toast-container position-fixed bottom-0 end-0 p-3">
	 							<div id="DeleteView" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
									 <div class="toast-body">
									 <span class="bi bi-x-circle-fill align-self-center"></span> 해당 회의록 "${meetBoardPost.ph_meet_title }"를 <br>삭제하시겠습니까?
									    <div class="mt-2 pt-2 border-top">
									      <button type="button" class="btn btn-danger btn-sm"
									      onclick="location.href='inner-project-home-meet-post-delete.action?u_p_apply_code=${u_p_apply_code }&ph_meet_code=${meetBoardPost.ph_meet_code}'">예</button>
									      <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="toast">아니오</button>
									    </div>
									  </div>
								</div>
							</div>
							
							
							
						</div>
						
					</div>
				</div>
				
			</div>
		</section>
		
	</main>
	
	
	<script type="text/javascript">
	
		// 삭제 버튼 토스트창 표시
		const toastTrigger = document.getElementById('DeleteViewBtn')
		const toastLiveExample = document.getElementById('DeleteView')
		if (toastTrigger) {
		  toastTrigger.addEventListener('click', () => {
		    const toast = new bootstrap.Toast(toastLiveExample)
	
		    toast.show()
		  })
		}
	
	</script>
	
	

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	
</body>


</html>