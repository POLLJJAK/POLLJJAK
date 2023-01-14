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
<title>비밀번호변경</title>
<script src="https://kit.fontawesome.com/51db22a717.js"></script>
<script src="http://code.jquery.com/jquery.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">

<!-- 현재 페이지 resources import -->
<link rel="stylesheet" href="resources/css/Login.css" />

</head>
<body>
	<div class="page-container">
		<div class="form-container shadow">
			<div class="form-right-side">
				<div class="top-logo-wrap"></div>
				<h1>비밀번호 변경</h1>
				<p>Team 4, Cheer up guys.<br>We can finish our Final Project in time.<br>Him Eul Nae Yo SUPER POWER.</p>
			</div>
			<div class="form-left-side">
				<div class="empty"></div>
				<form action="cchangepw.action" id="changePw_form" method="post">
					<div class="input-container">
						<div class="input-wrap input-id">
							<i class="fas fa-user"> 아이디 : </i>
							<input type="text" id="id" name="id" value="${user.id }"
							style="width: 200px;" readonly="readonly">
						</div>
						<div class="input-wrap input-password">
							<i class="fas fa-key"></i>
							<input placeholder="비밀번호" type="password" id="pw" name="pw">
						</div>
						<div class="input-wrap input-password">
							<i class="fas fa-key"></i>
							<input placeholder="비밀번호 확인" type="password" id="pw_check" name="pw_check">
						</div>
					</div>
					<div class="errStyle">
						<span class="err" id="err" style="display: inline;"></span>
					</div>
					<div class="input-container btn-wrap">
						<input type="button" class="changePw btn" id="changePw-btn" value="비밀번호 재설정">
						<div style="margin: 5px 0 5px 0;">
							<a href="main.action" >홈으로</a>
							<a>|</a>
							<a href="loginform.action" >로그인으로</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="<%=cp %>/resources/js/Login.js"></script>
</body>
</html>