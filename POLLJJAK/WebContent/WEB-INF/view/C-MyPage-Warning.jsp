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
						<h2>마이 페이지</h2>
					</div>
				</div>
				<!-- End PageIntro Section -->
				
				
				<div class="MyPage-Info" style="text-align: center; font-size: small;">
					<img src="assets/img/UserIcon/Company-Icon.png" alt=""
						style="width: 60px; height: 60px; padding: 10px;"> <br>
					<button
						style="color: white; background-color: #3498db; width: 20px; height: 20px; border: none; border-radius: 5px;">1</button>
					<span>${company.c_company_name }</span>
					<p style="margin-bottom: 0px; margin-top: 5px;">4.0/5.0</p>

					<!-- ====== Star ====== 추후 스크립트 처리예정 -->
					<img src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;"> <img
						src="assets/img/UserIcon/star.png" alt=""
						style="width: 10px; height: 10px;">
					<!-- End Star -->

					<p>최근 로그인 날짜 : 2023-01-18</p>
				</div>

				<!-- ====== InnerNav ====== -->
				<!-- 
				<hr>
				<nav id="navbar" class="navbar" >
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto" href="companyupdateform.action">정보</a></li>
						<li><a class="nav-link scrollto" href="U-MyPage-Warning.jsp">프로젝트</a></li>
						<li><a class="nav-link scrollto" href="U-MyPage-Warning.jsp">알림</a></li>
						<li><a class="nav-link scrollto " href="U-MyPage-Warning.jsp">활동내역</a></li>
					</ul>
					<i class="bi bi-list mobile-nav-toggle"></i>
				</nav>
				<hr>
				 -->
				<!-- End InnerNav -->

				<!-- title -->
				<div class="container"  data-aos="fade-up">
					<div class="row">
						<div class="d-flex justify-content-center col" style="width: 50%;"  data-aos="fade-up">
							<div class="section-title pt-4">
								<h6>비밀번호 입력</h6>
								<div>비밀번호 입력 후 마이페이지를 이용하실 수 있습니다</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end title -->
				<form action="companyupdateform.action" method="post" id="my_warning_form">
					<div class="MyPage-Warning" style="text-align: center; margin-bottom: 100px;" >
						<!-- <p style="font-weight: bold;">패스워드 입력 후 마이페이지를 이용하실 수 있습니다</p> -->
						<div style="margin: 0 auto; width: 300px; text-align: center;">
							<input type="text" class="form-control" id="user_code" name="user_code" 
							value="${company.user_code }" disabled="disabled" hidden="hidden">
							<input type="password" class="form-control" id="pw" name="pw" 
							autofocus="autofocus" placeholder="비밀번호를 입력하세요">
							<div class="mt-2">
								<span class="err" id="err"></span>
							</div>
							<button type="button" class="btn btn-default btn-Modify"
								style="background-color: #3498db; color:white; border-radius: 50px; margin-top: 20px; width: 300px;">
								확인</button>
						</div>
					</div>
				</form>
				<hr>
			</div>
		</section>
	</main>
	<!-- End #main -->

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />

</body>
<script>

$(function()
		{
			$(".btn-Modify").click(function()
			{
				if ($("#pw").val() == "")
				{
					$("#err").html("비밀번호를 입력해주세요.");
					$("#err").css("display", "inline");
					$("#pw").focus();
					return;
				}
				
				ajaxRequest();
			});
		});
		
		function ajaxRequest()
		{
			$.ajaxSetup({async: false});
			$.post("ajaxpwCompany.action"
					, {
						user_code: $("#user_code").val(), pw: $("#pw").val()
			}, function(data)
			{
				if ($.trim(data) == 0)
				{
					$("#err").html("비밀번호가 일치하지 않습니다.");
					$("#err").css("display", "inline");
					$("#pw").focus();
					return;
				}
				else
				{
					$("#my_warning_form").attr("action", "companyupdateform.action?user_code=" + $("#user_code").val());  
					$("#my_warning_form").submit();
				}
			});
		}

</script>


</html>