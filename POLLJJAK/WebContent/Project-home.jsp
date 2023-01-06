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


	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>


	<c:import url="./common/Nav.jsp" />



	<main id="main">
	
		<!-- 빈칸 여백 -->
		<section class="pb-2"></section><!-- <div class="mt-5"></div> -->

		<section class="projectHome-list-now pb-2">
			<div class="container">
				<div class="row">
				
					<!-- title -->
					<div class="d-flex justify-content-center col" style="width: 50%;">
						<div class="section-title pt-4">
							<h6 class="">내 프로젝트 홈</h6>
							<div>현재 진행 중인 프로젝트와 완료했던 프로젝트를 확인해보세요!</div>
						</div>
					</div>
					<!-- end title -->
						
					<h5 class="container mb-3 fw-bolder">
						진행중인 프로젝트
					</h5>
					<hr>
					
					<c:forEach var="pj_complete_list" items="${list}">
						<div class="container mb-3" onclick="location.href='<%=cp %>/Inner-Project-home-teamManage.jsp';" style="cursor: pointer;">
							<div class="pj-box">
								<div class="pj-box-body p-3 col-xs-12 col-lg-12">
									<div class="fw-bolder" style="font-size: 16px; font-weight: bold;">${pj_complete_list.p_name }</div>
									<div class="mb-2">${pj_complete_list.pj_start_date } ~ ${pj_complete_list.pj_end_date }</div>
									<div class="mb-1">전체 진척도 <span>${pj_complete_list.all_subwork }%</span></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" style="width: 75%; background-color: #81EC81" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
									</div>								
								</div>
							</div>
						</div>
					</c:forEach>
					
					
				</div>
			</div>
		</section>
		
		
		<section class="projectHome-list-complete">
			<div class="container">
				<div class="row">

					<h5 class="h5 container mb-3 fw-bolder">
						완료 프로젝트
					</h5>
						
					<c:forEach var="pj_complete_list" items="${list}">
						<div class="container mb-3">
							<div class="pj-box">
								<div class="pj-box-body p-3 col-xs-12 col-lg-12">
									<div class="h5 fw-bolder">${pj_complete_list.p_name }</div>
									<div class="mb-2">${pj_complete_list.pj_start_date } ~ ${pj_complete_list.pj_end_date }</div>
									<div class="mb-1">전체 진척도 <span>${pj_complete_list.all_subwork }%</span></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" style="width: 100%; background-color: #5E5E5E" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
									</div>								
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</section>
	</main>
	
	

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />

</body>
</html>