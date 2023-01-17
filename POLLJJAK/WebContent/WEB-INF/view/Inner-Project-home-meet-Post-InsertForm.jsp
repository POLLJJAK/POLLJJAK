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


<!-- 게시판 썸머노트 lite 버전  -->
<script src="<%=cp %>/resources/js/summernote-lite.js"></script>
<script src="<%=cp %>/resources/js/summernote-ko-KR.js"></script>
<link href="<%=cp %>/resources/css/summernote-lite.css" rel="stylesheet">

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
						<div class="container" style="width:75%;">
							<h5 class="p-2 ps-0 m-0 mb-3 fw-bolder align-self-center">회의록</h5>
						</div>
						
						
						
						
						<form action="inner-project-home-meet-post-insert.action?u_p_apply_code=${u_p_apply_code }" method="post" id="meetPostInsertForm">
		
							<div class="container" style="width:75%;">
								<div>
									<div>회의주제</div>
									<input type="text" id="ph_meet_subtitle" name="ph_meet_subtitle" class="form-control mb-2" placeholder="주제를 입력해주세요." maxlength="10"/>
								</div>
			
			
								<div>
									<div>제목</div>
									<input type="text" id="ph_meet_title" name="ph_meet_title" class="form-control mb-2" placeholder="제목을 입력해주세요." />
								</div>
								
								<div class="mb-3">
									<div>회의일시</div>
									<div class="form-group mb-3">
								        <input type="text" id="meet_start_date" name="meet_start_date" class="datepicker inp" placeholder="회의시작" /> 
										<input type="text" id="meet_end_date" name="meet_end_date"  class="datepicker inp" placeholder="회의종료"  />
									</div>
								</div>
								
								<div class="mb-3">
									<div>참석인원</div>
									<div class="checkbox">
										<c:forEach var="meetInsertForm_memberlist" items="${meetInsertForm_memberlist }">
											<input type="checkbox"
											id="${meetInsertForm_memberlist.upa_code }"
											 name="members" value="${meetInsertForm_memberlist.upa_code }">
											<label for="${meetInsertForm_memberlist.upa_code }"> ${meetInsertForm_memberlist.insert_member }</label>
										</c:forEach>
									</div>
								</div>
							</div>
	
							
							<!-- 포스트 상세보기 -->
							<div class="container d-flex justify-content-center">
								<div style="width: 75%">
									<textarea id="summernote" name="summernote"></textarea>
								</div>
						    </div>
							
							<!-- 버튼 -->
							<div class="container d-flex justify-content-end" style="width: 75%;">
								<div class="d-flex p-2 align-self-center">
									<button type="button" class="btn btn-light"
									 onclick="location.href='inner-project-home-meet.action?u_p_apply_code=${u_p_apply_code}'">
									 취소</button>
								</div>
								<div class="d-flex p-2 pe-0 align-self-center">
									<button type="button" id="meetInsertBtn" class="gradientBtn color-9">작성하기</button>
								</div>
							</div>
							
						</form>
						
					</div>
				</div>
				
			</div>
		</section>
		
	</main>
	
	
	<!-- 썸머노트 스크립트 -->
	<script type="text/javascript">
	
		$(function() {
			
		
			$('#meetInsertBtn').click(function() {
				
	 			var values = document.getElementsByName("members");
				var members = new Array();
				
				for (var i = 0; i < values.length; i++)
				{
					if(values[i].checked) {
						members.push(values[i].value);
					}
				}
				
				$('#meetPostInsertForm').submit();
			});
			

		
		 	$('#summernote').summernote({
		        height: 400,
		 		lang: "ko-KR",
		        placeholder: '내용을 입력해주세요.',
		        tabsize: 2,
		        toolbar: [
		          // 글꼴 설정
		          /* ['fontname', ['fontname']], */
		          // 글자 크기 설정
		          /* ['fontsize', ['fontsize']], */
		          // 굵기, 기울임꼴, 밑줄, 취소 선, 서식지우기 설정 가능
		          ['style', ['style']],
		          ['font', ['bold', 'italic', 'underline','strikethrough']],
		          // 글자색
		          /* ['color', ['color']], */
		          // 글머리 기호, 번호 매기기, 문단 정렬
		          ['para', ['ul', 'ol']],
		          // 표 만들기
		          ['table', ['table']],
		          // 그림첨부, 링크만들기, 동영상 첨부
		          ['insert', ['link', 'picture','video', 'hr']],
		          // 코드보기, 확대해서 보기, 도움말
		          ['view', ['codeview']]
		        ],
		        /* fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'], */
		      });
		 	
		});
	
	</script>

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />

</body>



</html>