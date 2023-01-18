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
<html lang="en">

<!-- head import (css imported)-->
<c:import url="./common/Head.jsp" />
<body>

	<c:import url="./common/Nav.jsp" />

	<main id="main">
		<!-- ======= Breadcrumbs Section ======= -->
		 <section class="inner-page">
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container" data-aos="fade-up">
				<!-- ====== PageIntro Section ====== -->
				<div class="pageintro">
					<div class="section-title">
						<h2>마이 페이지</h2>
					</div>
				</div>
				<!-- End PageIntro Section -->

				<div class="User MyPage-Info"
					style="text-align: center; font-size: small;">
					<img src="assets/img/UserIcon/User-Icon.png" alt=""
						style="width: 60px; height: 60px; padding: 10px;"> <br>
					<button
						style="color: white; background-color: #3498db; width: 20px; height: 20px; border: none; border-radius: 5px;">1</button>
					<span>${user.u_nickname }</span>
					<p style="margin-bottom: 0px; margin-top: 5px;">4.0/5.0</p>

					<!-- ====== Star ====== 추후 스크립트 처리예정 -->
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;"> 
					<img src="assets/img/UserIcon/star.png" alt="" style="width: 10px; height: 10px;">
					<!-- End Star -->
					<p>최근 로그인 날짜 : 2023-01-18</p>
				</div>
				<hr>
				<!-- ====== InnerNav ====== -->
				<nav id="navbar" class="navbar">
					<form name="navForm">
						<input type="hidden" name="user_code" id="user_code" value="${user_code }"/>
					</form>
					<ul style="margin-left: auto; margin-right: auto;">
						<li><a class="nav-link scrollto active updateform" onclick="javascript:pageMove('userupdateform.action', '${user_code }');">정보</a></li>
						<li><a class="nav-link scrollto" href="umypageproject.action?user_code=${user_code }">프로젝트</a></li>
						<%-- <li><a class="nav-link scrollto" href="umypagenotification.action?user_code=${user_code }">알림</a></li>
						<li><a class="nav-link scrollto " href="umypagelog.action?user_code=${user_code }">활동내역</a></li> --%>
					</ul>
					<i class="bi bi-list mobile-nav-toggle"></i>
				</nav>
				<hr>
				<!-- End InnerNav -->
				<div class = "row justify-content-end">
					<form action="userupdate.action" class="form-horizontal" method="post" id="my_update_form">
				  		<!-- <fieldset disabled="disabled"> -->
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="id" class="col-sm-2 col-form-label">아이디</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="id" value = "${user.id }" disabled="disabled">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="name" class="col-sm-2 col-form-label">이름</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="name" value = "${user.name }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="nickName" class="col-sm-2 col-form-label">닉네임</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="nickName" value="${user.u_nickname }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="email" class="col-sm-2 col-form-label">이메일</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="email" value="${user.email }">
									<div class="input-group">
										<span class="col-sm-1" style="text-align: center; padding-top: 5px;">@</span>
										<select class="form-select" id="domain" name="domain_part_code">
											<option value="none">도메인 선택</option>
											<c:forEach var="domain" items="${domainList }">
											<option value="${domain.domain_part_code }" <c:if test="${user.domain_part_code eq domain.domain_part_code }"> selected="selected"</c:if>  >${domain.domain_part }</option>   
											</c:forEach>
										</select>
									</div>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="telephone" class="col-sm-2 col-form-label">전화번호</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="telephone" value="${user.u_tel }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<!-- 
							<div class = "col-sm-3">
								<button type="button" class="phone_check"
								style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
								font-size: 13px; font-weight: bold;">
								실명인증</button>
							</div>
							 -->
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-part" class="col-sm-2 col-form-label">주요직무</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-part" name="position_part_code">
										<option value="none">주요 직무 선택</option>
										<c:forEach var="position" items="${positionList }">
										<option value="${position.position_part_code }" <c:if test="${user.position_part_code eq position.position_part_code }"> selected="selected"</c:if>  >${position.position_part }</option>
										</c:forEach>
									</select>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="region" class="col-sm-2 col-form-label">모임 선호 지역</label>
								<div class="col-sm-4">
									<select class="form-select" id="region" name="region_part_code">
										<option value="none">지역 선택</option>
										<c:forEach var="region" items="${regionList }">
										<option value="${region.region_part_code }" <c:if test="${user.region_part_code eq region.region_part_code }"> selected="selected"</c:if>  >${region.region_part }</option>
										</c:forEach>
									</select>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="time" class="col-sm-2 col-form-label">모임 선호 시간</label>
								<div class="col-sm-4">
									<div class="radioBtn mb-3" id ="time">
										<c:forEach var="time" items="${timeList }" varStatus="status">
										<input type="radio" id="time${status.count }" name="time_part_code" value="${time.time_part_code }" 
											<c:if test="${user.time_part_code eq time.time_part_code }">checked="checked"</c:if>
											><label for="time${status.count }">${time.time_part }</label>   
										</c:forEach>
									</div>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="interests" class="col-sm-2 col-form-label">관심 분야</label>
								<div class="col-sm-4">
									<select class="form-select" id="interests" name="subject_part_code">
										<option value="none">관심 분야 선택</option>
										<c:forEach var="subject" items="${subjectList }">
										<option value="${subject.subject_part_code }" <c:if test="${user.subject_part_code eq subject.subject_part_code }"> selected="selected"</c:if>  >${subject.subject_part }</option>   
										</c:forEach>
									</select>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="intro" class="col-sm-2 col-form-label">자기소개</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="intro" rows="5">${user.u_intro}</textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pf" class="col-sm-2 col-form-label">포트폴리오</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="pf" name="pf" value = "${user.u_portfolio_url }">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">주요기술</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill" name="skill_part_code">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }" <c:if test="${user.skill_part_code eq skill.skill_part_code }"> selected="selected"</c:if>  >${skill.skill_part }</option>
										</c:forEach>
									</select>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">부가기술 1</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill1" name="skill_part_code1">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }" <c:if test="${arrSkills1 eq skill.skill_part_code }"> selected="selected"</c:if>  >${skill.skill_part }</option>
										</c:forEach>
									</select>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">부가기술 2</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill2" name="skill_part_code2">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }" <c:if test="${arrSkills2 eq skill.skill_part_code }"> selected="selected"</c:if>  >${skill.skill_part }</option>
										</c:forEach>
									</select>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-5">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">부가기술 3</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill3" name="skill_part_code3">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }" <c:if test="${arrSkills3 eq skill.skill_part_code }"> selected="selected"</c:if>  >${skill.skill_part }</option>
										</c:forEach>
									</select>
								</div>
								<input type="text" class="form-control" id="user_code" name="user_code" 
								value="${user.user_code }" disabled="disabled" hidden="hidden">
								<div class = "col-sm-3"></div>
							</div>
					<!-- </fieldset> -->
					<div style = "text-align: center;">
						<button type="button" class ="btn btn-primary" id ="modify" 
						style="background-color: #3498db; border-radius: 50px;width: 100px; border: none; display: inline-block;">
						수정하기</button>
						<button type ="submit" class ="btn btn-primary" id ="modify_done" onclick="modifyMember()" 
						style="background-color: #3498db; border-radius: 50px;width: 100px; border: none; display: inline-block;">
						수정완료</button>
					</div>
				</form>
				</div>
			</div>
			<hr>
		</section>
	</main>
	<!-- End #main -->

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />


	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

