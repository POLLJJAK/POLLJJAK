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

<!-- 현재 페이지 resources import -->
<link rel="stylesheet" href="resources/css/Registration.css" />

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
						<h2>일반회원 가입</h2>
					</div>
				</div>
				<!-- End PageIntro Section -->
				<hr>
				<!-- End InnerNav -->
				<div class = "row justify-content-end">
 					<form action="userregistration.action" method="post" id="registrationForm" class="form-horizontal">
				  		<fieldset>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="id" class="col-sm-2 col-form-label">
									아이디<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4" >
									<input type="text" class="form-control" id="id" name="id" autofocus="autofocus">
									<span class="err" id="errId"></span> 
									
								</div>
								<!-- 
								<div class = "col-sm-3">
									<button type="button" class="id_check"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
									font-size: 13px; font-weight: bold;">
									ID 중복검사</button>
								</div>
								 -->
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw" class="col-sm-2 col-form-label">
									비밀번호<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw" name="pw">
									<span class="err" id="errPw"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pw_check" class="col-sm-2 col-form-label">
									비밀번호 확인<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pw_check">
									<span class="err" id="errPwCheck"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="name" class="col-sm-2 col-form-label">
									이름<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="name" name="name">
									<span class="err" id="errName"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="nickName" class="col-sm-2 col-form-label">
									닉네임<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="nickName" name="u_nickname">
									<span class="err" id="errNickName"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="email" class="col-sm-2 col-form-label">
									이메일<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="email" name="email">
									<div class="input-group">
										<span class="col-sm-1" style="text-align: center; padding-top: 5px;">@</span>
										<select class="form-select" id="domain" name="domain_part_code">
											<option value="none">도메인 선택</option>
											<c:forEach var="domain" items="${domainList }">
											<option value="${domain.domain_part_code }">${domain.domain_part }</option>
											</c:forEach>
										</select>
									</div>
									<span class="err" id="errEmail"></span>
									<span class="err" id="errDomain"></span>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="telephone" class="col-sm-2 col-form-label">
									전화번호<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="tel" name="u_tel">
									<span class="err" id="errTel"></span>
								</div>
								<!-- 
								<div class = "col-sm-3">
									<button type="button" class="phone_check"
									style="margin-top: 4px; color: white; background-color: #3498db; border: 1px solid #3498db; border-radius: 3px;
									font-size: 13px; font-weight: bold;">
									실명인증</button>
								</div>
								 -->
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-part" class="col-sm-2 col-form-label">
									주요직무<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-part" name="position_part_code">
										<option value="none">주요 직무 선택</option>
										<c:forEach var="position" items="${positionList }">
										<option value="${position.position_part_code }">${position.position_part }</option>
										</c:forEach>
									</select>
									<span class="err" id="errPsp"></span>
									 <!-- 
										<option value="none">주요 직무 선택</option>
										<option value="UI/UX" selected>UI/UX</option>
										<option value="게임">게임</option>
										<option value="프로젝트 매니저">프로젝트 매니저</option>
										<option value="하드웨어 기획">하드웨어 기획</option>
										<option value="그래픽 디자인">그래픽 디자인</option>
										<option value="UI/UX 디자인">UI/UX 디자인</option>
										<option value="3D 디자인">3D 디자인</option>
										<option value="하드웨어 디자인">하드웨어 디자인</option>
										<option value="IOS">IOS</option>
										<option value="안드로이드">안드로이드</option>
										<option value="웹 프론트엔드">웹 프론트엔드</option>
										<option value="웹 퍼블리셔">웹 퍼블리셔</option>
										<option value="크로스 플랫폼">크로스 플랫폼</option>
										<option value="임베디드SW">임베디드SW</option>
										<option value="웹서버">웹서버</option>
										<option value="블록체인">블록체인</option>
										<option value="AI">AI</option>
										<option value="DB/빅데이터/DS">DB/빅데이터/DS</option>
										<option value="게임서버">게임서버</option>
										<option value="사업기획">사업기획</option>
										<option value="마케팅">마케팅</option>
										<option value="재무/회계">재무/회계</option>
										<option value="영업">영업</option>
										<option value="전략/컨설팅">전략/컨설팅</option>
										<option value="투자/고문">투자/고문</option>
									</select>
									 -->
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="region" class="col-sm-2 col-form-label">
									모임 선호 지역<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<select class="form-select" id="region" name="region_part_code">
										<option value="none">지역 선택</option>
										<c:forEach var="region" items="${regionList }">
										<option value="${region.region_part_code }">${region.region_part }</option>
										</c:forEach>
									</select>
									<span class="err" id="errRegion"></span>
									<!--  
									<select class="form-select" id="region">
										<option value="none">지역 선택</option>
										<option value="서울" selected>서울</option>
										<option value="경기">경기</option>
										<option value="인천">인천</option>
										<option value="강원">강원</option>
										<option value="충북">충북</option>
										<option value="충남">충남</option>
										<option value="전북">전북</option>
										<option value="전남">전남</option>
										<option value="경북">경북</option>
										<option value="경남">경남</option>
										<option value="제주">제주</option>
									</select>
									 -->
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="time" class="col-sm-2 col-form-label">
									모임 선호 시간<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<div class="radioBtn mb-3" id ="time">
										<c:forEach var="time" items="${timeList }" varStatus="status">
										<input type="radio" class="time" id="time${status.count }" name="time_part_code" value="${time.time_part_code }" checked="checked"><label for="time${status.count }">${time.time_part }</label> 
										</c:forEach>
									</div>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="interests" class="col-sm-2 col-form-label">
									관심 분야<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<select class="form-select" id="interests" name="subject_part_code">
										<option value="none">관심 분야 선택</option>
										<c:forEach var="subject" items="${subjectList }">
										<option value="${subject.subject_part_code }">${subject.subject_part }</option>
										</c:forEach>
									</select>									
									<span class="err" id="errInterests"></span>
									<!-- 
									<select class="form-select" id="interests">
										<option value="none">관심 분야 선택</option>
										<option value="생활" selected>생활</option>
										<option value="업무">업무</option>
										<option value="공공/교통">공공/교통</option>
										<option value="금융/핀테크">금융/핀테크</option>
										<option value="의료">의료</option>
										<option value="교육">교육</option>
										<option value="유통/쇼핑">유통/쇼핑</option>
										<option value="엔터테인먼트">엔터테인먼트</option>
										<option value="기타">기타</option>
									</select>
									 -->
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="intro" class="col-sm-2 col-form-label">자기소개</label>
								<div class="col-sm-4">
									<textarea class="form-control" id="intro" name="u_intro" rows="5"></textarea>
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="pf" class="col-sm-2 col-form-label">포트폴리오</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="pf" name="u_portfolio_url">
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">
									주요기술<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill" name="skill_part_code">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }">${skill.skill_part }</option>
										</c:forEach>
									</select>								
									<span class="err" id="errPsk"></span>
									<!-- 
									<select class="form-select" id="personal-skill">
										<option value="none">기술 선택</option>
										<option value="Java" selected>Java</option>
										<option value="Spring">Spring</option>
										<option value="React">React</option>
										<option value="Python">Python</option>
										<option value="C">C</option>
										<option value="C++">C++</option>
										<option value="Kotlin">Kotlin</option>
										<option value="Angular">Angular</option>
										<option value="TypeScript">TypeScript</option>
										<option value="NodeJs">NodeJs</option>
										<option value="Linux">Linux</option>
										<option value="Docker">Docker</option>
										<option value="Perl">Perl</option>
										<option value="Kubernetes">Kubernetes</option>
										<option value="AWS">AWS</option>
									</select>
									 -->
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">
									부가기술 1<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill1" name="skill_part_code1">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }">${skill.skill_part }</option>
										</c:forEach>
									</select>
									<span class="err" id="errPsk1"></span>
									<!-- 
									<select class="form-select" id="personal-skill1">
										<option value="none">기술 선택</option>
										<option value="Java" >Java</option>
										<option value="Spring">Spring</option>
										<option value="React" selected>React</option>
										<option value="Python">Python</option>
										<option value="C">C</option>
										<option value="C++">C++</option>
										<option value="Kotlin">Kotlin</option>
										<option value="Angular">Angular</option>
										<option value="TypeScript">TypeScript</option>
										<option value="NodeJs">NodeJs</option>
										<option value="Linux">Linux</option>
										<option value="Docker">Docker</option>
										<option value="Perl">Perl</option>
										<option value="Kubernetes">Kubernetes</option>
										<option value="AWS">AWS</option>
									</select>
									 -->
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">
									부가기술 2<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill2" name="skill_part_code2">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }">${skill.skill_part }</option>
										</c:forEach>
									</select>
									<span class="err" id="errPsk2"></span>
									<!-- 
									<select class="form-select" id="personal-skill1">
										<option value="none">기술 선택</option>
										<option value="Java" >Java</option>
										<option value="Spring">Spring</option>
										<option value="React" selected>React</option>
										<option value="Python">Python</option>
										<option value="C">C</option>
										<option value="C++">C++</option>
										<option value="Kotlin">Kotlin</option>
										<option value="Angular">Angular</option>
										<option value="TypeScript">TypeScript</option>
										<option value="NodeJs">NodeJs</option>
										<option value="Linux">Linux</option>
										<option value="Docker">Docker</option>
										<option value="Perl">Perl</option>
										<option value="Kubernetes">Kubernetes</option>
										<option value="AWS">AWS</option>
									</select>
									 -->
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div class="row mb-3">
								<div class = "col-sm-3"></div>
								<label for="personal-skill" class="col-sm-2 col-form-label">
									부가기술 3<em style="color: red;"> * </em>
								</label>
								<div class="col-sm-4">
									<select class="form-select" id="personal-skill3" name="skill_part_code3">
										<option value="none">기술 선택</option>
										<c:forEach var="skill" items="${skillList }">
										<option value="${skill.skill_part_code }">${skill.skill_part }</option>
										</c:forEach>
									</select>
									<span class="err" id="errPsk3"></span>
									<!-- 
									<select class="form-select" id="personal-skill1">
										<option value="none">기술 선택</option>
										<option value="Java" >Java</option>
										<option value="Spring">Spring</option>
										<option value="React" selected>React</option>
										<option value="Python">Python</option>
										<option value="C">C</option>
										<option value="C++">C++</option>
										<option value="Kotlin">Kotlin</option>
										<option value="Angular">Angular</option>
										<option value="TypeScript">TypeScript</option>
										<option value="NodeJs">NodeJs</option>
										<option value="Linux">Linux</option>
										<option value="Docker">Docker</option>
										<option value="Perl">Perl</option>
										<option value="Kubernetes">Kubernetes</option>
										<option value="AWS">AWS</option>
									</select>
									 -->
								</div>
								<div class = "col-sm-3"></div>
							</div>
							<div style = "text-align: center;">
								<button type="button" class="btn btn-primary" id="u_registration_done">
								가입하기</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<hr>
		</section>
	</main>
	<!-- End #main -->

	<!-- footer import (js imported)-->
	<c:import url="./common/Footer.jsp" />
	<script src="<%=cp %>/resources/js/Registration.js"></script>
</body>
</html>