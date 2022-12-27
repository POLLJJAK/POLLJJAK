<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<body>

<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
<i class="bi bi-arrow-up-short"></i>
</a>

<c:import url="./common/Nav.jsp" />

<!-- NavBar active 속성 변경 -->
<script type="text/javascript">
	document.getElementById("myProjectHome").className = "nav-link scrollto active";
	document.getElementById("projectOpen").className = "nav-link scrollto";
	document.getElementById("projectMake").className = "nav-link scrollto";
	document.getElementById("Rounge").className = "nav-link scrollto";
	document.getElementById("viewCompany").className = "nav-link scrollto";
</script>


<main id="main">
	<section class="projectHome-list-now pb-2" data-aos="fade-up">

		<!-- title -->
		<div class="pt-5">
			<div class="section-title pt-5">
				<h6>프로젝트 개설</h6>
				<p>진행 중인 프로젝트와 지난 모집 내역을 확인 해보세요.</p>
			</div>
		</div> <!-- end title -->

		<div class="container">
			<div class="row">
			
				<form action="">
					<div>
					<h5 class="container-lg mb-3 fw-bolder">
						개설 진행 중
						<input type="button" class="btn btn-primary" value="새로운 프로젝트 개설" 
						onclick="location.href='<%=cp %>/ProjectOpen.jsp';" 
						style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
					</h5>
					</div>
				</form>
				<hr />
				
				<div class="container-lg mb-3" onclick="location.href='<%=cp %>/ProjectDetail.jsp';" style="cursor: pointer;">
					<div class="pj-box">
						<div class="pj-box-body p-3 col-xs-12 col-lg-12">
							<div class="h5 fw-bolder">프로젝트 제목1[모집중]</div>
							<div class="mb-2">2022-12-24 ~ 2022-12-25</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	 
	<section class="projectHome-list-complete" data-aos="fade-up">
		<div class="container">
			<div class="row">
			
				<h5 class="h5 container-lg mb-3 fw-bolder">
				지난 모집 내역
				</h5>
			
				<div class="container-lg mb-3">
					<div class="pj-box">
						<div class="pj-box-body p-3 col-xs-12 col-lg-12">
							<input type="button" class="btn btn-primary" value="리스트에서 삭제" onclick="CheckAddProduct()" 
							style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
							<div class="h5 fw-bolder">프로젝트 제목1[모집 실패]</div>
							<div class="mb-2">2022-12-24 ~ 2022-12-25</div>
						</div>
					</div>
				</div>
			
				<div class="container-lg mb-3">
					<div class="pj-box">
						<div class="pj-box-body p-3 col-xs-12 col-lg-12">
							<input type="button" class="btn btn-primary" value="리스트에서 삭제" onclick="CheckAddProduct()" 
							style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
							<div class="h5 fw-bolder">프로젝트 제목1[모집 삭제]</div>
							<div class="mb-2">2022-12-24 ~ 2022-12-25</div>
						</div>
					</div>
				</div>
			         
				<div class="container-lg mb-3">
					<div class="pj-box">
						<div class="pj-box-body p-3 col-xs-12 col-lg-12">
							<input type="button" class="btn btn-primary" value="리스트에서 삭제" onclick="CheckAddProduct()" 
							style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
							<div class="h5 fw-bolder">프로젝트 제목1[모집 삭제]</div>
							<div class="mb-2">2022-12-24 ~ 2022-12-25</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</main>

<!-- footer import (js imported)-->
<c:import url="./common/Footer.jsp" />

</body>
</html>