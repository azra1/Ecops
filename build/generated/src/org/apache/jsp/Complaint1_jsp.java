package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Complaint1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <script>\n");
      out.write("        function validateForm() \n");
      out.write("    {\n");
      out.write("    var x = document.forms[\"myForm2\"][\"comp2\"].value;\n");
      out.write("    var atpos = x.indexOf(\"@\");\n");
      out.write("    var dotpos = x.lastIndexOf(\".\");\n");
      out.write("    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) \n");
      out.write("    {\n");
      out.write("        alert(\"Not a valid e-mail address\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--inner strt-->\n");
      out.write("        <div id=\"inner\">\n");
      out.write("            <!--header strt-->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header1.jsp", out, false);
      out.write("\n");
      out.write("            <!--header end-->\n");
      out.write("            <!--middle strt-->\n");
      out.write("            <div id=\"servicemid\"><br>\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "servicesidemenu.jsp", out, false);
      out.write("\n");
      out.write("                <div class=\"servright\">\n");
      out.write("                    <center><i><h1><u>Complaint Form</u></h1></i></center>\n");
      out.write("                    <div id=\"servcontent\">  <fieldset><legend>File The Complaint</legend>  <form action=\"complaintjsp.jsp\" name=\"myForm2\" method=\"post\" onsubmit=\"return validateForm();\">\n");
      out.write("                           ");
 String msg=(String)request.getAttribute("message");
      out.write("\n");
      out.write("                            <center>\n");
      out.write("                        <table cellspacing=\"30%\" cellpadding=\"30%\">\n");
      out.write("                        \n");
      out.write("                        <tr><td>Email-Id:&nbsp;</td><td><input type=\"text\" name=\"comp2\" size=\"25\" required=\"required\"></td></tr>\n");
      out.write("                        <tr><td>PoliceStation:&nbsp;</td><td><select name=\"comp3\">\n");
      out.write("                                    <option value=\"Central Delhi DPS\">Central Delhi DPS</option>\n");
      out.write("                                     <option value=\"East Delhi DPS\">East Delhi DPS</option>\n");
      out.write("                                      <option value=\"New Delhi DPS\">New Delhi DPS</option>\n");
      out.write("                                       <option value=\"North Delhi DPS\">North Delhi DPS</option>\n");
      out.write("                                        <option value=\"North East Delhi DPS\">North East Delhi DPS</option>\n");
      out.write("                                         <option value=\"North West Delhi DPS\">North West Delhi DPS</option>\n");
      out.write("                                          <option value=\"South Delhi DPS\">South Delhi DPS</option>\n");
      out.write("                                           <option value=\"South East Delhi DPS\">South East Delhi DPS</option>\n");
      out.write("                                            <option value=\"South West Delhi DPS\">South West Delhi DPS</option>\n");
      out.write("                                            <option value=\"West Delhi DPS\">West Delhi DPS</option></select>\n");
      out.write("                            </td></tr>\n");
      out.write("                        <tr><td>Subject:&nbsp;</td><td><input type=\"text\" name=\"comp4\" size=\"25\" required=\"required\"></td></tr>\n");
      out.write("                        <tr><td>Description:&nbsp;</td><td><textarea row=\"30\" col=\"20\" name=\"comp5\" required=\"required\"></textarea></td></tr>\n");
      out.write("                        <tr><td></td><td><input type=\"submit\" value=\"Submit\"></td></tr>\n");
      out.write("                        \n");
      out.write("                           \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                        </table>\n");
      out.write("                            </center>\n");
      out.write("                        <center><font color=\"red\">\n");
      out.write("            ");

        if(msg!=null)
        out.println(msg);
        
      out.write("\n");
      out.write("        </font></center>\n");
      out.write("                            </form></fieldset><br><br>\n");
      out.write("                    \n");
      out.write("                    </div><br>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <!-- middle end-->\n");
      out.write("             <!--footer strt-->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer1.jsp", out, false);
      out.write("\n");
      out.write("            <!--footer end-->\n");
      out.write("        </div>\n");
      out.write("     <!--inner end--> \n");
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
