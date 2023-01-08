<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="row d-flex align-items-center">
        <div class="col-lg-6 text-lg-left text-center">

          <div class="credits">

          </div>
        </div>
        <div class="col-lg-3">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="Inner-page.jsp" class="scrollto">고객센터</a>
            <a href="Inner-page.jsp" class="scrollto">이용안내</a>
            <a href="TermsOfService.jsp">서비스약관</a>
          </nav>
        </div>
      </div>
    </div>
  </footer>
  <!-- End Footer -->
  
  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="<%=cp %>/resources/common/js/calendar.js"></script>
  
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>