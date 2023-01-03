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
						<div class="container" style="width:75%;">
							<h5 class="p-2 ps-0 m-0 mb-3 fw-bolder align-self-center">회의록</h5>
						</div>
						
						
						
						<!-- 포스트 상세보기 -->
						<div class="container" style="width: 75%;">
							<div class="row justify-content-center">
								<hr>
								<div class="row justify-content-between m-0 mb-3 p-0">
									<div class="m-0 col-8">
										<div style="font-size: 1.0rem; font-weight: bold;">팀원1</div>
										<div class="meet-member">이번 회의에 참석한 사람은 팀원2, 팀원3 입니다.</div>
									</div>
									<div class="m-0 col-4">
										<div style="font-size: 1.0rem; text-align: right">2023-01-03 ~ 2023-01-03</div>
									</div>
								</div>
								
								<h1 class="mb-3">회의록 제목입니다.</h1>
								
								<!-- 본문 내용 -->
								<div class="mb-3">
									오늘 회의에서는 이러이러하고 이러이러한 일을 진행하였습니다.<br>
									근데 뭐 들으세요?<br>
									아 뉴진스의 하입뽀이요~<br>
									Baby, got me looking so crazy
									빠져버리는 daydream
									Got me feeling you
									너도 말해줄래
									누가 내게 뭐라든
									남들과는 달라 넌
									Maybe you could be the one
									날 믿어봐 한 번
									I'm not looking for just fun
									Maybe I could be the one
									Oh baby
									예민하대 나 lately
									너 없이는 매일 매일이 yeah
									재미없어 어쩌지
									I just want you
									Call my phone right now
									I just wanna hear you're mine
									'Cause I know what you like boy
									You're my chemical hype boy
									내 지난 날들은
									눈 뜨면 잊는 꿈
									Hype boy 너만 원해
									Hype boy 내가 전해
									And we can go high
									말해봐 yeah 느껴봐 mm mm
									Take him to the sky
									You know I hype you boy
									눈을 감아
									말해봐 yeah 느껴봐 mm mm
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
								<button type="button" class="meet-post-deleteBtn" onclick="location.href='<%=cp %>/Inner-Project-home-meet.jsp'">삭제</button>
							</div>
							<div class="d-flex p-2 pe-0 me-0 align-self-center">
								<button type="button" class="gradientBtn color-9">수정하기</button>
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

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script>

</script>

</html>