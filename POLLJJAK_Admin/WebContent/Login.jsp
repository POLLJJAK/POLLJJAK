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
<!-- 반응형 meta 태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login.jsp</title>
<style type="text/css">
	html, body {
		height: 100%;
		background: #ffffff;
	}
	
	#container {
		margin-top: 120px;
	}
	
	#Title {
		font-size: 24px;
		font-weight: bold;
	}
	
	#subTitle {
		font-size: 12px;
	}
	
    .line {
      display: flex;
      flex-basis: 100%;
      align-items: center;
      color: #6B7280;
      font-size: 14px;
    }
    
    .line::before {
      content: "";
      flex-grow: 1;
      background: #6B7280; 
      height: 1px;
      font-size: 0px;
      line-height: 0px;
      margin: 0px 10px 0px 0px;
    }
     
    .line::after {
      content: "";
      flex-grow: 1;
      background: #6B7280; 
      height: 1px;
      font-size: 0px;
      line-height: 0px;
      margin: 0px 0px 0px 10px;
    }


</style>

<!-- jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 부트스트랩 적용 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</head>
<body>
<div class="container" id="container">
	<div class="col-4 mx-auto row">
		<div class="mb-5">
			<div class="text-center">
				<img src="<%=cp %>/images/rabbit2.png" width="70"/>
			</div>
			<div id="Title" class="row justify-content-center">플젝폴짝에 오신것을 환영합니다.</div>
			<div id="subTitle" class="row justify-content-center">플젝폴짝은 개발자를 위한 프로젝트 매칭 플랫폼입니다.</div>
		</div>
	
		<div class="m-0 p-0 mb-3">
			<div id="subTitle">SNS 로그인</div>
			<div class="m-0 p-0 row">
				<button class="col m-1 btn btn-outline-primary">구글</button>
				<button class="col m-1 btn btn-outline-primary">카카오</button>
				<button class="col m-1 btn btn-outline-primary">네이버</button>		
			</div>
		</div>
		
		<div class="mb-3 m-0 p-0 line">
			플젝폴짝 로그인
		</div>
		
		
		<form action="" method="post" class="m-0 p-0">	
			<div class="mb-3">
				<label id="subTitle">아이디</label>
				<input type="text" class="form-control" id="id" name="id">
			</div>
			<div class="mb-3">
				<label id="subTitle">비밀번호</label>
				<input type="text" class="form-control" id="pw" name="pw">
			</div>
			
			<div class="mb-3" id="subTitle">
				<label><input type="checkbox" name="user" value="user">일반회원</check></label>
				<label><input type="checkbox" name="company" value="company">기업회원</check></label>
			</div>
			
			<div class="mb-3" id="subTitle">
				아이디 찾기 / 패스워드 찾기 / 회원가입
			</div>
			<div class="d-grid">
				<button type="submit" class="btn btn-primary">로그인</button>
			</div>
						
			
		</form>
	</div>
</div>



</body>
</html>