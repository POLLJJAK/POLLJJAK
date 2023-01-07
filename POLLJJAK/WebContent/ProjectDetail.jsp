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
<script src="/POLLJACK/WebContent/resources/js/ProjectDetail.js"></script> 
<link rel="stylesheet" href="/POLLJACK/WebContent/resources/css/ProjectDetail.css?after" />
<!-- 드래그 앤 드랍 -->
<script>
	$( function() {
	    $( "ul.droptrue" ).sortable({
	      connectWith: "ul"
	    });
	 
	    $( "#sortable1, #sortable2" ).disableSelection();
	  } );
	
	
	/* 지원취소 */
	function deleteM()
	{
		if (confirm("지원멤버에서 삭제하시겠습니까?"))
		{
			/* 삭제ok → delete로 */
			return true;
		}
		else
			return false;
	}
 	
 	//지원사유
 	$(document).ready(function(){
 		$("#reason1").css("display","none");
 		
        $('#member1').hover(function() 
     	{
			$("#reason1").css("display","inline");
        	}, function(){
            $("#reason1").css("display","none");
        });
        
        $()
    });
 	
 	$(function(){
 		$('.news').hide();
 	    $(".news").slice(0, 3).show(); 				// select the first ten
 	    $("#load").click(function(e){ 				// click event for load more
 	        e.preventDefault();
 	        $(".news:hidden").slice(0, 3).fadeIn(1000).show();   // select next 10 hidden divs and show them
 	        if($(".news:hidden").length == 1){      // check if any hidden divs still exist
 	            //alert("No more news"); 			    // alert if there are none left
 	        }
 	    });
 	});
 	
 	
</script>


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
    
    <section id="portfolio-details" class="portfolio-details" >
      <div class="container" >
      
	  
        <div class="row gy-4">
          <div class="col-lg-8" >
      <!-- ======= 탭메뉴 ====== -->
	  <ul class="tabs" data-aos="fade-up">
	    <li class="tab-link current" data-tab="tab-1">상세보기</li>
	    <li class="tab-link" data-tab="tab-2">소식</li>
	    <li class="tab-link" data-tab="tab-3">블랙리스트</li>
	  </ul>
          <!-- ======= 상세보기 ====== -->
		  <div id="tab-1" class="tab-content current" data-aos="fade-up"> 
          	<div class="project-title" style="text-align: center;">
          	<br><br>
            <h2><b>${pInfo.p_name}</b></h2>
            <img src="assets/img/UserIcon/User-Icon.png" alt=""
                  style="width: 60px; height: 60px; padding: 10px;"> <br>
            
            은영공주<br>
            <p style="color: #007aff;">★★★★★</p>
            <button class="btn-hover color-9">프로필</button>
            <br><br><hr>
            </div>
            
            <div class="project-part">
            <h5><strong>모집현황</strong></h5>
            <table class = "table">
            	<c:forEach var="position" items="${pPositionInfo }" varStatus="status">
					<tr>
						<td>모집분야${status.index+1}</td>
						<td>${position.position_part }</td>
						<td>${position.p_apply_count}/${position.p_position_count }</td>
						<td><div class="row col-md-12 col-lg-12" data-bs-toggle="modal" data-bs-target="#applyEnd">
            			<button class="fullbtn" >지원하기</button></div></td>
					</tr>
					</c:forEach>
				</table>
				<!-- 
            	<table class="table">
            		<tr>
            		<td>모집분야 1</td>
            		<td>2/2</td>
            		<td><div class="row col-md-12 col-lg-12" data-bs-toggle="modal" data-bs-target="#applyEnd">
            		<button class="fullbtn" >지원하기</button></div></td>
            		</tr>
            		<tr>
            		<td>모집분야 2</td>
            		<td style="color: red;">1/2</td>
            		<td><div class="row col-md-12 col-lg-12" data-bs-toggle="modal" data-bs-target="#apply">
					<button class="btn-hover color-9">지원하기</button></div></td>
            		</tr>
            	</table>
            	 -->
            </div>
            
            
            
            
            
            <div class="project-allmember">
            <h5><strong>확정멤버</strong></h5>
            	<div class="member" id="member1" style="border: 3px solid #25aae1;">
            		<table>
            			<tr>
            			<th>모집분야1</th>
            			<th style="float: right;">
            			<a href="#" onclick="deleteM()"><img src="assets/img/icon-delete.png" alt=""
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
            			<a href="#" onclick="deleteM()"><img src="assets/img/icon-delete.png" alt=""
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
            			<a href="#" onclick="deleteM()"><img src="assets/img/icon-delete.png" alt=""
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
            	<div id="reason1">
            	<p>지원사유1번</p>
            	</div>
            </div>
            <hr>
            
            <div class="project-info">
            	<div class="part">
           		<h5><strong>📂 프로젝트 분류</strong></h5>
            	<p>[ ${pInfo.subject_part} ]</p>
            	</div><br>
            	
            	<div class="platform">
           		<h5><strong>- 출시플랫폼</strong></h5>
            	<p>[ ${pInfo.platform_part} ]</p>
            	</div><br>
            	
            	<div class="intro">
            	<h5><strong>-  소개</strong></h5>
            	<p>${pInfo.p_info_content} </p>
            	</div>
            	
            	<div class="skill-data">
           		<h5><strong>- 기술언어</strong></h5>
            	<p>[ ${pInfo.skill_part} ] </p>
            	</div><br>
            	
            	<div class="skill-data">
           		<h5><strong>- 참고자료</strong></h5>
            	<a>${pInfo.p_info_refo}</a>
            	</div><br>
            	
            	<div class="p_start_date">
           		<h5><strong>- 프로젝트 모집 개시일</strong></h5>
            	<a>${pInfo.p_start_date}</a>
            	</div><br>
            	
            	<div class="p_end_date">
           		<h5><strong>- 프로젝트 모집 마감일</strong></h5>
            	<a>${pInfo.p_end_date}</a>
            	</div><br>
            	
            	<div class="project_start_date">
           		<h5><strong>- 프로젝트 시작 예정일</strong></h5>
            	<a>${pInfo.pj_start_date}</a>
            	</div><br>
            	
            	<div class="project_end_date">
           		<h5><strong>- 프로젝트 종료 예정일</strong></h5>
            	<a>${pInfo.pj_end_date}</a>
            	</div><br>
            </div>
            
            
            
            
            
          </div>  
          
          <!-- 소식탭 -->
          <div id="tab-2" class="tab-content" >
          	<br><br>
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
          		<div class="news">
          			22.12.24 <br>
          			<span style="color: blue; font-weight: bold;">모집분야 1</span>에 
          			<b>혼자사는박또기</b>님이 지원하셨습니다.
          		</div>
          		
          			
          		
          	</div>
          	<button class="btn-hover color-9"  id ="load"
          	style="align-content: center; margin-left: 30%; margin-top: 10%;">더보기</button>
          
          </div>
          
          <!-- 블랙리스트탭 -->
 		  <div id="tab-3" class="tab-content">
 		  	<h2 style="text-align: center;"><b>블랙리스트</b></h2>
          	<p style="color: red; text-align: center; font-size: small;">
          	※ 블랙리스트에 등록된 회원은 해당 프로젝트에 지원할수없습니다.</p>
          	<br><br>
          	
	 		  <div class="blacklist justify-content-center" id="box1">
					<!--
 		 		  <div class="column"  ondrop="drop(event)" ondragover="dragOver(event)">
			      	<h5 style="text-align: center;">지원자 목록</h5>
 					<div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag1">서른아잉교</div>
				    <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag2">도딤도딤빵</div>
				    <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag3">혼자사는박또기</div>
				    <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag4">수업하지말까요?</div>
				    <div class="list-group-item" draggable="true" ondragstart="drag(event)" id="drag5">그래~그렇게하자~</div>
				  </div>
				  
				  <div class="column" ondrop="drop(event)" ondragover="dragOver(event)" id="box2">
				      <h5 style="text-align: center;">차단 목록</h5>
				  </div>
			    	-->
			    	<div class="column">
			      		<h5 style="text-align: center; margin-top: 20px;"><b>지원자 목록</b></h5>
				 		<ul id="sortable1" class="droptrue">
							<li class="">서른아잉교</li>
					    	<li class="">도딤도딤빵</li>
					    	<li class="">혼자사는박또기</li>
					    	<li class="">수업하지말까요?</li>
					    	<li class="">그래~그렇게하자~</li>
					  	</ul>
					</div>
			  
			  		<div class="column">
			      		<h5 style="text-align: center;  margin-top: 20px; color: red;"><b>차단 목록</b></h5>
				 		<ul id="sortable2" class="droptrue">
	
					  	</ul>
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

