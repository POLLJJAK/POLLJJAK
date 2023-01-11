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

<!-- 내 프로젝트 홈 → 일정 관리 → 캘린더 -->
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>

<!-- fullcalendar 언어 CDN -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>


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
						<div class="container">
							<nav id="navbar_" class="mt-5 pj_nav">
							   <ul class="justify-content-center">
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-teammanage.action?u_p_apply_code=${u_p_apply_code}">팀원 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-mainwork.action?u_p_apply_code=${u_p_apply_code}">업무 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="inner-project-home-meet.action?u_p_apply_code=${u_p_apply_code}">회의록</a></li>
							      <li><a class="nav-link pb-0 scrollto active" href="Inner-Project-home-todo.jsp">일정 관리</a></li>
							      <li><a class="nav-link pb-0 scrollto" href="Inner-Project-home-Lounge.jsp">라운지</a></li>
							   </ul>
							</nav>
						</div>
						
						
						
						<div class="container">
						   <hr>
						</div>


						<!-- 컨텐츠 란 -->
						<h5 class="container-lg p-4 pb-0 fw-bolder">일정 관리</h5>
						
						<script>
							$(function()
							{
								$(function()
								{
									// 드래그 박스 취득
									var containerEl = $('#external-events-list')[0];
									var checkbox = document.getElementById('drop-remove');
									
									// 설정하기
									new FullCalendar.Draggable(containerEl, {
										itemSelector : '.fc-event',
										eventData : function(eventEl)
										{
											return {
												title : eventEl.innerText.trim()
											};
										}
									});
									
									// 드래그 아이템 추가하기(반복문으로 추가되는 구조 )
									for (var i = 1; i <= 8; i++)
									{
										var $div = $("<div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'></div>");
										
										$event = $("<div class='fc-event-main'></div>").text("Event " + i);
										
										$('#external-events-list').append($div.append($event));
									}
									
									// calendar element 취득
									var calendarEl = $('#calendar1')[0];
									// full-calendar 생성하기
									var calendar = new FullCalendar.Calendar(calendarEl, {
										// 해더에 표시할 툴바
										headerToolbar : {
											left : 'prev,next today',
											center : 'title',
											right : 'dayGridMonth,listWeek'
											/* right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek' */
										},
										/* initialDate : '2022-12-25', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.) */
										timeZone: 'Asia/Seoul',
										locale : 'ko', // 한국어 설정
										editable : true, // 수정 가능
										droppable : true, // 드래그 가능
										drop : function(info)
										{ 
											// 드래그 엔 드롭 성공시
										  	// 드래그 박스에서 아이템을 삭제한다.
										  	if(checkbox.checked) {
												info.draggedEl.parentNode.removeChild(info.draggedEl);
										  	}
										}
									});
									// 캘린더 랜더링
									calendar.render();
								});
							});
						</script>
						
						
						
						<div class="d-inline-flex">
							<div class="flex-fill">
								<!-- calendar 태그 -->
								<div id='calendar-wrap'>
									<div id='calendar1'></div>
								</div>
							</div>
							
							
							<!-- 드래그 박스 -->
							<div id='external-events'>
								<div class="p-2" style="font-size: 1.0rem; font-weight: bold;">주요 업무</div>	
								<hr>
								
								<div id='external-events-list'>
								</div>
								
								<hr>
								
								<div class="p-2" style="font-size: 1.0rem; font-weight: bold;">주요 일정</div>	
								<hr>
								
							    <div class="fc-event">회의 일정</div>
							    <div class="fc-event">공통 업무</div>

								
								
							    <p>
							      <input type="checkbox" id="drop-remove">
							      <label for="drop-remove">드랍 후 제거</label>
							    </p>
							    
							    <div class="p-2 row" data-bs-toggle="modal" data-bs-target="#calendarEventAdd">
							    	<button class="gradientBtn color-9">일정 등록</button>
							    </div>
							    
							</div>
						</div>




				
					</div>
				</div>
				
				
				
				
			</div>
		</section>
		
	</main>
	
	
		
	<!-- 일정 등록 모달창 (공통업무, 회의 일정)-->
	<div class="modal fade" id="calendarEventAdd" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">일정 등록</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      	
					<div class="form-group mb-3 row">
						<label class="col-sm-4 form-label">일정 제목</label>
						<div class="com-sm-3">
							<input type="text" name="mainWorkTitle" class="form-control" placeholder="제목을 입력해주세요">
						</div>
					</div>

					
					<div class="form-group mb-3 row">
						<label class="col-sm-4 form-label">일정 분류</label>
						<div class="checkbox">
							<input type="checkbox" id="memberUpdate1" name="memberUpdate" value="memberUpdate1"><label for="memberUpdate1">회의</label>
							<input type="checkbox" id="memberUpdate2" name="memberUpdate" value="memberUpdate2"><label for="memberUpdate2">공통업무</label>
						</div>
					</div>

					
					<div class="form-group mb-3 row">
						<label class="col-sm-6 form-label">일정 날짜</label>
						<div class="com-sm-3">
							<div class="com-sm-3">
						        <input type="text" name="startDate" value="" class="datepicker inp" placeholder="진행날짜" readonly="readonly"/> 
							</div>
						</div>
					</div>

					
		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="gradientBtn color-9" onclick="location.href='<%=cp %>/Inner-Project-home-mainWork-Leader.jsp';" style="cursor: pointer;">등록하기</button>
		      	</div>
		    </div>
		 </div>
	</div>
	


	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	


</body>


</html>