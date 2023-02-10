package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("        <!-- Search Wrapper Area Start -->\n");
      out.write("        <div class=\"search-wrapper section-padding-100\">\n");
      out.write("            <div class=\"search-close\">\n");
      out.write("                <i class=\"fa fa-close\" aria-hidden=\"true\"></i>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <div class=\"search-content\">\n");
      out.write("                            <!--              <form action=\"search\" method=\"post\">\n");
      out.write("                                            <input\n");
      out.write("                                              type=\"text\"\n");
      out.write("                                              name=\"search\"\n");
      out.write("                                              id=\"search\"\n");
      out.write("                                              placeholder=\"Type your keyword...\"\n");
      out.write("                                            />\n");
      out.write("                                            <button type=\"submit\">\n");
      out.write("                                              <img src=\"img/core-img/search.png\" alt=\"\" />\n");
      out.write("                                            </button>\n");
      out.write("                                          </form>-->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--        <div class=\"search123\" style=\"display: block; margin-right: 0px !important;margin-left: auto \" >\n");
      out.write("                                    <input value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${txtS}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"search\" type=\"text\" class=\"button-search\" placeholder=\"Tìm kiếm tên sản phẩm\" style=\"border-bottom-left-radius: 5px;border-top-left-radius: 5px; color: black;\">\n");
      out.write("                                    <button type=\"submit\"  class =\" btn btn-outline-success my-2 my-sm-0\" style=\" height: auto; width: 100px; background-color: orange; color:white\" > Tìm kiếm </button>\n");
      out.write("                                </div>-->\n");
      out.write("        <form action=\"search\" method=\"post\">\n");
      out.write("            <div class=\"input-group rounded\">\n");
      out.write("                <input value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${txtS}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"search\" type=\"search\" class=\"form-control rounded\" placeholder=\"Search\" aria-label=\"Search\" aria-describedby=\"search-addon\" />\n");
      out.write("                <button type=\"submit\"  class =\" btn btn-outline-success my-2 my-sm-0\" style=\" height: auto; width: 100px; background-color: orange; color:white\" > Tìm kiếm </button>\n");
      out.write("                <!--  <span class=\"input-group-text border-0\" id=\"search-addon\">\n");
      out.write("                    <i class=\"fas fa-search\"></i>\n");
      out.write("                  </span>-->\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        <!-- Search Wrapper Area End -->\n");
      out.write("\n");
      out.write("        <!-- ##### Main Content Wrapper Start ##### -->\n");
      out.write("        <div class=\"main-content-wrapper d-flex clearfix\">\n");
      out.write("\n");
      out.write("            <!-- Mobile Nav (max width 767px)-->\n");
      out.write("            <div class=\"mobile-nav\">\n");
      out.write("                <!-- Navbar Brand -->\n");
      out.write("                <div class=\"amado-navbar-brand\">\n");
      out.write("                    <a ><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("                </div>\n");
      out.write("                <!-- Navbar Toggler -->\n");
      out.write("                <div class=\"amado-navbar-toggler\">\n");
      out.write("                    <span></span><span></span><span></span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Header Area Start -->\n");
      out.write("            <header class=\"header-area clearfix\">\n");
      out.write("                <!-- Close Icon -->\n");
      out.write("                <div class=\"nav-close\">\n");
      out.write("                    <i class=\"fa fa-close\" aria-hidden=\"true\"></i>\n");
      out.write("                </div>\n");
      out.write("                <!-- Logo -->\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <a ><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("                </div>\n");
      out.write("                <!-- Amado Nav -->\n");
      out.write("                <nav class=\"amado-nav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li ><a href=\"ProductControll\">Shop</a></li>\n");
      out.write("                        <li><a href=\"view/cart.jsp\">Cart</a></li>\n");
      out.write("                        <li><a href=\"view/checkout.jsp\">Checkout</a></li>\n");
      out.write("                        <li><a href=\"login\">Login</a></li>\n");
      out.write("                        <li><a href=\"register\">Register</a></li>\n");
      out.write("                        <li><a href=\"#\">Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("\n");
      out.write("                <!-- Cart Menu -->\n");
      out.write("                <!-- Cart Menu -->\n");
      out.write("                <div class=\"cart-fav-search mb-100\">\n");
      out.write("\n");
      out.write("                    <a href=\"#\" class=\"fav-nav\"\n");
      out.write("                       ><img src=\"img/core-img/favorites.png\" alt=\"\" /> Favourite</a\n");
      out.write("                    >\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- Social Button -->\n");
      out.write("                <div class=\"social-info d-flex justify-content-between\">\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-pinterest\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("            <!-- Header Area End -->\n");
      out.write("               \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
