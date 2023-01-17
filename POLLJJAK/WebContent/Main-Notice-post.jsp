<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />
<link rel="stylesheet" href="<%=cp %>/resources/css/PostDetail.css"/>

<style>
    .form-control
    {
    	/* align-content: center; */
    }
	.info {
	    padding: 10px;
	    border-bottom: 1px solid #999;
	    font-size: 0;
	}
	
	.info dl {
	    position: relative;
	    display: inline-block;
	    padding: 0 20px;
	}
	
	.info dl:first-child {
	    padding-left: 0;
	}
	
	.info dl::before {
	    content: "";
	    position: absolute;
	    top: 1px;
	    left: 0;
	    display: block;
	    width: 3px;
	    height: 10px;
	    background: #ddd;
	}
	
	.info dl:first-child::before {
	    display: none;
	}
	
	.info dl dt,
	.info dl dd {
	    display: inline-block;
	    font-size: small;
	}
	
	.info dl dt {
	
	}
	
	.info dl dd {
	    margin-left: 10px;
	    color: #777;
	}
	
	.content {padding: 10px; padding-top: 50px; padding-bottom: 50px;}
	
</style>
<body>
	<c:import url="./common/Nav.jsp" />
	<main id="main">

		<!-- 빈칸 여백 -->
		<section class="pb-2"></section>

		<section class="inner-page">
		
			<!-- title -->
			<div class="container" >
				<div class="row">
					<div class="d-flex justify-content-center col" style="width: 50%;">
						<div class="section-title pt-4">
							<h6>라운지</h6>
							<div>Check the notice!</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end title -->
	

			<div class="container">

				<hr>
				<!-- End PageIntro Section -->

				<!-- ====== InnerNav ====== -->
				<nav id="navbar_" class="navbar inner-nav"> 
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto active" href="mainnotice.action" style="margin-right: 100px;">공지사항</a></li>
						<li><a class="nav-link scrollto" href="mainlounge.action" >자유게시판</a></li>
					</ul>
				</nav>
				<hr>
				<!-- End InnerNav -->
			</div>
			
		<section class="pt-5 pb-5" >
		<div class="container" >
			<div class="board_wrap">
				<div class="board-title">
					<button type="button" class="btn-hover color-9" style=" margin: 1%; margin-left:80%; width: 100px;"
					 onclick="location.href='mainnotice.action';"
					 >목록으로</button>
				</div>
			
			<div class="meet_wrap mb-3">
				
				<div class="meet_list mb-3">
					<div class="top">
						<div class="title" style="text-align: left;">${noticedetail.title }</div>
					</div>
					<div class="info">
						<dl>
							<dt>번호</dt>
							<dd>${noticedetail.sid }</dd>
						</dl>
						<dl>
							<dt>작성자</dt>
							<dd>${noticedtail.a_code }관리자</dd>
						</dl>
						<dl>
							<dt>작성일</dt>
							<dd>${noticedetail.noticedate }</dd>
						</dl>
						
					</div>					
					
					
					<!-- 글내용 -->
					<div style="width: 100%;">
						<div id="content" class="content">
						${noticedetail.content }
						</div>
					</div>
					
					<!-- 첨부파일 -->
					
					
					
					
			    </div><!-- end meet_wrap mb-3-->
			    <!-- ===================================관리자 로그인일 경우 버튼 보이게 =========================== -->
			    <div style="text-align: center;">
				    <button type="button" class="btn-hover color-9" style="margin-top: 5%; width: 10%;"
				    onclick="location.href='mainnoticeupdateform.action?notice_code=${noticedetail.notice_code}';"
				    >수정</button>
				    <button type="button" class="btn-hover color-9" style="margin-top: 5%; width: 10%;"
				    onclick="location.href='mainnoticedelete.action?notice_code=${noticedetail.notice_code}';"
				    >삭제</button>
				</div>
				
				
				
				
				
				
				</div>
				
			</div><!-- end board_list_wrap -->
			
			
			
			</div><!-- end board_wrap -->
			
								
				
	</section>
</section>
		
  </main><!-- End #main -->
	
<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>

</html>