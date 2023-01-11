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

<style type="text/css">
	@font-face {
	    font-family: 'Cafe24Ssurround';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	*{
	    padding: 0;
	    margin: 0;
	    box-sizing: border-box;
	    /* font-family: 'Alata', sans-serif; */
	    /* font-family: 'Noto Sans KR', sans-serif; */
	    font-family: 'Cafe24Ssurround';
	}
	
	.page-container{
	    width: 100vw;
	    height: 100vh;
	    background: #eff0f2;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	
	}
	.shadow{
	    -webkit-box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
	    -moz-box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
	    box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
	}
	
	.login-form-container{
	    background:#f5f5f5 ;
	    width:860px;
	    height: 580px;
	    display: flex;
	    flex-direction: row;
	    box-shadow: 10px black;
	    border-radius: 10px;
	
	}
	.login-form-right-side{
	    width: 50%; 
	    border-radius: 10px 0px 0px 10px;
	    padding:75px;
	    display: flex;
	    flex-direction: column;
	    justify-content: center;
	    align-items: center;
	    color: white;
	    background-image: radial-gradient(ellipse farthest-corner at 0 140%, #70A9FF 0%, #3585FF 70%, #4A92FF 70%);
	}
	.login-form-right-side h1{
	    color: white;
	    width:100%;
	    text-align: right;
	    opacity: 0.9;
	}
	.login-form-right-side p{
	    padding: 50px 0 0 30px;
	    font-size:12px;
	    text-align: right;
	    opacity: 0.8;
	}
	.login-form-left-side{
	    width: 50%;
	    border-radius: 0px 10px 10px 0px;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	    padding:190px;
	    /* background: rgb(255,255,255); */
		background: linear-gradient(287deg, rgba(255,255,255,1) 0%, rgba(243,244,244,1) 0%, rgba(255,255,255,1) 100%);
	}
	.login-form-left-side .login-top-wrap{
	    display: flex;
	    justify-content: flex-end;
	    align-items: center;
	    width:100%;
	}
	.login-form-left-side .login-top-wrap span{
	    color: gray;
	    font-size: 11px;
	    padding-right:20px;
	
	}
	.create-account-btn a{
	    text-decoration: none;
	    font-size: 11px;
	    color: gray;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	}
	.login-input-container{
	    /* padding-top:120px; */
	    width:300px;
	}
	.login-input-container .login-input-wrap{
	    width:300px;
	    height: 45px;
	    margin-top: 10px;
	    border-radius: 2px;
	    border-bottom: solid 2px #3498db;
	   
	}
	.login-input-container .login-input-wrap i{
	    color: #3498db;
	    line-height: 45px;
	}
	
	.login-input-container .login-input-wrap input{
	    background: none;
	    border: none;
	    line-height: 45px;
	    padding-left:10px;
	    width:267px;
	}
	.login-input-container .login-input-wrap input:focus{
	    outline: none;
	}
	
	/* 특정 글꼴이 암호화 특수기호를 지원하지 않아 
	   입력 시 글씨가 보이지 않는 현상이 생김.
	   따라서, placeholder 일 때와 비밀번호를 입력할 때의
	   폰트를 다르게 적용시켜야 함. */
	input[type=password]::placeholder {
		font-family: 'Cafe24Ssurround';
	}
	input[type=password]{
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	.login-btn-wrap{
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	}
	.login-btn-wrap .login-btn{
	    margin-top: 40px;
	    width:95px;
	    height:35px;
	    color:white;
	    border: 0;
	    border-radius: 4px;
	    background-color: #3498db;
	    cursor: pointer;
	}
	.login-btn-wrap a{
	    margin-top:10px;
	    text-decoration: none;
	    font-size: 11px;
	    color: gray;
	}
	
	/* new title  */
	.section-title p {
	  position: relative;
	  color: gray;
	}
	
	.section-title p::before,
	.section-title p::after {
	  content: "";
	  width: 100px;
	  height: 1.5px;
	  background: #3498db;
	  display: inline-block;
	}
	
	.section-title p::before {
	  	margin: 0 10px 3px 0;
	}
	
	.section-title p::after {
	  	margin: 0 0 3px 10px;
	}
	
	.moveTo{
		margin: 5px 0 5px 0;
	}
	
</style>
</head>
<body>
	<div class="page-container">
		<div class="login-form-container shadow">
			<div class="login-form-right-side">
				<div class="top-logo-wrap"></div>
				<!-- <h1>Do you know POLLJJACK?</h1> -->
				<h1>관리자 로그인</h1>
			</div>
			<div class="login-form-left-side">
				<div class="login-top-wrap">
					<div class="create-account-btn">
					</div>
				</div>
				<form method="post" id="login_form">
					<div class="login-input-container">
						<div class="login-input-wrap input-id">
							<i class="fa fa-user"></i>
							<input placeholder="아이디" type="text" name="a_id">
						</div>
						<div class="login-input-wrap input-password">
							<i class="fas fa-key"></i>
							<input placeholder="비밀번호" type="password" name="a_pw">
						</div>
					</div>
					<div class="login-btn-wrap">
						<input type="submit" class="login-btn" value="로그인">
					</div>
				</form>
				<div class="login-btn-wrap">
					<div class="moveTo">
						<a href="main.action" >홈으로</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(".login-btn").click(function()
		{
			//alert("함수호출확인");
			$("#login_form").attr("action", "adminlogin.action");
	        $("#login_form").submit();
		});
	</script>
</body>
</html>