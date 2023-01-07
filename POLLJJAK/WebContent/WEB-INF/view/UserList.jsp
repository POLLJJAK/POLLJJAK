<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentList.jsp</title>
</head>
<body>


<div class="container">
	<div class="panel-group">
		<div class="panel panel-default">
			<div class="panel-body">
				<table class="table table-hover table-striped" border="1">
					<tr class="trTitle">
						<th>유코드</th>
						<th>유저코드</th>
						<th>주요기술</th>
						<th>선호지역</th>
						<th>주요직무</th>
						<th>선호시간</th>
						<th>도메인</th>
						<th>이름</th>
						<th>닉네임</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>자기소개</th>
						<th>포폴</th>
						<th>아이디</th>
						<th>비번</th>
					</tr>
					<!-- .trTitle -->
					<c:forEach var="user" items="${list }">
					<tr>
						<td>${user.u_code }</td>
						<td>${user.user_code }</td>
						<td>${user.subject_part_code }</td>
						<td>${user.region_part_code }</td>
						<td>${user.position_part_code }</td>
						<td>${user.time_part_code }</td>
						<td>${user.domain_part_code }</td>
						<td>${user.u_name }</td>
						<td>${user.u_nickname }</td>
						<td>${user.u_tel }</td>
						<td>${user.u_email }</td>
						<td>${user.u_intro }</td>
						<td>${user.u_portfolio_url }</td>
						<td>${user.u_id }</td>
						<td>${user.u_pw }</td>
					</tr>
					</c:forEach>
				</table>
			</div> <!-- .panel-body -->
		</div> <!-- .panel panel-default -->
	</div> <!-- .panel-group -->
</div> <!-- .container -->


</body>
</html>