<!-- 지원마감 -->
<div class="modal fade" id="applyEnd" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
		    	<div class="modal-header">
		        	<h5 class="modal-title">지원 불가</h5>
		        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	</div>
		      	<div class="modal-body row mb-3 justify-content-center">
		      		<div style="margin-bottom: 20px; font-weight: bold; color: red; font-size: large; text-align: center;">
		      			해당 분야는 지원이 마감되었습니다.
		      		</div>
					<div class="mb-2 row justify-content-center text-center">
						<div class="col-lg-12 mb-2">다른 분야를 지원해보세요!</div>
						
					</div>

		      	</div>
		      	<div class="modal-footer justify-content-center">
		        	<button type="button" class="btn-hover color-9">확인</button>
		      	</div>
		    </div>
		 </div>
	</div>
	
<!-- 지원하기 -->
	<!-- 컨트롤러 태워서 지원 사유랑 직무 넣어주고 리다이렉트  --> 
	<form action="projectapply.action" method="post">
		<div class="modal fade" id="apply" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">지원하기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body row mb-3 justify-content-center"
						style="font-weight: bold; font-size: large; text-align: center;">
						<div style="margin-bottom: 20px;">
							지원사유를 입력해주세요!
							<p style="font-size: xx-small; color: red;">※지원 사유는 지원즉시 전체
								공개 됩니다. 신중하게 작성해주세요!</p>
						</div>

						<div class="form-group">
							<textarea class="form-control" id="applyreason">
						</textarea>
							<div style="float: right; font-size: small;">(최대 500자)</div>
						</div>

					</div>
					<div class="modal-footer justify-content-center">
						<button type="reset" class="fullbtn">취소</button>
						<button type="submit" class="btn-hover color-9">제출</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
  
</html>