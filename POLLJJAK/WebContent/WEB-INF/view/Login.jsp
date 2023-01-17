<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<script src="https://kit.fontawesome.com/51db22a717.js"></script>
<script src="https://code.jquery.com/jquery.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="resources/css/Login.css" />

</head>
<body>
	<div class="page-container">
		<div class="form-container shadow">
			<div class="form-right-side">
				<div class="top-logo-wrap"></div>
				<!-- <h1>Do you know POLLJJACK?</h1> -->
				<h1>플젝폴짝이라고<br> 알고 있니?</h1>
				<p>Team 4, Cheer up guys.<br>We can finish our Final Project in time.<br>Him Eul Nae Yo SUPER POWER.</p>
			</div>
			<div class="form-left-side">
				<div class="top-wrap">
					<span>계정이 없으신가요?</span>
					<div class="create-account-btn">
						<a href="registraionmainform.action">회원가입</a>
					</div>
				</div>
				<div class="empty"></div>
				<form action="login.action" method="post" id="login_form">
					<div class="radioBtn">
						<input class="userType" type="radio" id="user" name="userType" value="user" checked="checked"><label for="user">일반</label>
						<input class="userType" type="radio" id="company" name="userType" value="company"><label for="company">기업</label>
					</div>
					<div class="input-container">
						<div class="input-wrap input-id">
							<i class="fa fa-user"></i>
							<input placeholder="아이디" type="text" id="id" name="id">
						</div>
						<div class="input-wrap input-password">
							<i class="fas fa-key"></i>
							<input placeholder="비밀번호" type="password" id="pw" name="pw">
						</div>
					</div>
					<div class="btn-wrap">
						<span class="err" id="err"></span>
						<button type="button" class="btn">로그인</button>
					</div>
				</form>
				<div class="btn-wrap">
					<div class="moveTo">
						<a href="main.action" >홈으로</a>
						<a> | </a>
						<a href="forgetidform.action" >아이디 찾기</a>
						<a> | </a>
						<a href="forgetpwform.action" >비밀번호 찾기</a>
					</div>
				</div>
				<!-- 
				<div class="sosial">
					<div>
						<div class="section-title pt-5">
							<p>소셜 로그인</p>
						</div>
					</div>
					<div class="sosial-image">
						<div>
							<div class="google">
								<a class="btn btn-lg btn-google btn-block btn-outline" href="#/view/signin/oauth/google">
									<img src="./assets/img/btn_google_signin_light_normal_web.png">
								</a>
							</div>
						</div>
						<div>
							<div class="kakao">
								<a class="btn btn-lg btn-kakao btn-block btn-outline" href="#/view/signin/oauth/kakao">
									<img src="./assets/img/kakao_login_medium_narrow.png">
								</a>
							</div>
						</div>
						<div>
							<div class="naver">
								<a class="btn btn-lg btn-naver btn-block btn-outline" href="#/view/signin/oauth/naver">
									<img src="./assets/img/btnG_big.png">
								</a>
							</div>
						</div>
					</div> 소셜로그인 이미지
				</div> 소셜로그인
				 -->
			</div> <!-- 왼쪽 파트 -->
		</div>
	</div> <!-- 전체 공간 -->

	<script type="text/javascript">
		$(".btn").click(function()
		{
			//alert("함수호출확인");
			
			if ($("#id").val() == "")
			{
				$("#err").html("아이디를 입력해주세요.");
				$("#err").css("display", "inline");
				$("#id").focus();
				return;
			}
			if ($("#pw").val() == "")
			{
				$("#err").html("비밀번호를 입력해주세요.");
				$("#err").css("display", "inline");
				$("#pw").focus();
				return;
			}
			
			ajaxRequest();
		});
		
		function ajaxRequest()
		{
			$.ajaxSetup({async: false});
			$.post("ajaxLogin.action"
					, {
						userType: $("input:radio[name=\"userType\"]:checked").val()
						, id: $("#id").val()
						, pw: $("#pw").val()
			}, function(data)
			{
				if ($.trim(data) == 0)
				{
					$("#err").html("아이디 혹은 비밀번호가 일치하지 않습니다.");
					$("#err").css("display", "inline");
					$("#id").focus();
					return;
				}
				else
				{
			        $("#login_form").submit();
				}
			});
		}
	</script>
</body>
</html>