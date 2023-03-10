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
				<div class="row">
				
					<!-- title -->
					<div class="d-flex justify-content-center col" style="width: 50%;">
						<div class="section-title pt-4">
							<h6>내 프로젝트 홈</h6>
							<div>현재 진행 중인 프로젝트와 완료했던 프로젝트를 확인해보세요!</div>
						</div>
					</div>
					<!-- end title -->
						
					<h5 class="container mb-3 fw-bolder">
						진행중인 프로젝트
					</h5>
					
					<c:choose>
						<c:when test="${fn:length(pj_run_list) == 0}">
							<div class="container mb-3">
								<div class="mt-3 mb-3 p-3 d-flex justify-content-center">
									<div class="no-pj-title">프로젝트가 존재하지 않습니다.</div>
								</div>
							</div>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="pj_run_list" items="${pj_run_list}">
								<div onclick="location.href='inner-project-home-teammanage.action?u_p_apply_code=${pj_run_list.u_p_apply_code }'">
									<div class="container pe-0 ps-0 mb-3">
										<div class="pj-box">
											<div class="pj-box-body p-3 col-xs-12 col-lg-12">
												<div class="h5 fw-bolder">${pj_run_list.p_name }</div>
												<div class="mb-2">${pj_run_list.pj_start_date }~${pj_run_list.pj_end_date }</div>
												<div class="mb-1">전체 진척도 ${pj_run_list.all_percent }%</div>
												<div class="progress">
													<div class="progress-bar" role="progressbar"
														style="width: ${pj_run_list.all_percent }%; background-color: #81EC81"
														aria-valuenow="${pj_run_list.all_percent }%"
														aria-valuemin="0" aria-valuemax="100">${pj_run_list.all_percent }%</div>
												</div>
												<%-- ${pj_run_list.p_code }
												${pj_run_list.u_p_apply_code } --%>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>

				</div>
			</div>
		</section>
		
		
		<section class="projectHome-list-complete">
			<div class="container">
				<div class="row">

					<h5 class="h5 container mb-3 fw-bolder">
						완료 프로젝트
					</h5>
						
						
					<c:choose>
						<c:when test="${fn:length(pj_complete_list) == 0}">
							<div class="container mb-3">
								<div class="mt-3 mb-3 p-3 d-flex justify-content-center">
									<div class="no-pj-title">프로젝트가 존재하지 않습니다.</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
						
							<c:forEach var="pj_complete_list" items="${pj_complete_list}">
								<div onclick="location.href='inner-project-home-teammanage.action?u_p_apply_code=${pj_complete_list.u_p_apply_code }'">
									<div class="container pe-0 ps-0 mb-3">
										<div class="pj-box">
											<div class="pj-box-body p-3 col-xs-12 col-lg-12">
												<div class="h5 fw-bolder">${pj_complete_list.p_name }</div>
												<div class="mb-2">${pj_complete_list.pj_start_date } ~ ${pj_complete_list.pj_end_date }</div>
												
												<c:choose>
													<c:when test="${pj_complete_list.p_end_condition_code == 'PEC0000003'}">
														<div class="mb-1">중단된 프로젝트입니다.</div>
													</c:when>
													<c:otherwise>
														<div class="mb-1">전체 진척도 100%</div>
														<div class="progress">
															<div class="progress-bar" role="progressbar" style="width: 100%; background-color: #37417C" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</c:otherwise>
												</c:choose>
											</div>
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


	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>


</body>
</html>