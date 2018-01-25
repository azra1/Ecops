package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style1.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--inner strt-->\n");
      out.write("        <div id=\"inner\">\n");
      out.write("            <!--header strt-->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header1.jsp", out, false);
      out.write("\n");
      out.write("            <!--header end-->\n");
      out.write("            <!--slider strt-->\n");
      out.write("            <div id=\"slider\"><img src=\"images/2.gif\"width=\"100%\" height=\"auto\"/></div>\n");
      out.write("            <!--slider end-->\n");
      out.write("            <!--midd strt-->\n");
      out.write("            <div id=\"mid\"><br />\n");
      out.write("                <center><u><h1><b><i>WELCOME</i></b></h1></u></center><br>\n");
      out.write("                <div id=\"content\">\n");
      out.write("                    <center><h4>Welcome to the ECOPS Web site. Our goal is to provide the citizens of DELHI with Online Crime Reporting.If you have comments or questions about this website, or about our community, or simply need more information and want to contact us, please click on the Contact Us button on any page within this site</h4></center></div>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("            </div>\n");
      out.write("            <!--mid end-->\n");
      out.write("            <!--footer strt-->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer1.jsp", out, false);
      out.write("\n");
      out.write("            <!--footer end-->\n");
      out.write("        </div>\n");
      out.write("     <!--inner end-->   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
