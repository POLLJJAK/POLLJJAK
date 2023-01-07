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

<!-- 현재 페이지 resources import -->
<script src="<%=cp %>/resources/js/ProjectOpen.js"></script> 
<%-- <script src="<%=cp %>/resources/js/fileUpload.js"></script> --%>
<link rel="stylesheet" href="resources/css/ProjectOpen.css" />


<body>
<c:import url="./common/Nav.jsp" />

<main id="main">

	<!-- 빈칸 여백 -->
	<section class="pb-2"></section><!-- <div class="mt-5"></div> -->


	<section class="inner-page" data-aos="fade-up">
	
		<div class="container ">
			<div class="row">
				<!-- title -->
				<div class="d-flex justify-content-center col" style="width: 50%;"  data-aos="fade-up">
					<div class="section-title pt-4">
						<h6>프로젝트 생성</h6>
						<div>마음에 드는 프로젝트가 없나요? 그럼 만들어봅시다.</div>
					</div>
				</div>
				<!-- end title -->
			</div>
		</div>
				
		<div class="container">
			<form name="newProduct"  action="papply.action" method="post" enctype="multipart/form-data" onSubmit="return validation()">
				<div class="form-group row">
					<label class="col-sm-4 form-label">프로젝트 명<em style="color: red;"> * </em></label>
					<div class="com-sm-3">
						<input type="text" id="projectId" name="projectId" class="form-control" placeholder="프로젝트 명을 입력해주세요.">
					</div>
				</div>
				<hr>
				
				<div class="form-group row">
					<div>
						<label class="col-sm-4 form-label">프로젝트 분야<em style="color: red;"> * </em></label>
					</div>
					<label class="col-sm-2 form-label">주제</label>
					<div class="radioBtn" id = "subject_part">
						<input type="radio" id="subject1" name="subject" value="SBPT000001"><label for="subject1">생활</label>
						<input type="radio" id="subject2" name="subject" value="SBPT000002"><label for="subject2">업무</label>
						<input type="radio" id="subject3" name="subject" value="SBPT000003"><label for="subject3">공공/교통</label>
						<input type="radio" id="subject4" name="subject" value="SBPT000004"><label for="subject4">금융/핀테크</label>
						<input type="radio" id="subject5" name="subject" value="SBPT000005"><label for="subject5">의료</label>
						<input type="radio" id="subject6" name="subject" value="SBPT000006"><label for="subject6">교육</label>
						<input type="radio" id="subject7" name="subject" value="SBPT000007"><label for="subject7">유통/쇼핑</label>
						<input type="radio" id="subject8" name="subject" value="SBPT000008"><label for="subject8">엔터테인먼트</label>
						<input type="radio" id="subject9" name="subject" value="SBPT000009"><label for="subject9">기타</label>
					</div>
					<label class="col-sm-2 form-label">세부분야</label>
					<div class="radioBtn" id = "department_part">
						<input type="radio" id="detail1" name="detail" value="DPT0000001"><label for="detail1">모바일</label>
						<input type="radio" id="detail2" name="detail" value="DPT0000002"><label for="detail2">IOT</label>
						<input type="radio" id="detail3" name="detail" value="DPT0000003"><label for="detail3">데스크톱 S/W</label>	
						<input type="radio" id="detail4" name="detail" value="DPT0000004"><label for="detail4">인공지능</label>
						<input type="radio" id="detail5" name="detail" value="DPT0000005"><label for="detail5">보안</label>
						<input type="radio" id="detail6" name="detail" value="DPT0000006"><label for="detail6">가상현실</label>
						<input type="radio" id="detail7" name="detail" value="DPT0000007"><label for="detail7">빅데이터</label>
						<input type="radio" id="detail8" name="detail" value="DPT0000008"><label for="detail8">자동제어 기술</label>
						<input type="radio" id="detail9" name="detail" value="DPT0000009"><label for="detail9">블록체인</label>
						<input type="radio" id="detail10" name="detail" value="DPT0000010"><label for="detail10">영상처리</label>
					</div>
				</div>
				<hr>
				
				<div class="form-group row">
					<!--  -->
					<div id="root">
					<label class="col-sm-4 form-label">대표이미지</label>
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
					<label class="col-sm-4 form-label">지역<em style="color: red;"> * </em></label>
					<div class="radioBtn" id="location">
						<input type="radio" id="location1" name="location" value="all"><label for="location1">모두 가능</label>
						<input type="radio" id="location2" name="location" value="online"><label for="location2">온라인</label>
						<input type="radio" id="location3" name="location" value="offline"><label for="location3">오프라인</label>
					</div>
						<div>
							<select class="form-select form-select-sm w-25 mt-2" id = "region_part" name = "region_part">
								<option value="">지역 선택</option>
								<option value="RPT0000001">서울</option>
								<option value="RPT0000002">경기</option>
								<option value="RPT0000003">인천</option>
								<option value="RPT0000004">강원</option>
								<option value="RPT0000005">충북</option>
								<option value="RPT0000006">충남</option>
								<option value="RPT0000007">전북</option>
								<option value="RPT0000008">전남</option>
								<option value="RPT0000009">경북</option>
								<option value="RPT0000010">경남</option>
								<option value="RPT0000011">제주</option>
							</select>
						</div>
					</div>
				<hr />
				
				  <label class="col-sm-4 form-label">팀장 직무<em style="color: red;"> * </em></label>
					<table>
						<tr>
							<td><select class="form-select form-select-sm mb-4 " id="leader_position" name = "leader_position">
									<option value="">팀장 직무 선택</option>
									<option value="PSPT000001">UI/UX</option>
									<option value="PSPT000002">게임</option>
									<option value="PSPT000003">프로젝트 매니저</option>
									<option value="PSPT000004">하드웨어 기획</option>
									<option value="PSPT000005">그래픽 디자인</option>
									<option value="PSPT000006">UI/UX 디자인</option>
									<option value="PSPT000007">3D 디자인</option>
									<option value="PSPT000008">하드웨어 디자인</option>
									<option value="PSPT000009">IOS</option>
									<option value="PSPT000010">안드로이드</option>
									<option value="PSPT000011">웹 프론트엔드</option>
									<option value="PSPT000012">웹 퍼블리셔</option>
									<option value="PSPT000013">크로스 플랫폼</option>
									<option value="PSPT000014">임베디드SW</option>
									<option value="PSPT000015">웹서버</option>
									<option value="PSPT000016">블록체인</option>
									<option value="PSPT000017">AI</option>
									<option value="PSPT000018">DB/빅데이터/DS</option>
									<option value="PSPT000019">게임서버</option>
									<option value="PSPT000020">사업기획</option>
									<option value="PSPT000021">마케팅</option>
									<option value="PSPT000022">재무/회계</option>
									<option value="PSPT000023">영업</option>
									<option value="PSPT000024">전략/컨설팅</option>
									<option value="PSPT000025">투자/고문</option>
							</select></td>
						</tr>
					</table>


				<label class="col-sm-4 form-label">팀원 직무<em style="color: red;"> * </em></label>
				<table>
				    <tbody id="positionAppendSpot">
				        <tr>
				            <td>
				                <select class="form-select form-select-sm" id="position" name = "position">
				                    <option value="">팀원 직무 선택</option>
									<option value="PSPT000001" >UI/UX</option>
									<option value="PSPT000002">게임</option>
									<option value="PSPT000003">프로젝트 매니저</option>
									<option value="PSPT000004">하드웨어 기획</option>
									<option value="PSPT000005">그래픽 디자인</option>
									<option value="PSPT000006">UI/UX 디자인</option>
									<option value="PSPT000007">3D 디자인</option>
									<option value="PSPT000008">하드웨어 디자인</option>
									<option value="PSPT000009">IOS</option>
									<option value="PSPT000010">안드로이드</option>
									<option value="PSPT000011">웹 프론트엔드</option>
									<option value="PSPT000012">웹 퍼블리셔</option>
									<option value="PSPT000013">크로스 플랫폼</option>
									<option value="PSPT000014">임베디드SW</option>
									<option value="PSPT000015">웹서버</option>
									<option value="PSPT000016">블록체인</option>
									<option value="PSPT000017">AI</option>
									<option value="PSPT000018">DB/빅데이터/DS</option>
									<option value="PSPT000019">게임서버</option>
									<option value="PSPT000020">사업기획</option>
									<option value="PSPT000021">마케팅</option>
									<option value="PSPT000022">재무/회계</option>
									<option value="PSPT000023">영업</option>
									<option value="PSPT000024">전략/컨설팅</option>
									<option value="PSPT000025">투자/고문</option>
				                </select>
				            </td>
				            <td class="bseq_ea" style="visibility: hidden;">6</td>
				            <td>
								<button type="button" onclick="fnCalCount('-', this);" style="background-color:white; border: none;">-</button>
								<input type="text" id="count" name="count" value="1" readonly="readonly" style="text-align:center; width: 15px; border: none;"/>
								<button type ="button" onclick="fnCalCount('+',this);" style="background-color:white; border: none;">+</button>
							</td>
							<!-- 
				            <td>
				            	<input type="button" class="btn btn-primary" name="remove" value="삭제" style="background-color: #3498db; border-color: #3498db;">
							</td>
							 -->
				        </tr>
				    </tbody>
				</table>
				<input type="button" class="btn btn-primary mt-2" id="addPart" value="추가" 
				style="background-color: #3498db; border-color: #3498db;">
				<hr />
				
				<div class="form-group row">
					<label class="col-sm-4 form-label">출시 플랫폼<em style="color: red;"> * </em></label>
					<div class="radioBtn" id = "platform" >
						<input type="radio" id="platform1" name="platform" value="RPT000001"><label for="platform1">웹</label>
						<input type="radio" id="platform2" name="platform" value="RLPT000002"><label for="platform2">앱</label>
						<input type="radio" id="platform3" name="platform" value="RLPT000003"><label for="platform3">프로그램</label>	
						<input type="radio" id="platform4" name="platform" value="RLPT000004"><label for="platform4">미정</label>
					</div>
				</div>
				<hr>
				
				<div class="form-group row">
					<label class="col-sm-4 form-label">프로젝트 설명<em style="color: red;"> * </em></label>
					<div class="com-sm-5">
						<textarea name="description" id ="description"  name = "description" rows="10" class="form-control h-15" placeholder="프로젝트 설명을 입력해주세요."></textarea>
					</div>
				</div>
				<hr />

					<div class="form-group row">
						<label class="col-sm-4 form-label">주요 기술/언어</label>
						<div class="com-sm-3">
							<select class="form-select" id="persnal-skill" name = "persnal-skill">
								<option value="">주요 기술 선택</option>
								<option value="SPT0000001">Java</option>
								<option value="SPT0000002">Spring</option>
								<option value="SPT0000003" >React</option>
								<option value="SPT0000004">Python</option>
								<option value="SPT0000005">C</option>
								<option value="SPT0000006">C++</option>
								<option value="SPT0000007">Kotlin</option>
								<option value="SPT0000008">Angular</option>
								<option value="SPT0000009">TypeScript</option>
								<option value="SPT0000010">NodeJs</option>
								<option value="SPT0000011">Linux</option>
								<option value="SPT0000012">Docker</option>
								<option value="SPT0000013">Perl</option>
								<option value="SPT0000014">Kubernetes</option>
								<option value="SPT0000015">AWS</option>
							</select>
						</div>
					</div>
					<hr />
				
				<div class="form-group row">
					<label class="col-sm-4 form-label">모집마감일<em style="color: red;"> * </em></label>
					<div class="com-sm-3">
				        <input type="text" name="deadLine" id = "deadLine" class="datepicker inp" placeholder="모집마감일" readonly="readonly"/> 
					</div>
				</div>
				<hr />
				
				<div class="form-group row">
					<label class="col-sm-6 form-label">프로젝트 시작 및 마감 예정일자<em style="color: red;"> * </em></label>
					<div class="com-sm-3">
						<div class="com-sm-3">
					        <input type="text" name="startDate" id = "startDate" class="datepicker inp" placeholder="시작일" readonly="readonly"/> 
							<input type="text" name="endDate" id = "endDate" class="datepicker inp" placeholder="마감일" readonly="readonly" />
						</div>
					</div>
				</div>
				<hr />
				
				<label class="col-sm-4 form-label">참고 자료</label>
				<div class="form-group row" id="reference">
					<div class="com-sm-3">
						<input type="text" class="form-control mt-2" id = "reference" name="reference" placeholder="링크를 입력해주세요.">
					</div>
				</div>
				<br><br>
				
				<div class="form-group row">
					<div >
						<input type="submit" class="btn btn-primary" value="등록"  id = "add"
						style="background-color: #3498db; border-color: #3498db; float: right;">
					</div>
				</div>
			</form>
			<input type = "text" id = "level"  name = "level" value = "${levelInfo}" style = "display:none"/>
		</div>
	</section>
</main><!-- End #main -->

<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />

</body>
</html>