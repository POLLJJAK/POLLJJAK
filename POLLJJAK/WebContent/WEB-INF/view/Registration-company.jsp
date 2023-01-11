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
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />

<!-- 현재 페이지 resources import -->
<script src="<%=cp %>/resources/js/Registration.js"></script>
<link rel="stylesheet" href="resources/css/Registration.css" />

<body>

	<c:import url="./common/Nav.jsp" />

	<main id="main">
		<!-- ======= Breadcrumbs Section ======= -->
		 <section class="inner-page">
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container" data-aos="fade-up">
				<!-- ====== PageIntro Section ====== -->
				<div class="pageintro">
					<div class="section-title">
						<h2>기업회원 가입</h2>
					</div>
				</div>
				<!-- End PageIntro Section -->
				<hr>
				<!-- End InnerNav -->
				<div class = "row justify-content-end">
					<form action="companyregistration.action" method="post" id="registrationForm" class="form-horizontal">
				  		<fieldset>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="id" class="col-sm-2 col-form-label">아이디</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="id" name="id" autofocus="autofocus">
									<span class="err" id="errId"></span> 
								</div>
								<!-- 
								<div class = "col-sm-3">
									<button type="button" class="id_check"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
									font-size: 13px; font-weight: bold;">
									ID 중복검사</button>
								</div>
								 -->
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw" class="col-sm-2 col-form-label">비밀번호</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw" name="pw">
									<span class="err" id="errPw"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<!-- 
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw_check" class="col-sm-2 col-form-label">비밀번호 확인</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw_check">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							 -->
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="name" class="col-sm-2 col-form-label">기업명</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="cName" name="c_company_name">
									<span class="err" id="errCName"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="nickName" class="col-sm-2 col-form-label">담당자명</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="name" name="name">
									<span class="err" id="errName"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="nickName" class="col-sm-2 col-form-label">담당자직책</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="position" name="c_position">
									<span class="err" id="errPosition"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="email" class="col-sm-2 col-form-label">이메일</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="email" name="email">
									<select class="form-select" id="domain" name="domain_part_code">
										<option value="none">도메인 선택</option>
									<c:forEach var="domain" items="${domainList }">
										<option value="${domain.domain_part_code }">${domain.domain_part }</option>
									</c:forEach>
									</select>
									<span class="err" id="errEmail"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="companyNum" class="col-sm-2 col-form-label">사업자 등록번호</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="companyNum" name="c_business_number">
									<span class="err" id="errCNum"></span>
								</div>
								<!-- 
								<div class = "col-sm-3">
									<button type="button" class="c-business-number"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
									font-size: 13px; font-weight: bold;">
									사업자 등록번호 체크(?)</button>
								</div>
								 -->
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="intro" class="col-sm-2 col-form-label">기업소개</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="intro" name="c_intro" rows="5"></textarea>
									<span class="err" id="errIntro"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="intro" class="col-sm-2 col-form-label">인재상</label>
								<div class="col-sm-4">
									<textarea class="form-control" name="c_ideal" rows="5"></textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pf" class="col-sm-2 col-form-label">진행 프로젝트</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="pf" name="c_project">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div style="text-align: center;">
								<button type="button" class="btn btn-primary" id="registration_done" >
								가입하기</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<hr>
		</section>
	</main>
	<!-- End #main -->

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />


	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>