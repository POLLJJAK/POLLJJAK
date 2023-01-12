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
				<h1>아이디 찾기</h1>
				<p>Team 4, Cheer up guys.<br>We can finish our Final Project in time.<br>Him Eul Nae Yo SUPER POWER.</p>
			</div>
			<div class="form-left-side">
				<div class="empty"></div>
				<!-- 
				<div class="radioBtn">
					<input type="radio" id="method-email" name="forgetId" value="method-email"><label for="method-email">이메일로 찾기</label>
					<input type="radio" id="method-tel" name="forgetId" value="method-tel"><label for="method-tel">전화번호로 찾기</label>
				</div>
				 -->
				<form action="findid.action" method="post" id="findId_form">
					<div class="input-container email-view">
						<div class="radioBtn">
							<input type="radio" class="userType" id="user" name="userType" value="user" checked="checked"><label for="user">일반</label>
							<input type="radio" class="userType" id="company" name="userType" value="company"><label for="company">기업</label>
						</div>
						<div class="input-wrap input-name">
							<i class="fa fa-user-o"></i>
							<input type="text" id="name" name="name" placeholder="이름">
						</div>
						<div class="input-wrap">
							<i class="fa fa-envelope"></i>
							<input class="email" type="text" id="email" name="email" placeholder="이메일">
							<!-- <button type="button" class="input-email btn">인증번호 받기</button> -->
							<span>@</span>
							<select class="domain-select" id="domain" name="domain_part_code">
								<option value="none">도메인 선택</option>
							<c:forEach var="domain" items="${domainList }">
								<option value="${domain.domain_part_code }">${domain.domain_part }</option>
							</c:forEach>
							</select>
						</div>
						<!-- 
						<div class="input-wrap">
							<i class="fas fa-unlock-alt"></i>
							<input placeholder="인증번호" type="text">
							<button type="button" class="input-authentic btn">확인</button>
						</div>
						 -->
					</div>
					<!-- 
					<div class="input-container tel-view">
						<div class="input-wrap input-name">
							<i class="fa fa-user-o"></i>
							<input placeholder="이름" type="text">
						</div>
						<div class="input-wrap">
							<i class="fa fa-phone"></i>
							<input placeholder="전화번호" type="text">
							<button type="button" class="input-tel btn">인증번호 받기</button>
						</div>
						<div class="input-wrap">
							<i class="fas fa-unlock-alt"></i>
							<input placeholder="인증번호" type="text">
							<button type="button" class="input-authentic btn">확인</button>
						</div>
					</div>
					 -->
					<!-- 
					<div class="input-container empty-view">
						<br><br><br>
						<span>위의 "이메일로 찾기"<br>혹은 "전화번호로 찾기" 중<br>
						원하는 수단을 선택해<br>아이디를 찾아보세요.</span>	
					</div>
					 -->
					<div class="errStyle">
						<span class="err" id="err" style="display: inline;"></span>
					</div>
					<div class="input-container btn-wrap">
						<button type="button" class="btn" id="findId-btn">다음</button>
					</div>
				</form>
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
	<script type="text/javascript">
			$("#findId-btn").click(function()
			{
				$(".err").css("display", "none");
				
				if ($("#name").val() == "")
				{
					$("#err").html("이름을 입력해주세요.");
					$("#err").css("display", "inline");
					$("#name").focus();
					return;
				}
				if ($("#email").val() == "")
				{
					$("#err").html("이메일을 입력해주세요.");
					$("#err").css("display", "inline");
					$("#email").focus();
					return;
				}
				if ($("#domain").val() == "none")
				{
					$("#err").html("도메인을 선택해주세요.");
					$("#err").css("display", "inline");
					$("#domain").focus();
					return;
				}
				
				ajaxRequest();
				
				/*
				var params = {userType: $("input:radio[name=\"userType\"]:checked").val()
							  , name: $("#name").val()
							  , email: $("#email").val()
							  , domain_part_code: $("select[id=domain] > option:selected").val()};  
 				//var params = "userType=" + $("input:radio[name=\"userType\"]:checked").val() + "&name=" + $("#name").val() + "&email=" + $("#email").val() + "&domain_part_code=" + $("select[id=domain] > option:selected").val();
				
				$.ajax(
				{
					type:"POST"
					, url:"ajaxFindId.action"
					, data:params
					, dateType:"json"
					, success:function(data)
					{
						if(data.equals(ajax))
						{
							$("#err").html("입력하신 정보와 일치하는 아이디가 없습니다.");
							$("#err").css("display", "inline");
							$("#name").focus();
							return;
						}
						else
						{
							$("#findId_form").submit();
						}
					}
					,error :function(e)
					{
						alert("에러코드 : " + e.responseText + "/" + e.status);
						$("#err").html("해당 정보가 없습니다.");
					}
					
				});
			*/
			});
			
			function ajaxRequest()
			{
				$.ajaxSetup({async: false});
				$.post("ajaxFindId.action"
						, {
							name: $("#name").val()
							, email: $("#email").val()
							, domain_part_code: $("select[id=domain] > option:selected").val()
							, userType: $("input:radio[name=\"userType\"]:checked").val()
				}, function(data)
				{
					if (params != $.trim(data) )   
					{
						$("#err").html("입력하신 정보와 일치하는 아이디가 없습니다.");
						$("#err").css("display", "inline");
						$("#name").focus();
						return;
					}
					else
					{
				        $("#findId_form").submit();
					}
				});
			}
			
	</script>
</body>
</html>