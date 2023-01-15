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
						<h2>마이 페이지</h2>
					</div>
				</div>
				<!-- End PageIntro Section -->

				<div class="Company MyPage-Info"
					style="text-align: center; font-size: small;">
					<img src="assets/img/UserIcon/Company-Icon.png" alt=""
						style="width: 60px; height: 60px; padding: 10px;"> <br>
					<button
						style="color: white; background-color: #3498db; width: 20px; height: 20px; border: none; border-radius: 5px;">1</button>
					<span>${company.c_company_name }</span>
					<p style="margin-bottom: 0px; margin-top: 5px;">4.0/5.0</p>

					<!-- ====== Star ====== 추후 스크립트 처리예정 -->
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;">
					<!-- End Star -->
					<p>최근 로그인 날짜 : 2022-12-09</p>
				</div>
				<hr>
				<!-- ====== InnerNav ====== -->
				<nav id="navbar" class="navbar">
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto" href="companyformupdateform.action?user_code=${user_code }">정보</a></li>
						<li><a class="nav-link scrollto" href="U-MyPage-project.jsp">프로젝트</a></li>
						<li><a class="nav-link scrollto" href="U-MyPage-Notification.jsp">알림</a></li>
						<li><a class="nav-link scrollto " href="U-MyPage-Log.jsp">활동내역</a></li>
					</ul>
					<i class="bi bi-list mobile-nav-toggle"></i>
				</nav>
				<hr>
				<!-- End InnerNav -->
				<div class = "row justify-content-end">
					<form action="" class="form-horizontal" method="post" id="">
				  		<fieldset disabled="disabled">
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="id" class="col-sm-2 col-form-label">아이디</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="id" value = "${company.id }" disabled="disabled">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="name" class="col-sm-2 col-form-label">기업명</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="cName" value = "${company.c_company_name }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="name" class="col-sm-2 col-form-label">담당자명</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="name" value="${company.name }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="position" class="col-sm-2 col-form-label">담당자명</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="position" value="${company.c_position }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="email" class="col-sm-2 col-form-label">이메일</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="email" value="${company.email }">
									<div class="input-group">
										<span class="col-sm-1" style="text-align: center; padding-top: 5px;">@</span>
										<select class="form-select" id="domain" name="domain_part_code">
											<option value="none">도메인 선택</option>
											<c:forEach var="domain" items="${domainList }">
											<option value="${domain.domain_part_code }" <c:if test="${company.domain_part_code eq domain.domain_part_code }"> selected="selected"</c:if>  >${domain.domain_part }</option>   
											</c:forEach>
										</select>
									</div>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="companyNum" class="col-sm-2 col-form-label">사업자 등록번호</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="companyNum" value="${company.c_business_number }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<!-- 
							<div class = "col-sm-3">
								<button type="button" class="phone_check"
								style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
								font-size: 13px; font-weight: bold;">
								실명인증</button>
							</div>
							 -->
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="intro" class="col-sm-2 col-form-label">기업소개</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="intro" rows="5">${company.c_intro}</textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="cIdeal" class="col-sm-2 col-form-label">인재상</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="cIdeal" rows="5">${company.c_ideal}</textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="cProject" class="col-sm-2 col-form-label">진행 프로젝트</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="cProject" value = "${company.c_project }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
						</fieldset>
					</form>
				</div>
				<div style = "text-align: center;">
					<button class ="btn btn-primary" id ="modify" 
					style="background-color: #3498db; border-radius: 50px;width: 100px; border: none; display: inline-block;">
					수정하기</button>
					<button type ="button" class ="btn btn-primary" id ="modify_done" 
					style="background-color: #3498db; border-radius: 50px;width: 100px; border: none; display: inline-block;">
					수정완료</button>
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

<script type="text/javascript">
	$(document).ready(function()
	{
		var flag = true;
		
		$("#modify").click(function()
		{
			$("fieldset").attr("disabled", false);
			
			$("#modify_done").click(function()
			{
				alert("수정이 완료되었습니다.");
				$(location).attr("href", "companyupdateform.action");
			});
		});
		
	});
			
	
			

</script>

</html>