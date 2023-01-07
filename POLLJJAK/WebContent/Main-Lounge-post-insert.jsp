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
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
<!DOCTYPE html>
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />
<link rel="stylesheet" href="<%=cp %>/resources/css/projectDetail.css" />


<style>
	title{width: 2000px; text-align: left;}
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
							<div>Let's talk about your project!</div>
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
						<li><a class="nav-link scrollto" href="#" style="margin-right: 100px;">공지사항</a></li>
						<li><a class="nav-link scrollto active" href="<%=cp %>/Main-Lounge.jsp" >자유게시판</a></li>
					</ul>
				</nav>
				<hr>
				<!-- End InnerNav -->
			</div>
			
		<section class="pt-5 pb-5" >
		<div class="container" >
			<div class="board_wrap">
			<!-- 작성폼 -->
			<form method="post" action="mainloungeinsert.action?user_code=U000000003" id="myForm">
			<div class="board_list_wrap">
				<div class="meet_wrap mb-3">
					<table class="table">
						<tr>
							<th colspan="2">
							<p style="font-size: small; text-align: right;"><%= sf.format(nowTime) %><p>
							</th>
						</tr>
						<tr>
							<th style="font-size: x-large; padding-top: 7px; width: 80px;">제목</th>
							<td><input type="text" id="title" name="title" class="form-control" placeholder="제목 입력해주세요." /></td>
						</tr>
					</table>
					
					<!-- 썸머노트 -->
					<div style="width: 100%; align-content: center;">
						<textarea id="summernote" name="summernote"></textarea>
					</div>
			    </div><!-- end meet_wrap mb-3-->
			    <div style="text-align: center;;">
				    <button type="reset" class="btn-hover color-9" style="margin-top: 5%; width: 10%;">취소</button>
				    <button type="submit" class="btn-hover color-9" style="margin-top: 5%; width: 10%;">등록</button>
				</div>
			</div><!-- end board_list_wrap -->
			
			
			
			</form><!-- end form -->
			</div><!-- end board_wrap -->
			
								
				
		</div>
	</section>
</section>
		
  </main><!-- End #main -->
	<!-- 썸머노트 스크립트 -->
	<script type="text/javascript">
	 	$('#summernote').summernote({
	        height: 400,
	 		lang: "ko-KR",
	        placeholder: '내용을 입력해주세요.',
	        tabsize: 2,
	        toolbar: [
	          // 글꼴 설정
	          /* ['fontname', ['fontname']], */
	          // 글자 크기 설정
	          /* ['fontsize', ['fontsize']], */
	          // 굵기, 기울임꼴, 밑줄, 취소 선, 서식지우기 설정 가능
	          ['style', ['style']],
	          ['font', ['bold', 'italic', 'underline','strikethrough']],
	          // 글자색
	          /* ['color', ['color']], */
	          // 글머리 기호, 번호 매기기, 문단 정렬
	          ['para', ['ul', 'ol']],
	          // 표 만들기
	          ['table', ['table']],
	          // 그림첨부, 링크만들기, 동영상 첨부
	          ['insert', ['link', 'picture','video', 'hr']],
	          // 코드보기, 확대해서 보기, 도움말
	          ['view', ['codeview']]
	        ],
	        /* fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'], */
	      });
	
	 	
	 	
	 	//등록버튼 클릭
	 	$(function()
		{
	 		// 유효성 검사
	 		
	 		
	 		$("#submit").click(function()
			{
				
	 			
	 			$("#myForm").submit();
			});
		});
	</script>
	
	
<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>

</html>