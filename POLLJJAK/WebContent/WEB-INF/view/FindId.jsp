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
<title>아이디찾기</title>
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
				<h1>아이디 확인</h1>
				<p>Team 4, Cheer up guys.<br>We can finish our Final Project in time.<br>Him Eul Nae Yo SUPER POWER.</p>
			</div>
			<div class="form-left-side">
			<div class="empty-more"></div>
				<!-- 
				<div class="radioBtn">
					<input type="radio" id="method-email" name="forgetId" value="method-email"><label for="method-email">이메일로 찾기</label>
					<input type="radio" id="method-tel" name="forgetId" value="method-tel"><label for="method-tel">전화번호로 찾기</label>
				</div>
				 -->
				<div class="input-container email-view">
					<div class="input-wrap input-id">
						<i class="fa fa-user"><span> 아이디 : </span></i>
						<input type="text" id="id" name="id" value="${user.id }"
						style="width: 200px;" readonly="readonly">
					</div>
				</div>
				<div class="input-container btn-wrap">
					<div class="moveTo">
						<a href="main.action" >홈으로</a>
						<a> | </a>
						<a href="forgetpwform.action" >비밀번호 찾기</a>
						<a> | </a>
						<a href="loginform.action" >로그인으로</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>