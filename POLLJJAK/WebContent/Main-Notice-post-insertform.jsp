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

<!-- 게시판 썸머노트 lite 버전(cdn아님)  -->
	<script src="resources/js/summernote-lite.js"></script>
  	<script src="resources/js/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="<%=cp %>/resources/css/summernote-lite.css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/Inner-Project-home.css" />
<link rel="stylesheet" href="<%=cp %>/resources/css/PostDetail.css"/>


<style>
	.form-control
    {
    	align-content: center;
    }
    
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
				
				
			<!-- 작성폼 -->
			<form method="post" action="mainnoticeinsert.action?a_code=${a_code }" id="myForm">
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
							<td><input type="text" id="title" name="title" class="form-control" placeholder="제목 입력해주세요." maxlength='33'/></td>
						</tr>
					</table>
					
					<!-- 썸머노트 -->
					<div style="width: 100%; align-content: center;">
						<textarea id="summernote" name="summernote"></textarea>
					</div>
					<div class="col-xs-12 text-right" style="text-align: right; font-size: small; font-weight: bold;">
				      <span id="maxContentPost"></span>
				    </div>
					<span style="font-size: small; color:red; display: none; "id="err" ></span>
			    </div><!-- end meet_wrap mb-3-->
			    
			    
			    <div style="text-align: center;">
				    <button type="reset" class="btn-hover color-9" style="margin-top: 5%; width: 10%;" id="reset">취소</button>
				    <button type="submit" class="btn-hover color-9" style="margin-top: 5%; width: 10%;" id="submit">등록</button>
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
		
	
	
		  function registerSummernote(element, placeholder, max, callbackMax) {
			    $('#summernote').summernote({
			    	height: 400,
					lang: "ko-KR",
				    tabsize: 2,
			        toolbar: [
			         ['style', ['style']],
			         ['font', ['bold', 'italic', 'underline','strikethrough']],
			     	 // 글자색
			         ['color', ['forecolor','color']],
			         // 글머리 기호, 번호 매기기, 문단 정렬
			         ['para', ['ul', 'ol', 'paragraph']],
			         // 표 만들기
			         ['table', ['table']],
			         // 그림첨부, 링크만들기, 동영상 첨부
			         ['insert', ['link', 'picture','video', 'hr']],
			         // 코드보기, 확대해서 보기, 도움말
			         ['view', ['codeview']]
			     	 ],
			      placeholder,
			      callbacks: {
			        onKeydown: function(e) {
			          var t = e.currentTarget.innerText;
			          if (t.length >= max) {
			        	  e.preventDefault();
			            if (e.keyCode != 8)
			              e.preventDefault();
			            // add other keys ...
			          }
			        },
			        onKeyup: function(e) {
			          var t = e.currentTarget.innerText;
			          if (typeof callbackMax == 'function') {
			            callbackMax(max - t.length);
			          }
			        },
			        onPaste: function(e) {
			          var t = e.currentTarget.innerText;
			          var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
			          e.preventDefault();
			          var all = t + bufferText;
			          document.execCommand('insertText', false, all.trim().substring(0, 1000));
			          if (typeof callbackMax == 'function') {
			            callbackMax(max - t.length);
			          }
			        }
			      }
			    });
			  }
	 	$(function()
	 	{
	 		registerSummernote('.summernote', '내용을 입력해주세요.', 1000, function(max) 
	 		{
	 		    $('#maxContentPost').text(max+"자/ 최대1000자");
	 		    $("#err").css("display","none");
	 		});
	 	});
	 	
	 	
	 	
 		$(function()
		{
 			
 			$("#err").css("display","none");
 			
	 		// 유효성 검사
	 		
	 		// 제목 글자수 제한
	 		$("#title").keyup(function(e) {
		 		
		 		var content = $(this).val();
				if (content.length == 33 ) 
				{
					$("#err").css("display","inline").html("제목 최대 글자수를 초과했습니다.");
					$(this).val(content.substring(0, 33));
					//return false;
				}
				else if (content.length <= 32 ) {
					$("#err").css("display","none");
				} 
	 		});
	 		
	 		
	 		
 			//리셋버튼클릭
	 		$("#reset").click(function()
			{
	 			$("#summernote").summernote("reset");
			});
	 		
	 		
	 		//서브밋버튼클릭
	 		$("#submit").click(function()
			{
	 			if ($("#title").val()=="")
				{
					$("#title").focus();
					$("#err").css("display","inline").html("제목을 입력해주세요.");
	 				return false;
				}
	 			
	 			if ($("#summernote").summernote('isEmpty'))
				{
	 				$("#summernote").summernote({ focus: true });
					$("#err").css("display","inline").html("내용을 입력해주세요.");
	 				return false;
				}
				
	 			
	 			//$("#myForm").submit();
	 			
	 			
	 			
			});
	 		
	 		
		});
	</script>
	
	
<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>

</html>