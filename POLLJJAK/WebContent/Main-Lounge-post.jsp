<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />
<link rel="stylesheet" href="<%=cp%>/resources/css/PostDetail.css" />
<link rel="stylesheet" href="<%=cp%>/resources/css/MainLoungePost.css" />


<body>
	<c:import url="./common/Nav.jsp" />
	<input type="hidden" id="post_code" value="${postdetail.post_code}" />
	<main id="main">
		<!-- 빈칸 여백 -->
		<section class="pb-2"></section>

		<section class="inner-page">

			<!-- title -->
			<div class="container">
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
						<li><a class="nav-link scrollto" href="mainnotice.action"
							style="margin-right: 100px;">공지사항</a></li>
						<li><a class="nav-link scrollto active"
							href="mainlounge.action">자유게시판</a></li>
					</ul>
				</nav>
				<hr>
				<!-- End InnerNav -->
			</div>

			<section class="pt-5 pb-5">
				<div class="container">
					<div class="board_wrap">
						<div class="board-title">
							<button type="button" class="btn-hover color-9"
								style="margin: 1%; margin-left: 80%; width: 100px;"
								<%-- onclick="location.href='<%=cp %>/Main-Lounge-post.jsp';" --%>
                onclick="location.href='mainlounge.action';">목록으로</button>
						</div>

						<div class="meet_wrap mb-3">

							<div class="meet_list mb-3">
								<div class="top">
									<div class="title" style="text-align: left;">${postdetail.title }</div>
								</div>
								<div class="info">
									<dl>
										<dt>번호</dt>
										<dd>${postdetail.sid }</dd>
									</dl>
									<dl>
										<dt>작성자</dt>
										<dd>${postdetail.nickname }</dd>
									</dl>
									<dl>
										<dt>작성일</dt>
										<dd>${postdetail.postDate }</dd>
									</dl>
									<dl>
										<dt>좋아요</dt>
										<dd id="postLike">${postdetail.postLike }</dd>
									</dl>
									<div class="info siren" data-bs-toggle="modal"
										data-bs-target="#report" data-id="${postdetail.post_code }">
										<img src="assets/img/siren-icon.png" alt=""
											style="width: 30px; height: 30px;">
									</div>
								</div>


								<!--==== 글내용 ====-->
								<div style="width: 100%;">
									<div id="content" class="content">${postdetail.content }
									</div>
								</div>

								<!-- =======================================댓글 수 카운트=========================================== -->
								<div>
									<div>
										<img id="img" src="assets/img/comment-icon.png" alt=""style="width: 40px; height: 40px; padding: 10px; float: left; margin-bottom: 10%;">
										<span id="cmtcount">${commentcount }</span>
									</div>
									<div>



								<!--==============================================좋아요============================================ -->
								<c:choose>
				                <c:when test="${not empty user_code}">

									<c:choose>
										<c:when test="${likecheck == '0'}">
											<span> <a href="javascript:" class="heart-click">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
	                                         <path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
	                                        </svg></a></span>
										</c:when>
										<c:otherwise>
											<span> <a href="javascript:" class="heart-click">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                                             <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z" />
                                            </svg></a></span>
										</c:otherwise>
									</c:choose>

								</c:when>
				                	<c:otherwise>
										<span> <a href="javascript:" class="heart-notlogin" data-bs-toggle="modal"data-bs-target="#loginplz">
											<svg class="heart3" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
	                                      	<path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
	                                    </svg></a> </span>
									</c:otherwise>
								</c:choose>




									</div>
									<c:set var="post_writer" value="${postdetail.user_code}"></c:set>
										<c:if test="${user_code eq post_writer}">
										
											<button type="button" class="btn-hover color-9"
												style="margin: 1%; width: 10%; float: right;"
												onclick="location.href='mainloungeupdateform.action?post_code=${postdetail.post_code}';">수정</button>
											<button type="button" class="btn-hover color-9"
												style="margin: 1%; width: 10%; float: right;"
												onclick="location.href='mainloungedelete.action?post_code=${postdetail.post_code}';">삭제</button>
										
										</c:if>
									
								 </div>
							</div>
							<!-- end meet_wrap mb-3-->

						<!--=============================================신고 모달 ======================================= -->
						<div class="modal fade" id="report" data-bs-backdrop="static"
							data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<form action="reportpost.action" method="GET" id="reportform">
										<div class="modal-header">
											<h5 class="modal-title">신고하기</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body row mb-3 justify-content-center"
											style="font-weight: bold; font-size: large; text-align: center;">
											<div style="margin-bottom: 20px;">
												신고 사유를 선택해 주세요!
												<p style="font-size: xx-small; color: red;">※허위신고는
													경고대상입니다. 신중하게 신고해주세요!</p>
											</div>
											<div class="form-group">
												<p class="report_title">신고 글 : ${postdetail.title}</p>


												<select class="form-select form-select-m w-70 mt-2" id="report_reason_code" name="report_reason_code">
													<option value="">신고 사유 선택</option>
													<c:forEach var="report" items="${reportList}">
														<option value=${report.report_reason_code }>${report.report_reason }</option>

													</c:forEach>
												</select>


											</div>
											<p id="reason"
												style="font-size: small; text-align: center; color: red; padding: 5%;"></p>
										</div>
										<div class="modal-footer justify-content-center">
											<button type="reset" class="fullbtn" data-bs-dismiss="modal"
												aria-label="Close">취소</button>
											<button id="reportSubmitBtn" type="submit"
												class="btn-hover color-9">신고</button>
										</div>
										<input type="hidden" id="post_code" name="post_code" value="${postdetail.post_code}">
									</form>
								</div>
							</div>
						</div>
						
						<!--==========================================로그인 모달 ====================================== -->
						<div class="modal fade" id="loginplz" data-bs-backdrop="static"
							data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<form action="loginform.action" method="get" >
										<div class="modal-header">
											<h5 class="modal-title">로그인</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body row mb-3 justify-content-center"
											style="font-weight: bold; font-size: large; text-align: center;">
											<div style="margin-bottom: 20px;">
												로그인을 하셔야 합니다.
											</div>
										</div>
										<div class="modal-footer justify-content-center">
											<button type="reset" class="fullbtn" data-bs-dismiss="modal"
												aria-label="Close">취소</button>
											<button id="reportSubmitBtn" type="submit"
												class="btn-hover color-9">로그인하러 가기 </button>
										</div>
										
									</form>
								</div>
							</div>
						</div>

						<!-- ============================================ 댓글== ====================================== -->
						<!-- 댓글 목록 -->
						<div class="board_cmt">
							<div class="cmt-list">
								<div class="cmt-contentlist">
									<span id="commentlist-content"></span>
								</div>

							</div>

						<!-- 댓글 작성 영역 -->
							<div class="board_cmt_write">
					
			                
								<form action="addcomment.action" method="post" id="commentadd">
									<div class="cmt-content">
										<input type="text" class="form-control" maxlength="150" placeholder="소중한 댓글을 작성해주세요^^" id="content" name="content">
										<input type="hidden" id="post_code" name="post_code" value="${postdetail.post_code}">
									</div>
									<div class="cmt-btn">
										<button type="submit" id="cmtSubmit" class="btn-hover color-9" style="width: 100%;">등록</button>
									</div>
								</form>
							
					
							</div>
						</div>

					</div>

				</div>
				<!-- end board_list_wrap -->



				</div>
				<!-- end board_wrap -->



			</section>
		</section>

	</main>
	<!-- End #main -->
<!-- js 연결 -->
<script src="<%=cp %>/resources/js/MainLoungePost.js"></script>
	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />


	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

</body>

</html>