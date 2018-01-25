package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         \n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style2.css\">\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"admininner\">\n");
      out.write("            <div id=\"admintop\"><img src=\"images/images_1.png\">\n");
      out.write("                <div id=\"adminhead\"><center><h1><u><i>ADMIN LOGIN PANEL</i></u></h1></center>\n");
      out.write("                   </div></div>\n");
      out.write("            <div id=\"adminmid\"><br><br>\n");
      out.write("                        <div id=\"adminmid1\">\n");
      out.write("                        <form action=\"adminloginjsp.jsp\" method=\"post\">\n");
      out.write("                            ");
 String msg=(String)request.getAttribute("message");
      out.write("\n");
      out.write("                            <center>\n");
      out.write("                        <table>\n");
      out.write("                            <tr><td>Admin-Id:&nbsp;</td><td><input type=\"text\" name=\"admin1\" size=\"25\"  required=\"required\"/></td></tr>\n");
      out.write("                            <tr><td>Password:&nbsp;</td><td><input type=\"password\" name=\"admin2\" size=\"25\" required=\"required\"/></td></tr>\n");
      out.write("                        <tr><td></td><td><input type=\"submit\" value=\"Submit\"></td></tr>\n");
      out.write("                        </table>\n");
      out.write("                         </center>\n");
      out.write("                        <center><font color=\"red\">\n");
      out.write("            ");

        if(msg!=null)
        out.println(msg);
        
      out.write("\n");
      out.write("        </font></center>\n");
      out.write("                        </form></div><br>\n");
      out.write("                    </div>\n");
      out.write("                </div>        \n");
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