<script type="text/javascript">
	$(document).ready(function()
	{
		var flag = true;
		
		$("#modify").click(function()
		{
			$("fieldset").attr("disabled", false);
			
			/* 
			$("#modify_done").click(function()
			{
				alert("수정이 완료되었습니다.");
				$("#my_update_form").attr("action", "userupdate.action?user_code=" + $("#user_code").val());
				$("#my_update_form").submit();
			});
			 */
		});
		/* 
		$("#updateform").click(function()
		{
			$(location).attr("href", "userupdateform.action" + $(this).val());
		});
		 */
	});
	
	function modifyMember() {
	    
	    var subject_part_code = $("#subject_part_code").val();
	    var region_part_code = $("#region_part_code").val();
	    var position_part_code = $("#position_part_code").val();
	    var time_part_code = $("#time_part_code").val();
	    var domain_part_code = $("#domain_part_code").val();
	    var name = $("#name").val();
	    var u_nickname = $("#u_nickname").val();
	    var u_tel = $("#u_tel").val();
	    var u_intro = $("#u_intro").val();
	    var u_portfolio_url = $("#u_portfolio_url").val();
	    var u_email = $("#u_email").val();
	    
	    var param = {"subject_part_code":subject_part_code
	    		, "region_part_code":region_part_code
	    		, "time_part_code":time_part_code
	    		, "domain_part_code":domain_part_code
	    		, "region_part_code":region_part_code
	    		, "name":name
	    		, "u_nickname":u_nickname
	    		, "u_tel":u_tel
	    		, "u_intro":u_intro
	    		, "u_portfolio_url":u_portfolio_url
	    		, "u_email":u_email}
	    
	    if(memberPass == '') {
	        alert("비밀번호를 올바르게 입력해주세요.");
	    } else {
	        $.ajax({
	            async:false,
	            type:'POST',
	            data: JSON.stringify(param),
	            url:"userupdate.action",
	            dataType: "text",
	            contentType: "application/json; charset=UTF-8",
	            success : function(data) {    
	                alert("뿅이 완료되었습니다.");
	                //location.href="";
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                alert("ERROR : " + textStatus + " : " + errorThrown);
	            }        
	        })
	    }
	    
	}
	
	/*
	function ajaxRequest()
	{
		$.ajaxSetup({async: false});
		$.post("ajaxpwUser.action"
				, {
					user_code: $("#user_code").val(), pw: $("#pw").val()
		}, function(data)
		{
			if ($.trim(data) == 0)
			{
				$("#err").html("비밀번호가 일치하지 않습니다.");
				$("#err").css("display", "inline");
				$("#pw").focus();
				return;
			}
			else
			{
				$("#my_update_form").attr("action", "userupdateform.action?user_code=" + $("#user_code").val());  
				$("#my_update_form").submit();
			}
		});
	}
	*/
	
	// a태그 post 방식으로 넘기기
	function pageMove(url, user_code)
	{
		var f = document.navForm;	// 폼 name
		
		f.user_code = user_code;	// post 방식으로 넘기고 싶은 값
		f.action = url;				// post 방식으로 넘기고 싶은 값
		f.method = "post";
		
		f.submit();
		
	}
			
	
			

</script>

</html>