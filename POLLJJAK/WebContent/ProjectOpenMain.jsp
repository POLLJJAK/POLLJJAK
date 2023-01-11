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
	<!-- 해당 페이지 관련 css 및 js import 영역 -->
	<link href="<%=cp %>/resources/css/ProjectOpenMain.css" rel="stylesheet">
	<script src="<%=cp %>/resources/js/ProjectOpenMain.js"></script>
	<link href="<%=cp %>/resources/css/Inner-Project-home.css" rel="stylesheet">

	<!-- head import (css imported)-->
	<c:import url="./common/Head.jsp" />
	

	<script type="text/javascript">
		document.getElementById("myProjectHome").className = "nav-link scrollto active";
		document.getElementById("projectOpen").className = "nav-link scrollto";
		document.getElementById("projectMake").className = "nav-link scrollto";
		document.getElementById("Rounge").className = "nav-link scrollto";
		document.getElementById("viewCompany").className = "nav-link scrollto";
	</script>

	<body>

		<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
	
		<c:import url="./common/Nav.jsp" />
	
	
		<main id="main">
		
			<!-- 빈칸 여백 -->
			<section class="pb-2"></section><!-- <div class="mt-5"></div> -->
		
			<section class="projectHome-list-now pb-2" data-aos="fade-up">
		
				<div class="container">
					<div class="row">
						<!-- title -->
						<div class="d-flex justify-content-center col" style="width: 50%;"  data-aos="fade-up">
							<div class="section-title pt-4">
								<h6>프로젝트 개설</h6>
								<div>진행 중인 프로젝트와 지난 모집 내역을 확인 해보세요</div>
							</div>
						</div>
						<!-- end title -->
					</div>
				</div>
						
				<div class="container">
					<div class="row">
					
						<form action="">
							<div>
							<h5 class="container-lg mb-3 fw-bolder">
								개설 진행 중
								<c:if test="${empty uProjectInfo.p_code}">
									 <input type="button" class="btn btn-primary" value="새로운 프로젝트 개설" 
									onclick="location.href='projectopen.action?user_code=${user_code}'"
									style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
								</c:if>
							</h5>
							</div>
						</form>
						<hr />
						<c:choose>
							<c:when test="${empty uProjectInfo.p_code}">
								<div class="container mb-3">
									<div class="mt-1 mb-1 p-1 d-flex justify-content-center">
										<div class="no-pj-title">프로젝트가 존재하지 않습니다.</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
							<div class="container-lg mb-3" onclick="location.href='projectDetail.action?p_code=${uProjectInfo.p_code}'" style="cursor: pointer;">
								<div class="pj-box">
									<div class="pj-box-body p-3 col-xs-12 col-lg-12">
										<div class="h5 fw-bolder">${uProjectInfo.p_name} [모집중] </div>
										<div class="mb-2">${uProjectInfo.p_start_date} ~ ${upInfo.p_end_date}</div>
									</div>
								</div>
							</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</section>
			 
			<section class="projectHome-list-complete" data-aos="fade-up">
				<div class="container">
					<div class="row">
					
						<h5 class="h5 container-lg mb-3 fw-bolder">
						모집 실패 내역
						</h5>
						<hr>
						<c:choose>
							<c:when test="${empty uProjectFailedInfo[0].p_name}">
							<div class="container mb-3">
									<div class="mt-1 mb-1 p-1 d-flex justify-content-center">
										<div class="no-pj-title">모집 실패 프로젝트가 존재하지 않습니다.</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<c:forEach var="failedInfo" items="${uProjectFailedInfo }" varStatus="status">
								<div class="container-lg mb-3">
									<div class="pj-box">
										<div class="pj-box-body p-3 col-xs-12 col-lg-12" onclick="location.href='projectDetail.action?p_code=${failedInfo.p_code}'">
											<input type="button" class="btn btn-primary" value="리스트에서 삭제" id="deleteList1" 
											style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
											<div class="h5 fw-bolder">${failedInfo.p_name} [모집 실패]</div>
											<div class="mb-2">${failedInfo.p_start_date} ~ ${failedInfo.p_end_date}</div>
										</div>
									</div>
								</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</section>
		
		</main>
	
		<!-- footer import (js imported)-->
		<c:import url="./common/Footer.jsp" />

	</body>
</html>