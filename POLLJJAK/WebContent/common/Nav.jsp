<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link href="assets/img/pol-favicon.png" rel="icon">

<!-- ======= Header ======= -->
<header id="header" class="fixed-top d-flex align-items-center">
	<div class="container d-flex align-items-center justify-content-between">
		<div class="logo">
			<h1>
				<a href="main.action">
					<img alt="플젝폴짝로고" src="assets/img/logo.png">
				</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		</div>
		
		<nav id="navbar" class="navbar">
			<!-- a태그를 post방식으로 넘길 때 쓸 input -->
			<!--
			<form name="navForm">
				<input type="hidden" name="user_code"/>
			</form>
			 -->
			<ul>
				<li><a class="nav-link scrollto" href="U-P-Apply-Main.jsp?user_code=${user_code }">프로젝트 조회/지원</a></li>
				<li><a class="nav-link scrollto" href="projectopenmain.action?user_code=${user_code }">프로젝트 개설</a></li>
													<!-- ┏ a태그의 post 방식 -->
				<%-- <li><a class="nav-link scrollto" onclick="javascript:pageMove('projectopenmain.action', '${user_code }');">프로젝트 개설</a></li> --%>
				
				<li><a class="nav-link scrollto" href="projecthomelist.action?user_code=${user_code }">내 프로젝트 홈</a></li>
													<!-- ┏ a태그의 post 방식 -->
				<%-- <li><a class="nav-link scrollto" onclick="javascript:pageMove('projecthomelist.action', '${user_code }');">내 프로젝트 홈</a></li> --%>
				
				<li><a class="nav-link scrollto " href="mainlounge.action">라운지</a></li>
				
				<!-- 기업 구현하면 쓰기 -->
				<li><a class="nav-link scrollto" href="Inner-page.jsp">기업둘러보기</a></li>
				
				
				<!-- ========= Searching Section ============ -->
				<li>
					<div class="serach" style="margin-right: 30px;">
						<div class="col-lg-12">
							<div class="input-group" style="margin-left: 30px;">
								<span class="fa fa-search form-control-feedback" style="color: #3498db; line-height: 2; z-index: 1;"></span>
								<input type="text" class="form-control nav-search" placeholder="Search" style="padding-left:30px; margin: -1px 0px 0px -25px; border-radius: 20px;">
							</div>
						</div>
					</div>
				</li>
				<!-- End Searching Section -->
				
				<!-- 
				<li><a class="nav-link scrollto" href="#pricing">Pricing</a></li>
				<li class="dropdown">
					<a href="#">
						<span>Drop Down</span>
						<i class="bi bi-chevron-down"></i>
					</a>
					<ul>
						<li><a href="#">Drop Down 1</a></li>
						<li class="dropdown">
							<a href="#">
								<span>Deep Drop Down</span> 
								<i class="bi bi-chevron-right"></i>
							</a>
							<ul>
								<li><a href="#">Deep Drop Down 1</a></li>
								<li><a href="#">Deep Drop Down 2</a></li>
								<li><a href="#">Deep Drop Down 3</a></li>
								<li><a href="#">Deep Drop Down 4</a></li>
								<li><a href="#">Deep Drop Down 5</a></li>
							</ul>
						</li>
						<li><a href="#">Drop Down 2</a></li>
						<li><a href="#">Drop Down 3</a></li>
						<li><a href="#">Drop Down 4</a></li>
					</ul>
				</li>
				-->
				<c:choose>
				<c:when test="${sessionScope.loginCheck == null }">
				<li><a class="getstarted scrollto" href="loginform.action">로그인</a></li>
				</c:when>
					<c:otherwise>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link d-flex lh-1 text-reset p-0 show" data-bs-toggle="dropdown" aria-label="Open user menu" aria-expanded="true"> 
								<!-- 권한별 아이콘 및 이름 -->
								<c:if test="${userType.equals(\"user\") }">
								<img src="assets/img/UserIcon/User-Icon.png" alt="" style="width: 60px; height: 60px; padding: 10px 0 10px 20px;">  
									<div class="d-none d-xl-block ps-2">
										<div>${loginCheck.name }</div>
										<div class="mt-1 small text-muted">일반</div>
									</div>
								</c:if>
								<c:if test="${userType.equals(\"company\") }">
									<img src="assets/img/UserIcon/Company-Icon.png" alt="" style="width: 60px; height: 60px; padding: 10px 0 10px 10px;">  
									<div class="d-none d-xl-block">
										<div>${loginCheck.name }</div>
										<div class="mt-1 small text-muted">기업</div>
									</div>
								</c:if>
								<%-- 
								<c:if test="">
									<img src="assets/img/UserIcon/Admin-Icon.png" alt="" style="width: 60px; height: 60px; padding: 10px 0 10px 10px;">  
									<div class="d-none d-xl-block">
										<div class="mt-1 small text-muted">관리자</div>
									</div>
								</c:if>
								 --%>
							</a>
							
							<!-- 프로필 사진 누르면 나오는 드롭다운 -->
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
							<c:choose>
								<c:when test="${userType.equals(\"user\") }">
									<%-- <button type="button" class="btn-uModify dropdown-item" value="${loginCheck.user_code }">마이페이지</button> --%> 
									<a href="umypagewarningform.action?user_code=${user_code }" class="dropdown-item">마이페이지</a>
									<%-- <a onclick="javascript:pageMove('umypagewarningform.action', '${loginCheck.user_code }');" class="dropdown-item">일반 마이페이지</a> --%>
								</c:when>
									<c:when test="${userType.equals(\"company\") }">
									<%-- <button type="button" class="btn-cModify dropdown-item" value="${loginCheck.user_code }">마이페이지</button> --%> 
									<a href="cmypagewarningform.action?user_code=${user_code }" class="dropdown-item">마이페이지</a>
								</c:when>
								<%-- 
								<c:otherwise>
									<a href="#" class="dropdown-item">관리자 페이지</a> 
								</c:otherwise>
								 --%>
							</c:choose>
							<div class="dropdown-divider"></div>
							<!-- ┏비동기 로그아웃 -->
							<a href="logout.action" id="logout_btn" class="dropdown-item" style="cursor: pointer;">로그아웃</a>
							<!-- ┏일반 로그아웃 -->
							<!-- <a href="logout.action" class="dropdown-item">Logout</a> -->
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav> <!-- .navbar -->
	</div>
   
<script type="text/javascript">
	/* 로그아웃 비동기 방식 */
	/* 
	$("#logout_btn").click(function()
	{
		$.ajax({
				type:"GET"
				, url:"logout.action"
				, success:function(data)
				{
					document.location.reload();
				}
		});
	});
	*/
 	/* 	 
	$(function()
	{
		$(".btn-uModify").click(function()
		{
			$(location).attr("href", "umypagewarningform.action?user_code=" + $(this).val());
		});
		
		$(".btn-cModify").click(function()
		{
			$(location).attr("href", "cmypagewarningform.action?user_code=" + $(this).val());
		});
	});
	 */
	/* 
	// a태그 post 방식으로 넘기기
	function pageMove(url, user_code)
	{
		var f = document.navForm;	// 폼 name
		
		f.user_code = user_code;	// post 방식으로 넘기고 싶은 값
		f.action = url;				// post 방식으로 넘기고 싶은 값
		f.method = "post";
		
		f.submit();
		
	}
	 */ 
</script>
</header>

<!-- End Header -->