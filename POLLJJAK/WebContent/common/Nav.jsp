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
         <ul>
            <!--<li><a class="nav-link scrollto active" href="Inner-page.jsp">프로젝트
                  조회/지원</a></li> -->
            <li><a class="nav-link scrollto" href="U-P-Apply-Main.jsp">프로젝트 조회/지원</a></li>
            <li><a class="nav-link scrollto" href="ProjectOpenMain.jsp">프로젝트 개설</a></li>
            
            <!-- 테스트로 지금 김태민 유저코드를 넣고 진입 가능하게 만들어둔 상태이다. -->
            <li><a class="nav-link scrollto" href="projecthomelist.action?u_code=U000000001">내 프로젝트 홈</a></li>
            
            <li><a class="nav-link scrollto " href="mainlounge.action">라운지</a></li>
            <li><a class="nav-link scrollto" href="Inner-page.jsp">기업
                  둘러보기</a></li>
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
			<li><a class="nav-link scrollto" href="#contact">Contact</a></li>
			<%-- <c:choose> --%>
				<%-- <c:when test="${loginCheck.u_id == null }"> --%>
		            <li><a class="getstarted scrollto" href="loginform.action">로그인</a></li>
				<%-- </c:when> --%>
				<%-- <c:otherwise> --%>
					<!-- 										┏비동기 로그아웃 -->
		            <li><a class="getstarted scrollto" id="logout_btn">로그아웃</a></li>
					<!-- 										┏일반 로그아웃 -->
 		        <!-- <li><a class="getstarted scrollto" href="logout.action">로그아웃</a></li> -->
					<%-- <li>${loginCheck.name }</li> --%>
				<%-- </c:otherwise> --%>
			<%-- </c:choose> --%>
			
         </ul>
         <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      <!-- .navbar -->

   </div>
   <script type="text/javascript">
   		/* 로그아웃 비동기 방식 */
   		$("#logout_btn").click(function()
		{
			$.ajax({
				type:"GET"
				, url:"logout.action"
				, success:function(data){
					document.location.reload();
				}
			});
		});
   </script>
</header>

<!-- End Header -->