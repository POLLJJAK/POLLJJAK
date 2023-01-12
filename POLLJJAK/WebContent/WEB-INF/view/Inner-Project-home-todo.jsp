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
						
						
						<div class="d-inline-flex">
						
							<div class="flex-fill">
								<!-- calendar 태그 -->
								<div id='calendar-wrap'>
									<div id='calendar'></div>
								</div>
							</div>
							
							
							<!-- 일정 목록 박스 -->
							<div id='external-events'>
								<div class="pe-2" style="font-size: 1.0rem; font-weight: bold;">주요 일정</div>	
								<hr>
								
							    <div class="fc-event">회의 일정</div>
						    	<div class="notEvent">등록된 회의 일정이 없습니다.</div>
							    	
							    <div class="fc-event">공통 업무</div>
								<div class="notEvent">등록된 공통 업무가 없습니다.</div>

							    <hr>
								
								    
								<div class="d-flex p-2 pe-0 me-0 align-self-center">
									<button type="button" class="gradientBtn color-9" id="addtoDo">일정 등록</button>
								</div>
								
							
	
								<div class="toast-container position-fixed bottom-0 end-0 p-3">
		 							<div id="addtoDoView" class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
			 							 <div class="toast-header">
										    <strong class="me-auto">일정 등록</strong>
										    <small>일정을 추가해주세요</small>
										    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
										 </div>
										  
										 <div class="toast-body">
										   	<div class="p-1">
										   		<div class="mb-1">제목</div>
										   		<input type="text" class="toDoInputBox" maxlength="30" >
										   	</div>
										   	<div class="p-1">
										   		<div class="mb-1">종류</div>
										   			<div class="radioBtn" id="cpt">
														<input type="radio" id="cpt1" name="cpt" value="CPT0000001"><label for="cpt1">회의</label>
														<input type="radio" id="cpt2" name="cpt" value="CPT0000002"><label for="cpt2">공통업무</label>
													</div>
													
										   	</div>
		 									<div class="p-1">
												<div class="mb-1">시작일</div>
												<div>
													<input type="text" class="toDoInputBox2" id="start_schedule" name="todoStartDate">
													<select name="start_time">
														<c:forEach var="hour" begin="0" end="23">
															<option value="<c:if test="${hour < 10}">0</c:if>${hour}"><c:if test="${hour < 10}">0</c:if>${hour}
														</c:forEach>
													</select> 시
													
													<select>
														<c:forEach var="min" begin="0" end="59">
															<option value="<c:if test="${min < 10}">0</c:if>${min}"><c:if test="${min < 10}">0</c:if>${min}
														</c:forEach>
													</select> 분
													
												</div>
												
												<div class="mb-1">종료일</div>
												<div>
													<input type="text" class="toDoInputBox2" id="end_schedule" name="todoEndDate">
													<select name="end_time">
														<c:forEach var="hour" begin="0" end="23">
															<option value="<c:if test="${hour < 10}">0</c:if>${hour}"><c:if test="${hour < 10}">0</c:if>${hour}
														</c:forEach>
													</select> 시
													
													<select>
														<c:forEach var="min" begin="0" end="59">
															<option value="<c:if test="${min < 10}">0</c:if>${min}"><c:if test="${min < 10}">0</c:if>${min}
														</c:forEach>
													</select> 분
												</div>
											</div>
											
										    <div class="mt-2 pt-2 border-top">
										      <button type="button" class="gradientBtn color-9" onclick="click_todoAdd()">등록하기</button>
										    </div>
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
	


	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	


</body>


<!-- 내 프로젝트 홈 → 일정 관리 → 캘린더 -->
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>



<script>
	$(function() {
			// calendar element 취득
			var calendarEl = $('#calendar')[0];
			
			// full-calendar 생성하기
			var calendar = new FullCalendar.Calendar(calendarEl, {
				
				// 해더에 표시할 툴바
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					/* right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek' */
				},
				/* initialDate : '2022-12-25', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.) */
				timeZone: 'Asia/Seoul',
				locale : 'ko', // 한국어 설정
				editable : true, // 수정 가능
				selectable: true,
				/*
				드래그하면 마지막 날짜가 지정한 날짜의 다음날까지 포함해서 출력된다.
		        ex) 2022-08-20 ~ 2022-08-21 까지 캘린더에 드래그하면 결과값은 2022-08-20 ~ 2022-08-22
		        우리가 의도했던 결과와 다르므로 결과값을 임의로 조정해주어야 한다.  
		        */
		        select: function (info) {
		            changeDateFormat(info);
		        },
				//================ajax 데이터 불러올 부분 ========================//
				events: function(info, successCallback, failureCallback) {
					
					$.ajax({
						url:"calendar.action?u_p_apply_code=" + '${u_p_apply_code}',
						type:"GET",
						dataType: "json",
						success: function(data) {
							alert("성공:" + data);
/* 							var events = [];
							if (json.length > 0) {
								$.each(json, function(index, item) {
									events.push({
										todoCode: item.title,
										todoPartCode: item.start,
										todoUserCode: item.end,
										todoTitle: item.end,
										todoStartDate: item.end,
										todoEndDate: item.end,
										todoInsertDate: item.end,
									});
								})								
							}
							successCallback(events); */
						},
						error: function(data) {
							alert("error:"+ data);
						}
					});
					
				}

			});
			// 캘린더 랜더링
			calendar.render();
		});
		
		
		
		


 
	function changeDateFormat(info) {
	    const startDate = info.start; // 시작일자 Date 형식으로 저장
	    const endDate = new Date(info.end.setDate(info.end.getDate() - 1)); // 마지막 날의 day를 -1하여 Date 형식으로 저장
	    const startYear = startDate.getFullYear();
	    const startMonth = startDate.getMonth() + 1;
	    const startDay = startDate.getDate();
	    const endYear = endDate.getFullYear();
	    const endMonth = endDate.getMonth() + 1;
	    const endDay = endDate.getDate();
	
	    // "YYYY-MM-DD" 형식으로 출력하게끔 만든다.
	    // 한 자리 숫자를 두 자리 숫자로 만들기 위해 한 자리 수 앞에 0을 붙여줘야 한다.
	    document.getElementById("start_schedule").value = startYear + "-" +
	        (startMonth >= 10 ? startMonth : "0" + startMonth) +
	        "-" +
	        (startDay >= 10 ? startDay : "0" + startDay);
	    document.getElementById("end_schedule").value =
	        endYear +
	        "-" +
	        (endMonth >= 10 ? endMonth : "0" + endMonth) +
	        "-" +
	        (endDay >= 10 ? endDay : "0" + endDay);
	}
	
	
	
	
	
	// 일정 등록 버튼 토스트창 표시
	const toastTrigger = document.getElementById('addtoDo')
	const toastLiveExample = document.getElementById('addtoDoView')
	if (toastTrigger) {
	  toastTrigger.addEventListener('click', () => {
	    const toast = new bootstrap.Toast(toastLiveExample)

	    toast.show()
	  })
	}
	


	$(function() {
		
		$('#').click(function() {
		});	
	});
	
	
</script>


</html>