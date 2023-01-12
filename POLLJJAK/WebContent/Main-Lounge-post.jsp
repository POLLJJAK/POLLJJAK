<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

	String post_code = request.getParameter("post_code");
%>
<!DOCTYPE html>
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />
<link rel="stylesheet" href="<%=cp%>/resources/css/PostDetail.css" />

<style>
.form-control {
	align-content: center;
}

.info {
	padding: 1px;
	border-bottom: 1px solid #999;
	font-size: 0;
}

.info dl {
	position: relative;
	display: inline-block;
	padding: 0 10px;
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

.info dl dt, .info dl dd {
	display: inline-block;
	font-size: small;
}

.info dl dt {
	padding-left: 9px;
}

.info dl dd {
	margin-left: 10px;
	color: #777;
}

.board_cmt {
	width: 100%;
	margin: auto;
}

.board_cmt_write {
	width: 90%;
	font-size: small;;
}

.content {
	padding: 10px;
	padding-top: 50px;
	padding-bottom: 50px;
}

.cmt-content {
	float: left;
	width: 90%;
}

.cmt-btn {
	float: right;
	width: 10%;
	padding-left: 3%;
}

.cmt-contentlist {
	border: 1px solid black;
}

.siren {
	margin-left: 52%;
	border-bottom: none;
	float: right;
	float: inherit;
}
</style>
<body>
	<c:import url="./common/Nav.jsp" />
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
									<div class="info siren">
										<a
											href="reportpost.action?post_code='${postdetail.post_code }'">
											<img src="assets/img/siren-icon.png" alt=""
											style="width: 30px; height: 30px;">
										</a>
									</div>
								</div>


								<!-- 글내용 -->
								<div style="width: 100%; align-content: center;">
									<div id="content" class="content">${postdetail.content }
									</div>
								</div>

								<!-- =======================================작성자만 보이게=========================================== -->
								<div>
									<div>
										<img id="img" src="assets/img/comment-icon.png" alt=""
											style="width: 40px; height: 40px; padding: 10px; float: left; margin-bottom: 10%;">6
									</div>
									<div>



										<!-- 좋아요처리 테스트 -->
										<%-- <c:choose>
				    로그인 상태일때 - 하트 클릭 되게
				    <c:when test="${not empty sessionScope.nick}"> --%>

										<c:choose>
											<c:when test="${likecheck == '0'}">
												<%-- 빈 하트일때 --%>
												<span> <a href="javascript:" class="heart-click">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
				                                <path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
				                                </svg></a>
												</span>
											</c:when>
											<c:otherwise>
												<%-- 꽉찬 하트일때 --%>
												<span> <a href="javascript:"
												 class="heart-click"><svg
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															fill="currentColor" class="bi bi-suit-heart-fill"
															viewBox="0 0 16 16">
				                                  <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z" />
				                                </svg></a>
												</span>
											</c:otherwise>
										</c:choose>

										<%--  </c:when>
				    로그인 상태가 아닐때  - 하트클릭 안되게
				    <c:otherwise>
				        <span> <a href="javascript:" class="heart-notlogin">
				                <svg class="heart3" xmlns="http://www.w3.org/2000/svg"
				                    width="16" height="16" fill="currentColor"
				                    class="bi bi-suit-heart" viewBox="0 0 16 16">
				                          <path
				                        d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
				                        </svg>
				        </a>
				        </span>
				    </c:otherwise>
				</c:choose> --%>




									</div>
									<button type="button" class="btn-hover color-9"
										style="margin: 1%; width: 10%; float: right;"
										onclick="location.href='mainloungeupdateform.action?post_code=${postdetail.post_code}';">수정</button>
									<button type="button" class="btn-hover color-9"
										style="margin: 1%; width: 10%; float: right;"
										onclick="location.href='mainloungedelete.action?post_code=${postdetail.post_code}';">삭제</button>
								</div>
							</div>
							<!-- end meet_wrap mb-3-->



							<!-- 댓글============================================================================================ -->
							<!-- ===================================== 로그인시 보이게 ========================================== -->
							<!-- 댓글 목록 -->

							<div class="board_cmt">
								<div class="cmt-list">
									<div>
										<img src="assets/img/UserIcon/User-Icon.png" alt=""
											style="width: 60px; height: 60px; padding: 10px;">
									</div>
									<div class="cmt-contentlist">
										어찌구 저찌구 / 날짜 / 작성자 <span id="commentlist-content"></span>
									</div>

								</div>




								<!-- 댓글 작성 영역 -->
								<div class="board_cmt_write">
									<div class="cmt-content">
										<input type="text" class="form-control" maxlength="150"
											placeholder="소중한 댓글을 작성해주세요^^" id="cmt-content">
									</div>
									<div class="cmt-btn">
										<button type="button" id="cmtSubmit" class="btn-hover color-9"
											style="width: 100%;" onclick="fn_comment()">등록</button>
									</div>
								</div>
							</div>



							<!-- 
				댓글 목록 영역
				<div class="board_cmt_list" id="board_cmt_list" style="margin-left:6px;"></div>
				<div style="text-align: center; margin: 20px 0px;" id="div_cmt_more">
				 더보기 글자 hover 띄우기
				    <span class="cmt_more_guide" id="cmt_more_guide" style="display: none; position: absolute;"></span>
				    <div class="tit" style="margin-left: 6px;"><em id="nickname" class="bico_comment"></em>유림이</div>
				    <a href='javascript:void(0);' id='btn_cmt_more' style='position: relative;'>
				        <img src="/home/img/ico_cmt_more_before.png" id="imgMore" style="cursor:pointer; width: 20px;">
				    </a>
				</div>
				더보기 눌렀을때 추가 되는 댓글 영역
				<div class="board_cmt_list" id="cmtMore" style="display:none;"></div>
				<div style="text-align: center; display:none; margin: 20px 0px;" id="div_cmt_back">
				    <span class="cmt_back_guide" id="cmt_back_guide" style="display: none; position: absolute;"></span>
				    <a href='javascript:void(0);' id='btn_cmt_back' style='position: relative;'>
				        <img src="/home/img/ico_cmt_back_before.png" id="imgBack" style="cursor:pointer; width: 20px;">
				    </a>
				</div>
				
				 -->








						</div>

					</div>
					<!-- end board_list_wrap -->



				</div>
				<!-- end board_wrap -->



			</section>
		</section>

	</main>
	<!-- End #main -->
	<!-- 스크립트 -->
	<script type="text/javascript">
	
	
	<%-- var post_code = "<%=post_code%>"; --%>
	//alert(post_code);
	var commentHtml = "김";
	//var values=[];		
	var post_code = "<%=post_code%>";
	var user_code = "U000000004";
	
	$("#img").click(function()
	{
		//alert("호출");
		
	
		alert(post_code);
		//댓글 리스트 
		$.ajax({
			url:"commentlist.action",
			type:"post",
			data: {
				post_code : post_code
			},
			async : false,
			//dataType : "json",
			//contentType : "application/json; charset=UTF-8",
			//contentType: "text/html; charset=UTF-8",
			success : function (data)
			{
				if (data) 
				{
		              alert("완료");
		        } else {
		              alert("전송된 값 없음");
		        }
				/* 
				let listHtml = "";
				for (const i in data)
				{
					let no = data[i].comment_code;
	                let bno = data[i].post_code;
	                let grp = data[i].user_code;
	                let grps = data[i].nickname;
	                let grpl = data[i].content;
	                let writer = data[i].commentdate;
	                let content = data[i].commentupdate;
	                let wdate = data[i].cgroup;
	                let wgap = data[i].cdepth;
	                
	                alert(grpl);
					
				} */
				//var list = data.list;
				//var temp = "";
				/* 
				for (var i = 0; i < list.length; i++)
				{
					temp += list[i].comment_code;
				} */
				//$("#commentlist-crontent").html(temp);
	                
			},
			error : function ()
			{	console.log(data);
				alert("ERR");
			}
			
		}); 
	});
	
	
	// 댓글 등록
	/* function fn_comment(post_code)
	{
		
	} */
	
	
	$(".heart-click").click(function() {
		
		polljjakGetAjax("likeinsert.action", {post_code:"post_code", user_code:"user_code"},function(result){
			
			if(result == "success"){
				alert("성공");
			}
			if(result == "fail"){
				alert("실패");
			}
			
		});
		
	});
	
	function polljjakGetAjax(url, param, callback)
	{
		$.ajax({
			type:"GET"
			, url:url
			, data:param
			,success:callback
			,error:function(res){
				alert("에러");
			},
			dataType: "test"
		})
	}
	
	
	
	/*
	
	// 로그인 한 상태에서 하트를 클릭했을 때 (로그인한 상태인 하트의 <a></a> class명: heart-click)
	$(".heart-click").click(function() {

	    // 현재 좋아요 수
	    //let no = $(this).attr('postLike');
	    //console.log("heart-click");
		//let user_code="";
		//let post_code="";
	    // 빈하트를 눌렀을때
	    if($(this).children("svg").attr("class") == "bi bi-suit-heart"){
	        //console.log("빈하트 클릭" + no);
			alert(post_code);
			alert(user_code);
	        $.ajax({
	            type : "get",
	            url : "likeinsert.action",
	            data : {
	            	post_code : post_code,
	            	user_code : user_code
	            },
	            dataType : "text",
	            success : function(data) {
	                //페이지 새로고침
	                //document.location.reload(true);

					// data=data+1;
	                // 하트수 갱신
	                //$('#postLike').text(data);
	                let likecount = $("#postLike").val();
	                likecount +=1;
	                
	                $("#postLike").attr(data);
	                console.log("하트추가 성공");
	                
	            },
	            error : function() {
	                alert("서버 에러");
	            }
	        });
	        console.log("꽉찬하트로 바껴라!");

	    // 꽉찬하트로 바꾸기
	    
	    $(this).html("<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-suit-heart-fill' viewBox='0 0 16 16'><path d='M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z'/></svg>");
/* 
	    // 꽉찬 하트를 눌렀을 때
	    }else if($(this).children("svg").attr("class") == "bi bi-suit-heart-fill"){
	        //console.log("꽉찬하트 클릭" + no);

	        $.ajax({
	            url : 'likeremove.action',
	            type : 'post',
	            data : {
	                no : no,
	            },
	            success : function(pto) {
	                //페이지 새로고침
	                //document.location.reload(true);

	                let heart = pto.heart;
	                // 페이지, 모달창에 하트수 갱신
	                $('#postLike'+no).text(heart);

	                console.log("하트삭제 성공");
	            },
	            error : function() {
	                alert('서버 에러');
	            }
	        });
	        console.log("빈하트로 바껴라!");

	        // 빈하트로 바꾸기
	        $(this).html('<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16"><path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" /></svg>');

	    }


	});
 */

	// 로그인 안한 상태에서 하트를 클릭하면 로그인해야한다는 alter
	// (로그인한 상태인 하트의 <a></a> class명: heart-notlogin)
	//$(".heart-notlogin").unbind('click');
	//$(".heart-notlogin ").click(function() {
	//    alert('로그인 하셔야 하트를 누를수 있습니다!');
	//});

	</script>


	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />


	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

</body>

</html>