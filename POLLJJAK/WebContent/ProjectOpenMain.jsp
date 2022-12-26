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


<body>

   <a href="#"
      class="back-to-top d-flex align-items-center justify-content-center">
      <i class="bi bi-arrow-up-short"></i>
   </a>

   <!-- Vendor JS Files -->
   <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
   <script src="assets/vendor/aos/aos.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
   <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
   <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

   <!-- Template Main JS File -->
   <script src="assets/js/main.js"></script>


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
   
   

      <!-- 빈칸 여백 -->
      <section class="pb-2"></section><!-- <div class="mt-5"></div> -->

      <section class="projectHome-list-now pb-2">
         <div class="container">
            <div class="row">
                  
              <form action="">
				<div>
	               <h5 class="fw-bolder">
	                  개설 진행 중
	               </h5>
					<input type="button" class="btn btn-primary" value="새로운 프로젝트 개설" 
					onclick="location.href='<%=cp %>/ProjectOpen.jsp';" style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
				</div>
               </form>
               <hr />
               
               <div class="container-lg mb-3" onclick="location.href='#';" style="cursor: pointer;">
                  <div class="card">
                     <div class="card-body col-xs-12 col-lg-12">
                        <div class="h5 card-title fw-bolder">프로젝트 제목1[모집중]</div>
                        <div class="mb-2">2022-12-24 ~ 2022-12-25</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      
      
      <section class="projectHome-list-complete">
         <div class="container">
            <div class="row">

               <h5 class="h5 container-lg mb-3 fw-bolder">
                  지난 모집 내역
               </h5>
                  
               <div class="container-lg mb-3">
                  <div class="card">
                     <div class="card-body col-xs-12 col-lg-12">
                        <input type="button" class="btn btn-primary" value="리스트에서 삭제" 
						onclick="CheckAddProduct()" style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
                        <div class="h5 card-title fw-bolder">프로젝트 제목1[모집 실패]</div>
                        <div class="card-date mb-2">2022-12-24 ~ 2022-12-25</div>
                     </div>
                  </div>
               </div>
               
               <div class="container-lg mb-3">
                  <div class="card">
                     <div class="card-body col-xs-12 col-lg-12">
                        <input type="button" class="btn btn-primary" value="리스트에서 삭제" 
						onclick="CheckAddProduct()" style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
                        <div class="h5 card-title fw-bolder">프로젝트 제목1[모집 삭제]</div>
                        <div class="card-date mb-2">2022-12-24 ~ 2022-12-25</div>
                     </div>
                  </div>
               </div>
               
               
               
               <div class="container-lg mb-3">
                  <div class="card">
                     <div class="card-body col-xs-12 col-lg-12">
                        <input type="button" class="btn btn-primary" value="리스트에서 삭제" 
						onclick="CheckAddProduct()" style="background-color: #3498db; border-color: #3498db; float: right; margin: 0 10px 10px 0;" >
                        <div class="h5 card-title fw-bolder">프로젝트 제목1[모집 삭제]</div>
                        <div class="card-date mb-2">2022-12-24 ~ 2022-12-25</div>
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

<style>

.projectHome-list-now .card {
   background: #fff;
   transition: 0.3s;
   transition: ease-in-out 0.3s;
   border-radius: 5px;
}

.projectHome-list-now .card:hover {
  background: #60A7F7;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
  color: #fff;
}
 
.projectHome-list-complete .card {
   background: #D8D8D8;
   transition: 0.3s;
   transition: ease-in-out 0.4s;
   border-radius: 5px;
   color: #28313D;
}

.projectHome-list-complete .card:hover {
   background: #8E8E8E;
     box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
}
</style>



</html>