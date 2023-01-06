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
						<h2>기업회원 가입</h2>
					</div>
				</div>
				<!-- End PageIntro Section -->
				<hr>
				<!-- End InnerNav -->
				<div class = "row justify-content-end">
					<form class="form-horizontal">
				  		<fieldset>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="id" class="col-sm-2 col-form-label">아이디</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="id" value = "kimmosea">
								</div>
								<div class = "col-sm-3">
									<button type="button" class="id_check"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
									font-size: 13px; font-weight: bold;">
									ID 중복검사</button>
								</div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw" class="col-sm-2 col-form-label">비밀번호</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw" value = "0000">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw_check" class="col-sm-2 col-form-label">비밀번호 확인</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw_check">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="company" class="col-sm-2 col-form-label">기업명</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="company" value = "SIST">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="companyNum" class="col-sm-2 col-form-label">사업자등록번호</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="companyNum" value ="123-123-123">
								</div>
								<div class = "col-sm-3">
									<button type="button" class="companyNum_check"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
									font-size: 13px; font-weight: bold;">
									사업자 등록 인증</button>
								</div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="name" class="col-sm-2 col-form-label">담당자 이름</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="name" value = "김모씨">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="email" class="col-sm-2 col-form-label">이메일</label>
								<div class="col-sm-4">
									<input type="email" class="form-control" id="email" value = "hgd@test.com">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="position" class="col-sm-2 col-form-label">직책</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="position" value = "대리">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="intro" class="col-sm-2 col-form-label">기업소개</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="intro" rows="5">안녕하세요 착한기업입니다</textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="injesang" class="col-sm-2 col-form-label">인재상</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="injesang" rows="5">우린 이런 사람 찾습니다</textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="company-project" class="col-sm-2 col-form-label">기업 진행프로젝트</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="company-project" rows="5">우린 이런거 합니다</textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="persnal-skill" class="col-sm-2 col-form-label">기업 주요기술</label>
								<div class="col-sm-4">
									<select class="form-select" id="persnal-skill">
									<option value="none">기술 선택</option>
									<option value="Java" selected>Java</option>
									<option value="Spring">Spring</option>
									<option value="React">React</option>
									<option value="Python">Python</option>
									<option value="C">C</option>
									<option value="C++">C++</option>
									<option value="Kotlin">Kotlin</option>
									<option value="Angular">Angular</option>
									<option value="TypeScript">TypeScript</option>
									<option value="NodeJs">NodeJs</option>
									<option value="Linux">Linux</option>
									<option value="Docker">Docker</option>
									<option value="Perl">Perl</option>
									<option value="Kubernetes">Kubernetes</option>
									<option value="AWS">AWS</option>
								</select>
								</div>
								<div class = "col-sm-3"></div>
							</div>
					</fieldset>
				</form>
				</div>
				<div style = "text-align: center;">
					<button type = "submit" class ="btn btn-primary" id = "registration_done" 
					style="background-color: #3498db; border-radius: 50px;width: 100px; border: none; display: inline-block;">
					가입하기</button>
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
		$(".id_check").click(function()
		{
			alert("존재하는 아이디 입니다.");
		});
		$(".companyNum_check").click(function()
		{
			alert("사업자등록번호 api 사용 예정");
		});
		
		$("#registration_done").click(function()
		{
			alert("회원가입이 완료되었습니다.");
			$(location).attr("href", "/POLLJJAK/U-MyPage-Info.jsp");
		});
		
	});
			
	
			

</script>

</html>