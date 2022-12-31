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

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <!-- ====== PageIntro Section ====== -->
            <div class="pageintro">
               <div class="section-title mt-5" data-aos="fade-up">
                  <h2><b>프로젝트 상세보기</b></h2>
                  <p>프로젝트 상세정보를 확인해보세요!</p>
               </div>
            </div>            
            <hr>

     
    </section><!-- End Breadcrumbs Section -->

    <!-- ======= Portfolio Details Section ======= -->
    
    <section id="portfolio-details" class="portfolio-details" data-aos="fade-up">
      <div class="container">
      
	  
        <div class="row gy-4">
          <div class="col-lg-8" >
      <!-- ======= 탭메뉴 ====== -->
	  <ul class="tabs">
	    <li class="tab-link current" data-tab="tab-1">상세보기</li>
	    <li class="tab-link" data-tab="tab-2">소식</li>
	    <li class="tab-link" data-tab="tab-3">블랙리스트</li>
	  </ul>
          <!-- ======= 상세보기 ====== -->
		  <div id="tab-1" class="tab-content current"> 
          	<div class="project-title" style="text-align: center;">
            <h2><b>소규모 프로젝트 관리와 매칭</b></h2>
            <img src="assets/img/UserIcon/User-Icon.png" alt=""
                  style="width: 60px; height: 60px; padding: 10px;"> <br>
            
            은영공주<br>
            <p style="color: #007aff;">★★★★★</p>
            <button class="btn-hover color-9">프로필</button>
            <br><br><hr>
            </div>
            
            <div class="project-part">
            <h5><strong>모집현황</strong></h5>
            	<table class="table">
            		<tr>
            		<td>모집분야 1</td>
            		<td>2/2</td>
            		<td> <button class="btn-hover color-9">지원하기</button> </td>
            		</tr>
            		<tr>
            		<td>모집분야 2</td>
            		<td style="color: red;">1/2</td>
            		<td> <button class="btn-hover color-9">지원하기</button> </td>
            		</tr>
            	</table>
            </div>
            
            <div class="project-allmember">
            <h5><strong>확정멤버</strong></h5>
            	<div class="member" style="border: 3px solid #25aae1;">
            		<table>
            			<tr>
            			<th>모집분야1</th>
            			<th style="float: right;">
            			<a><img src="assets/img/icon-delete.png" alt=""
                  		style="float: right; width: 15px; height: 15px; "></a></th>
            			</tr>
            			<tr>
            			<td colspan="2">서른아잉교</td>
            			</tr>
            		</table>
            	</div>
            	<div class="member" style="border: 3px solid gray;">
            		<table>
            			<tr>
            			<th>모집분야 2</th>
            			<th style="float: right;">
            			<a><img src="assets/img/icon-delete.png" alt=""
                  		style="float: right; width: 15px; height: 15px; "></a></th>
            			</tr>
            			<tr>
            			<td colspan="2">도딤도딤빵</td>
            		</table>
            	</div>
            	<div class="member" style="border: 3px solid #25aae1;">
            		<table>
            			<tr>
            			<th>모집분야1</th>
            			<th style="float: right;">
            			<a><img src="assets/img/icon-delete.png" alt=""
                  		style="float: right; width: 15px; height: 15px; "></a></th>
            			</tr>
            			<tr>
            			<td colspan="2">혼자사는박또기</td>
            		</table>
            	</div>
            </div><br><br><br><br>
            <hr>
            <!-- 지원사유 -->
            <div class="apply-reason">
            	<div class="reason2">
            	<p>4조 4조 화이팅 오늘은 24일 크리스마스이브네요 크리스마스같지도않다 촤핳,, 연말이 이렇게 가네연,,</p>
            	</div>
            </div>
            <hr>
            
            <div class="project-info">
            	<div class="part">
           		<h5><strong>📂 프로젝트 분류</strong></h5>
            	[ 생활 ] [ 모바일 ]
            	</div><br>
            	<div class="platform">
           		<h5><strong>- 출시플랫폼</strong></h5>
            	[ 웹 ] [ 앱 ]
            	</div><br>
            	<div class="meet-time">
           		<h5><strong>- 미팅시간</strong></h5>
            	[ 오후 ] 
            	</div><br>
            	<div class="intro">
            	<h5><strong>-  소개</strong></h5>
            	<p>
            	커리어상의 새로운 발전이나 개발역량의 증진을 원하는 개발자와 프로젝트 파트너를 찾는 기업 회원을 위한 커뮤니티 이다. 전국 여러지역의 모든 개발자들이 온라인 커뮤니티에 모여 다양한 분야의 현직 개발자들과 소통하고 정보를 공유하며 사이드 프로젝트를 진행할 수 있는 플랫폼을 기획하였다. 기존의 개발자들이 사이드 프로젝트를 진행하기 위해 오프라인에서 직접 인원을 모집하던 형태에서 벗어나 온라인에서도 손쉽게 사이드 프로젝트 인원을 모집할 수 있도록 하는 것이 주 목적이다. 또한 이용자 개개인의 관심 분야 및 경력을 한눈에 확인할 수 있어 각 이용자들이 프로필을 통해 자신이 원하는 조건의 개발자와 손쉽게 소통할 수 있으며 사이드 프로젝트 모집과 더불어 개설된 프로젝트의 일정 관리 및 협업을 지원하여 손쉬운 프로젝트 관리를 돕는다. 진행된 사이드 프로젝트의 내역은 일반 이용자 개개인의 포트폴리오가 되며 다양한 기업회원들이 해당 포트폴리오 및 프로젝트 내역을 열람하고 다양한 선택 기준으로 여러 개발자들의 정보를 열람한뒤 프로젝트 파트너를 찾을 수 있으며 기업과 프리랜서, 개발자가 모두 하나로 연결되는 프로젝트 관리 통합 플랫폼이다. 
            	</p>
            	</div>
            	<div class="skill-data">
           		<h5><strong>- 기술언어</strong></h5>
            	[ JAVA ] [ Spring ] [ React ] 
            	</div><br>
            	<div class="skill-data">
           		<h5><strong>- 참고자료</strong></h5>
            	<a>http://localhost:8090/POLLJJAK/ProjectDetail.jsp</a>
            	</div><br>
            </div>
            
            
            
            
            
          </div>  
          
          <!-- 소식탭 -->
          <div id="tab-2" class="tab-content" >
          	
          	<div class="project-news">
          		<div class="news">
          			22.12.24 <br>
          			<span style="color: blue; font-weight: bold;">모집분야 1</span>에 
          			<b>혼자사는박또기</b>님이 지원하셨습니다.
          		</div>
          		<div class="news">
          			22.12.24 <br>
          			<span style="color: blue; font-weight: bold;">모집분야 1</span>에 
          			<b>혼자사는박또기</b>님이 지원하셨습니다.
          		</div>
          		<div class="news">
          			22.12.24 <br>
          			<span style="color: blue; font-weight: bold;">모집분야 1</span>에 
          			<b>혼자사는박또기</b>님이 지원하셨습니다.
          		</div>
          		
          			
          		
          	</div>
          	<button class="btn-hover color-9" style="align-content: center; margin-left: 30%; margin-top: 10%;">더보기</button>
          
          </div>
          
          <!-- 블랙리스트탭 -->
 		  <div id="tab-3" class="tab-content">
 		  	<h2 style="text-align: center;"><b>블랙리스트</b></h2>
          	<p style="color: red; text-align: center; font-size: small;">
          	※ 블랙리스트에 등록된 회원은 해당 프로젝트에 지원할수없습니다.</p>
          	<br><br>
          	
 		  <div class="blacklist" id="box1">
	 		  <div class="column"  ondrop="drop(event)" ondragover="dragOver(event)">
		      <h6 style="text-align: center;"><b>지원자 목록</b></h6>
		      <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag1">서른아잉교</div>
		      <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag2">도딤도딤빵</div>
		      <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag3">혼자사는박또기</div>
		      <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag4">수업하지말까요?</div>
		      <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag5">그래~그렇게하자~</div>
			  </div>
			  
			  <div class="column" ondrop="drop(event)" ondragover="dragOver(event)" id="box2">
			      <h6 style="text-align: center;"><b>차단 목록</b></h6>
			  </div>
		   
 		  
 		  
 		  </div>
 		  </div>
          
          
          </div><!-- end "col-lg-8" -->
		  
		  <!-- 리더 프로필 -->
          <div class="col-lg-4">
            <div class="portfolio-info">
                <h3>Project Leader</h3>
              <ul>
                <li><strong>은영공주</strong><br>
                	<p style="color: #007aff;">★★★★★</p>
                </li>
                <hr>
                <li><strong>프로젝트 진행기간</strong><br>
                	2022.11.11 ~ 2023.01.18</li>
                <hr>
                <li><strong>리더 주요 기술 </strong>: JAVA</li>
                <li>부가기술 : Spring, Linux, AWS</li>
              </ul>
            </div>
            <!-- <div class="portfolio-description">
              <h2>This is an example of portfolio detail</h2>
              <p>
                Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.
              </p>
            </div> -->
          </div>

		  </div>
        </div>

      
    </section><!-- End Portfolio Details Section -->
	
  </main><!-- End #main -->

<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />

</body>
  
</html>