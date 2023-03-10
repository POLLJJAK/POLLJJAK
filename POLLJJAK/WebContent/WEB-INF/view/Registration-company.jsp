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
					<form action="companyregistration.action" method="post" id="registrationForm" name="mainform" class="form-horizontal">
				  		<fieldset>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="id" class="col-sm-2 col-form-label">
									아이디<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="id" name="id" autofocus="autofocus">
									<span class="err" id="errId"></span> 
									<span class="err" id="errIdCheck"></span> 
								</div>
								<div class = "col-sm-3">
									<button type="button" class="companyId-check" id="idCheck"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
									font-size: 13px; font-weight: bold;">
									ID 중복검사</button>
								</div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw" class="col-sm-2 col-form-label">
									비밀번호<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw" name="pw" autocomplete="off">
									안전도 <progress class="meter" max="4" value="0" id="meter"></progress>
									<div class="textbox"></div>
									<span class="err" id="errPw"></span>
									<span class="err" id="pwSecure"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw_check" class="col-sm-2 col-form-label">
									비밀번호 확인<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw_check">
									<span class="err" id="errPwCheck"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="cName" class="col-sm-2 col-form-label">
									기업명<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="cName" name="c_company_name">
									<span class="err" id="errCName"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="name" class="col-sm-2 col-form-label">
									담당자명<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="name" name="name">
									<span class="err" id="errName"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="nickName" class="col-sm-2 col-form-label">
									담당자직책<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="position" name="c_position">
									<span class="err" id="errPosition"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="email" class="col-sm-2 col-form-label">
									이메일<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="email" name="email">
									<div class="input-group">
										<span class="col-sm-1" style="text-align: center; padding-top: 5px;">@</span>
										<select class="form-select" id="domain" name="domain_part_code">
											<option value="none">도메인 선택</option>
										<c:forEach var="domain" items="${domainList }">
											<option value="${domain.domain_part_code }">${domain.domain_part }</option>
										</c:forEach>
										</select>
									</div>
									<span class="err" id="errEmail"></span>
									<span class="err" id="errDomain"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="companyNum" class="col-sm-2 col-form-label">
									사업자 등록번호<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="companyNum" name="c_business_number">
									<span class="err" id="errCNum"></span>
									<span class="err" id="errCNumCheck"></span>
								</div>
								<div class = "col-sm-3">
									<button type="button" class="c-business-number" id="companyNumBtn"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db;
									border-radius: 3px; font-size: 13px; font-weight: bold;">
									사업자 등록번호 확인</button>
								</div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="intro" class="col-sm-2 col-form-label">
									기업소개<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="intro" name="c_intro" rows="5"></textarea>
									<span class="err" id="errIntro"></span>
								</div>
								<div class = "col-sm-3"></div>
								<span class="err" id="errIntro"></span>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="cIdeal" class="col-sm-2 col-form-label">인재상</label>
								<div class="col-sm-4">
									<textarea class="form-control" name="c_ideal" rows="5"></textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="cProject" class="col-sm-2 col-form-label">진행 프로젝트</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="cProject" name="c_project">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div style="text-align: center;">
								<button type="button" class="btn btn-primary registration_done" id="c_registration_done" >
								가입하기</button>
							</div>
							<input type="hidden" id="checked_CNumbtn" value="">
							<input type="hidden" id="checkedId_btn" value="">
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
	<script src="<%=cp %>/resources/js/Registration.js"></script>
</body>

</html>