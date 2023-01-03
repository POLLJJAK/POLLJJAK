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
						<div class="container">
							<nav id="navbar_" class="mt-5 pj_nav">
							   <ul class="justify-content-center">
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-teamManage.jsp">팀원 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-mainWork.jsp">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto active" href="Inner-Project-home-meet.jsp">회의록</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-todo.jsp">일정 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto " href="Inner-Project-home-Lounge.jsp">라운지</a></li>
							   </ul>
							</nav>
						</div>
						
						
						<div class="container">
						   <hr>
						</div>


						<!-- 컨텐츠 란 -->
						<div class="container d-flex justify-content-center">
							<h5 class="p-2 m-0 fw-bolder align-self-center">회의록</h5>
						</div>
	
						<div>
							제목
						</div>
						
						<div>
							회의시작일시 ~ 회의종료일시
						</div>
						
						<div>
							참석자 - 팀원1 팀원2 팀원3 팀원4
						</div>
						
						<div>
							회의안건
						</div>


						
						<!-- 포스트 상세보기 -->
						<div class="container">
							<div style="width: 70%">
								<div id="summernote"></div>
							</div>
					    </div>
						
						<div class="container d-flex justify-content-end">
							<div class="d-flex p-2 align-self-center">
								<button type="button" class="btn btn-light">취소</button>
							</div>
							<div class="d-flex p-2 align-self-center">
								<button type="button" class="gradientBtn color-9">작성하기</button>
							</div>
						</div>
						
					</div>
				</div>
				
				
				
				
			</div>
		</section>
		
	</main>
	
	<!-- 썸머노트 스크립트 -->
	<script type="text/javascript">
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
	          ['insert', ['link', 'picture', 'video', 'hr']],
	          // 코드보기, 확대해서 보기, 도움말
	          ['view', ['codeview']]
	        ],
	        /* fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'], */
	      });
	
	</script>

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />

</body>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>





</html>