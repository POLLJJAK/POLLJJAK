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
<script src="http://code.jquery.com/jquery.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="resources/css/Login.css" />
<!-- <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet"> -->
<!-- <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet"> -->
<!-- <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->

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
						onclick="location.href='userregistrationform.action';" >
							<i class="fa fa-users"></i>일반회원
						</button>
						<button class="outline" type="button" 
						onclick="location.href='companyregistrationform.action';" >
							<i class="fa fa-building"></i>기업회원
						</button>
					</div>
				</div>
				<div class="input-container btn-wrap">
					<div class="forget">
						<a href="main.aciton" >홈으로</a>
						<a>|</a>
						<a href="loginform.action" >로그인으로</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>