/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.82
 * Generated at: 2022-12-18 14:11:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class U_002dmain_002dcontents_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1670205780074L));
    _jspx_dependants.put("jar:file:/C:/FinalProject/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/POLLJJAK/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("jar:file:/C:/FinalProject/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/POLLJJAK/WEB-INF/lib/standard.jar!/META-INF/fmt.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("jar:file:/C:/FinalProject/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/POLLJJAK/WEB-INF/lib/standard.jar!/META-INF/fn.tld", Long.valueOf(1098678690000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- ======= Hero Section ======= -->\r\n");
      out.write("<section id=\"hero\" class=\"d-flex align-items-center\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center\">\r\n");
      out.write("                <h1 data-aos=\"fade-up\">쉽고 빠른 사이드 프로젝트 <br>플젝폴짝과 함께하세요!</h1>\r\n");
      out.write("                <h2 data-aos=\"fade-up\" data-aos-delay=\"400\">개발자가 되고싶어?</h2>\r\n");
      out.write("                <div data-aos=\"fade-up\" data-aos-delay=\"800\">\r\n");
      out.write("                    <a href=\"#about\" class=\"btn-get-started scrollto\">프로젝트 둘러보기</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-6 order-1 order-lg-2 hero-img\" data-aos=\"fade-left\" data-aos-delay=\"200\">\r\n");
      out.write("                <img src=\"assets/img/hero-img.png\" class=\"img-fluid animated\" alt=\"\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</section><!-- End Hero -->\r\n");
      out.write("\r\n");
      out.write("<!-- ======= Portfolio Section ======= -->\r\n");
      out.write("<section id=\"portfolio\" class=\"portfolio\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"section-title\" data-aos=\"fade-up\">\r\n");
      out.write("            <h2>완료프로젝트</h2>\r\n");
      out.write("            <p>이용자들의 완료 프로젝트를 둘러보세요!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("       <!--  <div class=\"row\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n");
      out.write("            <div class=\"col-lg-12 d-flex justify-content-center\">\r\n");
      out.write("                <ul id=\"portfolio-flters\">\r\n");
      out.write("                    <li data-filter=\"*\" class=\"filter-active\">All</li>\r\n");
      out.write("                    <li data-filter=\".filter-app\">App</li>\r\n");
      out.write("                    <li data-filter=\".filter-card\">Card</li>\r\n");
      out.write("                    <li data-filter=\".filter-web\">Web</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div> -->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row portfolio-container\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-app\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-1.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                            <!-- <a href=\"assets/img/portfolio/portfolio-1.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"App 1\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                       		<i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-web\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-2.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                            <!-- <a href=\"assets/img/portfolio/portfolio-2.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"Web 3\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-app\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-3.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                            <!-- <a href=\"assets/img/portfolio/portfolio-3.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"App 2\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-card\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-4.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                           <!--  <a href=\"assets/img/portfolio/portfolio-4.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"Card 2\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-web\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-5.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                       <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                            <!-- <a href=\"assets/img/portfolio/portfolio-5.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"Web 2\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-app\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-6.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                           <!--  <a href=\"assets/img/portfolio/portfolio-6.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"App 3\"><i class=\"bx bx-plus\"></i></a> -->\r\n");
      out.write("                            <!-- <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-card\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-7.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                            <!-- <a href=\"assets/img/portfolio/portfolio-7.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"Card 1\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-card\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-8.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                           <!--  <a href=\"assets/img/portfolio/portfolio-8.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"Card 3\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"col-lg-4 col-md-6 portfolio-item filter-web\">\r\n");
      out.write("                <div class=\"portfolio-wrap\">\r\n");
      out.write("                    <img src=\"assets/img/portfolio/portfolio-9.jpg\" class=\"img-fluid\" alt=\"\">\r\n");
      out.write("                    <div class=\"portfolio-info\">\r\n");
      out.write("                        <h4>프로젝트 명1</h4>\r\n");
      out.write("                        <p>개설자 : 4조</p>\r\n");
      out.write("                        <p>모집마감일 : xxxx-xx-xx</p>\r\n");
      out.write("                        <div class=\"portfolio-links\">\r\n");
      out.write("                            <!-- <a href=\"assets/img/portfolio/portfolio-9.jpg\" data-gallery=\"portfolioGallery\"\r\n");
      out.write("                                class=\"portfolio-lightbox\" title=\"Web 3\"><i class=\"bx bx-plus\"></i></a>\r\n");
      out.write("                            <a href=\"portfolio-details.html\" title=\"More Details\"><i class=\"bx bx-link\"></i></a> -->\r\n");
      out.write("                            <i class=\"bi bi-heart-fill\"></i>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</section><!-- End Portfolio Section -->");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
