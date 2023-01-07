<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 메인</title>
<script src="https://kit.fontawesome.com/51db22a717.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<!-- <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet"> -->
<!-- <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet"> -->
<!-- <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
</script>
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
	    font-family: Cafe24Ssurround;
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
	
	.form-container{
	    background:#f5f5f5 ;
	    width:860px;
	    height: 580px;
	    display: flex;
	    flex-direction: row;
	    box-shadow: 10px black;
	    border-radius: 10px;
	
	}
	.form-right-side{
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
	.form-right-side h1{
	    color: white;
	    width:100%;
	    text-align: right;
	    opacity: 0.9;
	}
	.form-right-side p{
	    padding: 50px 0 0 30px;
	    font-size:12px;
	    text-align: right;
	    opacity: 0.8;
	}
	.form-left-side{
	    width: 50%;
	    border-radius: 0px 10px 10px 0px;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	    padding:110px;
		background: linear-gradient(287deg, rgba(255,255,255,1) 0%, rgba(243,244,244,1) 0%, rgba(255,255,255,1) 100%);
	}
	.form-left-side .top-wrap{
	    display: flex;
	    justify-content: flex-end;
	    align-items: center;
	    width:100%;
	}
	.form-left-side .top-wrap span{
	    color: gray;
	    font-size: 11px;
	    padding-right:20px;
	
	}
	.form-left-side .top-wrap .create-account-btn {
	    background: white;
	    border: 0;
	    width:85px;
	    height: 35px;
	    font-size: 11px;
	    color: #3498db;
	    border-radius: 3px;
	    cursor: pointer;
	}
	.input-container{
	    /* padding-top:120px; */
	    width:300px;
	}
	.input-container .input-wrap{
	    width:300px;
	    height: 45px;
	    margin-top: 20px;
	    border-radius: 2px;
	    border-bottom: solid 2px #3498db;
	   
	}
	.input-container .input-wrap i{
	    color: #3498db;
	    line-height: 45px;
	}
	.input-container .input-wrap .btn{
	    width:95px;
	    height:17px;
	    color:white;
	    border: 0;
	    border-radius: 4px;
	    background-color: #3498db;
	    cursor: pointer;
	}
	
	.input-container .input-wrap input{
	    background: none;
	    border: none;
	    line-height: 45px;
	    padding-left:10px;
	    width:170px;
	}
	.input-container .input-wrap input:focus{
	    outline: none;
	}
	
	/* 특정 글꼴이 암호화 특수기호를 지원하지 않아 
	   입력 시 글씨가 보이지 않는 현상이 생김.
	   따라서, placeholder 일 때와 비밀번호를 입력할 때의
	   폰트를 다르게 적용시켜야 함. */
	input::placeholder {
		font-family: 'Cafe24Ssurround';
	}
	input[type=password]{
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	.btn-wrap{
	    margin-top: 20px;
	    display: flex;
	    flex-direction: column;
	    align-items: center;;
	    text-decoration: none;
	}
	.btn-wrap .forget {
	    font-size: 11px;
	    margin: 5px 0 5px 0;
	}
	.btn-wrap .user-type {
	    font-size: 30px;
	    text-align: center;
	}
	.btn-wrap a{
	    color: gray;
	}
	.outline{
		margin-top: 20px;
		width: 200px;
		line-height: 100px;
		border-radius: 10px 10px 10px 10px;
		border: 4px solid #3498db;
		background-color: white;
		color: gray;
		font-size: 30px;
		padding: 10px;
		cursor: pointer;
	}

	
</style>
</head>
<body>
	<div class="page-container">
		<div class="form-container shadow">
			<div class="form-right-side">
				<div class="top-logo-wrap"></div>
				<h1>회원가입</h1>
				<p>Team 4, Cheer up guys.<br>We can finish our Final Project in time.<br>Him Eul Nae Yo SUPER POWER.</p>
			</div>
			<div class="form-left-side">
				<div class="input-container btn-wrap">
					<div class="user-type">
						<button class="outline" type="button" 
						onclick="location.href='registrationform.action';" >
							<i class="fa fa-users"></i>일반회원
						</button>
						<button class="outline" type="button" 
						onclick="location.href='<%=cp %>/Registration-company.jsp';" >
							<i class="fa fa-building"></i>기업회원
						</button>
					</div>
				</div>
				<div class="input-container btn-wrap">
					<div class="forget">
						<a href="<%=cp %>/U-main.jsp" >홈으로</a>
						<a>|</a>
						<a href="<%=cp %>/Login.jsp" >로그인으로</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>