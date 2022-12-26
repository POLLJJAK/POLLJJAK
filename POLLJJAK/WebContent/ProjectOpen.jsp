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


	<!-- ======= Breadcrumbs Section ======= -->
	<!-- 
	<section class="breadcrumbs">
		<div class="container">
		
			<div class="d-flex justify-content-between align-items-center">
			<h2>프로젝트 생성</h2>
				<ol>
					<li><a href="index.html">Home</a></li>
					<li><a href="ProjectOpen.jsp">ProjectOpen</a></li>
				</ol>
			</div>
			<h6>마음에 드는 프로젝트가 없나요? 그럼 만들어봅시다.</h6>
		
		</div>
	</section>End Breadcrumbs Section
	-->
	<div style="margin-top: 100px;">
		<div class="section-title" data-aos="fade-up">
			<h2>관리자 공지사항</h2>
			<p>플젝폴짝의 새로운 공지사항을 확인하세요!</p>
		</div>
	</div>
	<main id="main">
	
	<section class="inner-page">
		<div class="container">
			<form name="newProject" action="./projectSupport.jsp" class="form-horizontal" method="post" 
			enctype="multipart/form-data">
			
				<div class="form-group row">
					<label class="col-sm-4">프로젝트 명<em style="color: red;"> * </em></label>
					<div class="com-sm-3">
						<input type="text" id="projectId" name="projectId" class="form-control" placeholder="프로젝트 명을 입력해주세요.">
					</div>
				</div>
				<hr>
				
				<div class="form-group row">
					<label class="col-sm-4">프로젝트 분야<em style="color: red;"> * </em></label>
					<div class="com-sm-5">
						<label class="col-sm-2">주제</label><br>
						<input type="checkbox" id="subject1" name="subject1" value="living"><label for="subject1">생활</label>
						<input type="checkbox" id="subject2" name="subject2" value="task"><label for="subject2">업무</label>
						<input type="checkbox" id="subject3" name="subject3" value="publicTransport"><label for="subject3">공공/교통</label>
						<input type="checkbox" id="subject4" name="subject4" value="madical"><label for="subject4">의료</label>
						<input type="checkbox" id="subject5" name="subject5" value="education"><label for="subject5">교육</label>
						<input type="checkbox" id="subject6" name="subject6" value="shopping"><label for="subject6">유통/쇼핑</label>
						<input type="checkbox" id="subject7" name="subject7" value="entertainment"><label for="subject7">엔터테인먼트</label>
						<br><br>
						<label class="col-sm-2">세부분야</label><br>
						<input type="checkbox" id="detail1" name="detail1" value="mobile"><label for="detail1">모바일</label>
						<input type="checkbox" id="detail2" name="detail2" value="iot"><label for="detail2">IOT</label>
						<input type="checkbox" id="detail3" name="detail3" value="desktop"><label for="detail3">데스크톱 S/W</label>	
						<input type="checkbox" id="detail4" name="detail4" value="ai"><label for="detail4">인공지능</label>
						<input type="checkbox" id="detail5" name="detail5" value="security"><label for="detail5">보안</label>
						<input type="checkbox" id="detail6" name="detail6" value="vr"><label for="detail6">가상현실</label>
						<input type="checkbox" id="detail7" name="detail7" value="bigData"><label for="detail7">빅데이터</label>
						<input type="checkbox" id="detail8" name="detail8" value="autoCtrlTech"><label for="detail8">자동제어 기술</label>
					</div>
				</div>
				<hr>
				
				<div class="form-group row">
					<!--  -->
					<div id="root">
					<label class="col-sm-4">대표이미지</label>
						<div class="contents">
							<div class="upload-box">
								<div id="drop-file" class="drag-file">
									<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image" >
									<p class="message">파일을 드래그 해주세요.</p>
									<img src="" alt="미리보기 이미지" class="preview">
								</div>
							<label><em style="color: red;"> * </em>저작권에 위배되지 않는 파일만 업로드해주세요.</label>
							<label class="file-label" for="chooseFile">파일 선택</label>
							<input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
							</div>
						</div>
					</div>
					<!--  -->
				</div>
				<hr>
				
				<div class="form-group row">
					<label class="col-sm-4">지역</label>
					<div class="location">
						<input type="radio" id="location1" name="location" value="all"><label for="location1">모두 가능</label>
						<input type="radio" id="location2" name="location" value="online"><label for="location2">온라인</label>
						<input type="radio" id="location3" name="location" value="offline"><label for="location3">오프라인</label>
					</div>
					<div class="location">
						<select>
							<option>지역선택</option>
							<option>상관없음</option>
							<option>서울</option>
							<option>경기</option>
							<option>충북</option>
						</select>
					</div>
				</div>
				<hr />

		        <label class="col-sm-4">모집 분야</label>
				<table>
				    <tbody>
				        <tr id="tr">
				            <td>
				                <select name="part1">
				                    <option value="front1">프론트</option>
				                    <option value="backend1">백엔드</option>
				                    <option value="pm1">기획</option>
				                </select>
				            </td>
				            <td class="bseq_ea" style="visibility: hidden;">6</td>
				            <td>
								<button type ="button" onclick="fnCalCount('p',this);" style="background-color:white; border: none;">+</button>
								<input type="text" name="pop_out" value="1" readonly="readonly" style="text-align:center; width: 15px; border: none;"/>
								<button type="button" onclick="fnCalCount('m', this);" style="background-color:white; border: none;">-</button>
							</td>
							<!-- 
				            <td>
				            	<input type="button" class="btn btn-primary" name="remove" value="삭제" style="background-color: #3498db; border-color: #3498db;">
							</td>
							 -->
				        </tr>
				    </tbody>
				</table>
				<input type="button" class="btn btn-primary" name="addPart" value="추가" 
				style="background-color: #3498db; border-color: #3498db;">
				<hr />
				
				<div class="form-group row">
					<label class="col-sm-4">출시 플랫폼<em style="color: red;"> * </em></label>
					<div class="com-sm-5">
						<input type="checkbox" id="platform1" name="platform1" value="web"><label for="platform1">웹</label>
						<input type="checkbox" id="platform2" name="platform2" value="app"><label for="platform2">앱</label>
						<input type="checkbox" id="platform3" name="platform3" value="program"><label for="platform3">프로그램</label>	
						<input type="checkbox" id="platform4" name="platform4" value="undecided"><label for="platform4">미정</label>
					</div>
				</div>
				<hr>
				
				<div class="form-group row">
					<label class="col-sm-4">프로젝트 설명<em style="color: red;"> * </em></label>
					<div class="com-sm-5">
						<textarea name="description" cols="50" rows="2" class="form-control" placeholder="프로젝트 설명을 입력해주세요."></textarea>
					</div>
				</div>
				<hr />
				
				<div class="form-group row">
					<label class="col-sm-4">기술/언어</label>
					<div class="com-sm-3">
						<input type="text" name="language" class="form-control" placeholder="기술명을 입력해주세요. ex) Java, Spring">
					</div>
				</div>
				<hr />
				
				<div class="form-group row">
					<label class="col-sm-4">모집마감일<em style="color: red;"> * </em></label>
					<div class="com-sm-3">
				        <input type="text" name="deadLine" value="" class="datepicker inp" placeholder="모집마감일" readonly="readonly"/> 
					</div>
				</div>
				<hr />
				
				<div class="form-group row">
					<label class="col-sm-6">프로젝트 시작 및 마감 예정일자<em style="color: red;"> * </em></label>
					<div class="com-sm-3">
						<div class="com-sm-3">
					        <input type="text" name="startDate" value="" class="datepicker inp" placeholder="시작일" readonly="readonly"/> 
							<input type="text" name="endDate" value="" class="datepicker inp" placeholder="마감일" readonly="readonly" />
						</div>
					</div>
				</div>
				<hr />
				
				<label class="col-sm-4">참고 자료</label>
				<div class="form-group row" id="reference">
					<div class="com-sm-3">
						<input type="text" class="form-control" name="reference1" placeholder="링크를 입력해주세요.">
					</div>
				</div>
				<input type="button" class="btn btn-primary" name="addReference" value="추가" 
				style="background-color: #3498db; border-color: #3498db;">
				<br><br>
				
				<div class="form-group row">
					<div >
						<input type="button" class="btn btn-primary" value="등록" 
						onclick="CheckAddProduct()" style="background-color: #3498db; border-color: #3498db; float: right;">
					</div>
				</div>
			
			</form>		
		
		</div>
	</section>
</main><!-- End #main -->

<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />

</body>
</html>