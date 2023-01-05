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
						<li><a class="nav-link scrollto" href="#" style="margin-right: 100px;">공지사항</a></li>
						<li><a class="nav-link scrollto active" href="#" >자유게시판</a></li>
					</ul>
				</nav>
				<hr>
				<!-- End InnerNav -->
			</div>
			
		<section class="pt-5 pb-5" data-aos="fade-up">
		<div class="container">
			<div class="board_wrap" >
				<div class="board-title">
					<button type="button" class="btn-hover color-9" style=" margin: 1%; margin-left:80%; width: 100px;"
					 onclick="location.href='<%=cp %>/Main-Lounge-post-insert.jsp';"
					 >작성하기</button>
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
									<div onclick="location.href='<%=cp %>/Main-Lounge-post.jsp';">
										<div class="num">10</div>
										<div class="title">오늘은 1월1일입니다</div>
										<div class="writer">뚬니똠니</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">3</div>
									</div>
									<div>
										<div class="num">9</div>
										<div class="title">시간진짜빠르네요 미친거아녀?</div>
										<div class="writer">김호진</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">13</div>
									</div>
									<div>
										<div class="num">8</div>
										<div class="title">배고픈데 감자빵머글까</div>
										<div class="writer">은영공주</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">14</div>
									</div>
									<div>
										<div class="num">7</div>
										<div class="title">저만 점심생각하고사나요? 머시켜먹징</div>
										<div class="writer">또기공주</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">0</div>
									</div>
									<div>
										<div class="num">6</div>
										<div class="title">날씨가 풀린것같아요 패딩안입어도..</div>
										<div class="writer">텐삼이형</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">1</div>
									</div>
									<div>
										<div class="num">5</div>
										<div class="title">세상에 다적으려니까 귀찮아디졍</div>
										<div class="writer">로카티</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">33</div>
									</div>
									<div>
										<div class="num">4</div>
										<div class="title">만남은 쉽고 이별은어려워~</div>
										<div class="writer">채르르르히</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">78</div>
									</div>
									<div>
										<div class="num">3</div>
										<div class="title">내일이가면 정을주지말자어 내일이오면 아무일없던거처럼</div>
										<div class="writer">방탄노래나와요</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">3</div>
									</div>
									<div>
										<div class="num">2</div>
										<div class="title">여기지하방은 너무어두워~! 쏘에비나잇 살려죠 여기사람사라요</div>
										<div class="writer">하루종일나오네</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">3</div>
									</div>
									<div>
										<div class="num">1</div>
										<div class="title">우리다시만나기를원햇듯이 이또한 지낙</div>
										<div class="writer">개발새발자</div>
										<div class="date">2023.01.01</div>
										<div class="countLike">3</div>
									</div>
								</div>
						<div class="board_page">
							<ul class="pagination justify-content-center">
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    
							    <li class="page-item"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
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