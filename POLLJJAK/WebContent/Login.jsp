<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<script src="https://kit.fontawesome.com/51db22a717.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<!-- <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet"> -->
<!-- <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet"> -->
<!-- <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->

<style type="text/css">
	:root{
	
	
	}
	
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
	    padding-top: 50px;
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
	    padding:40px;
	    background: rgb(255,255,255);
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
	.login-form-left-side .login-top-wrap .create-account-btn {
	    background: white;
	    border:  0;
	    width:85px;
	    height: 35px;
	    font-size: 11px;
	    color: #3498db;
	    border-radius: 3px;
	    cursor: pointer;
	}
	.login-input-container{
	    /* padding-top:120px; */
	    width:300px;
	}
	.login-input-container .login-input-wrap{
	    width:300px;
	    height: 45px;
	    margin-top: 20px;
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
	.login-btn-wrap{
	    margin-top: 40px;
	    display: flex;
	    flex-direction: column;
	    align-items: center;;
	}
	.login-btn-wrap .login-btn{
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
	
	
	.radioBtn input[type=radio]
	{
	    display: none;
	}
	
	.radioBtn input[type=radio] + label
	{
	    display: inline-block;
	    cursor: pointer;
	    height: 28px;
	    width: 90px;
	    border: 1px solid #A6A6A6;
	    border-radius:3px;
	    line-height: 24px;
	    text-align: center;
	    font-size:13px;
	    transition:all 0.5s;
	    background-color: #fff;
	    color: gray;
	}
	
	.radioBtn input[type=radio]:checked + label
	{
	    background-color: #3498db;
	    color: #fff;
	    border: 1px solid #3498db;
	}
	
</style>
</head>
<body>
	<div class="page-container" style="font-family: 'Cafe24Ssurround';">
		<div class="login-form-container shadow">
			<div class="login-form-right-side">
				<div class="top-logo-wrap"></div>
				<!-- <h1>Do you know POLLJJACK?</h1> -->
				<h1>플젝폴짝이라고<br> 알고 있니?</h1>
				<p style="margin-left: 30px;">Team 4, Cheer up guys.<br>We can finish our Final Project in time.<br>Him Eul Nae Yo SUPER POWER.</p>
				
			</div>
			<div class="login-form-left-side">
				<div class="login-top-wrap">
					<span>계정이 없으신가요?</span>
					<button class="create-account-btn shadow-light" style="font-family: Cafe24Ssurround">회원가입</button>
				</div>
				<div class="login-input-container">
					<div class="login-input-wrap input-id">
						<i class="fa fa-user"></i>
						<input placeholder="아이디" type="text" style="font-family: Cafe24Ssurround">
					</div>
					<div class="login-input-wrap input-password">
						<i class="fas fa-key"></i>
						<input placeholder="비밀번호" type="password" style="font-family: Cafe24Ssurround;">
					</div>
				</div>
				<div class="radioBtn" style="padding-top: 10px;">
					<input type="radio" id="company" name="user" value="company"><label for="company">기업</label>
					<input type="radio" id="general" name="user" value="general"><label for="general">일반</label>
				</div>
				<div class="login-btn-wrap">
					<button class="login-btn" style="font-family: Cafe24Ssurround;">로그인</button>
					<a href="#" >비밀번호를 잊으셨나요?</a>
				</div>
				<div style="padding: 10px; text-align: center;">
					<div>
						<div class="section-title pt-5">
							<p>소셜 로그인</p>
						</div>
					</div>
					<div style="padding-top: 10px;">
						<div>
							<div>
								<a class="btn btn-lg btn-google btn-block btn-outline" href="#/view/signin/oauth/google">
									<img src="./assets/img/btn_google_signin_light_normal_web.png">
								</a>
							</div>
						</div>
						<div>
							<div>
								<a class="btn btn-lg btn-kakao btn-block btn-outline" href="#/view/signin/oauth/kakao">
									<img src="./assets/img/kakao_login_medium_narrow.png">
								</a>
							</div>
						</div>
						<div>
							<div>
								<a class="btn btn-lg btn-naver btn-block btn-outline" href="#/view/signin/oauth/naver">
									<img src="./assets/img/btnG_big.png" style="width: 186px; height: 45px;">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>