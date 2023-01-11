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

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />
<%-- <link rel="stylesheet" href="<%=cp %>/resources/css/Main-Lounge.css" /> --%>
<link rel="stylesheet" href="<%=cp %>/resources/css/Inner-Project-home.css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/PostList.css"/>

<style type="text/css">
    .form-control
    {
    	align-content: center;
    }
</style>
<script type="text/javascript">
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="mainlounge.action?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}

</script>    
<body>
	
	<c:import url="./common/Nav.jsp" />
	<main id="main">
	
		<!-- 빈칸 여백 -->
		<section class="pb-2"></section>

		<section class="inner-page">
		
			<!-- title -->
			<div class="container"  data-aos="fade-up">
				<div class="row">
					<div class="d-flex justify-content-center col" style="width: 50%;"  data-aos="fade-up">
						<div class="section-title pt-4">
							<h6>라운지</h6>
							<div>Let's talk about your project!</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end title -->
	

			<div class="container" data-aos="fade-up">

				<hr>
				<!-- End PageIntro Section -->

				<!-- ====== InnerNav ====== -->
				<nav id="navbar_" class="navbar inner-nav" data-aos="fade-up"> 
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto" href="mainnotice.action" style="margin-right: 100px;">공지사항</a></li>
						<li><a class="nav-link scrollto active" href="<%=cp %>/mainlounge.action" >자유게시판</a></li>
					</ul>
				</nav>
				<hr>
				<!-- End InnerNav -->
			</div>
			
		<section class="pt-5 pb-5" data-aos="fade-up">
		<div class="container">
			<div class="board_wrap" >
				<div class="board-title">
				<table style="margin-left: 13%; width: 75%;">
						<tr>
							<th>
							<select id="cntPerPage" name="sel" onchange="selChange()">
								<option value="5"
									<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
								<option value="10"
									<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
								<option value="15"
									<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
								<option value="20"
									<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
							</select>
							</th>
							<th align="right">
							<!-- ========================로그인했을시 보이게=========================== -->
							<button type="button" class="btn-hover color-9" style=" margin: 1%; margin-left:80%; width: 100px;"
							<%--  onclick="location.href='<%=cp %>/Main-Lounge-post-insert.jsp';" --%>
							 onclick="location.href='mainloungeinsertform.action?user_code=\'U000000003\'';"
							 >작성하기</button>
							 </th>
						</tr>
				</table>
				</div>
				
				
				
				<!-- 게시판 글 목록 -->
				<div class="board_list_wrap">
						<div class="meet_wrap mb-3">
								<div class="meet_list mb-3">
									<div class="top">
										<div class="num">번호</div>
										<div class="title">제목</div>
										<div class="writer">작성자</div>
										<div class="date">작성일</div>
										<div class="countLike">좋아요</div>
									</div>
									
									<c:forEach var="list" items="${list}">
									<div onclick="location.href='postdetail.action?post_code=${list.post_code}';" id="${list.post_code} }">
										<div class="num">${list.sid }</div>
										<div class="title">${list.title }</div>
										<div class="writer">${list.nickname}</div>
										<div class="date">${list.postDate }</div>
										<div class="countLike">${list.postLike }</div>
									</div>
									</c:forEach>
									
								</div>
								
						<!-- 페이징처리 -->
						<div class="board_page">
							<ul class="pagination justify-content-center">
							    <c:if test="${paging.nowPage != 1 }">
							    <li class="page-item">
							      <a class="page-link" href="mainlounge.action?nowPage=${paging.nowPage-1 }&cntPerPage=${paging.cntPerPage}" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    </c:if>
							    
							    <c:forEach begin="${paging.startPage }" end="${paging.endPage-1 }" var="p">
							    	<c:choose>
							    		<c:when test="${p == paging.nowPage }">
							    			<li class="page-item"><a class="page-link" href="#">${p }</a></li>
							    		</c:when>
							    		<c:when test="${p != paging.nowPage }">
							    			<li class="page-item"><a class="page-link" 
							    			href="mainlounge.action?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
							    		</c:when>
							    	</c:choose>
							    </c:forEach>
							    
							    <c:if test="${paging.nowPage != paging.endPage}">
							    <li class="page-item">
							      <a class="page-link" href="mainlounge.action?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							    </c:if>
					  		</ul>
						</div><!-- end board_page-->
					</div>
				</div>
			</div><!-- end board_wrap -->
		</div>
	</section>
	</section>
		
</main><!-- End #main -->

<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
	
</body>

</html>