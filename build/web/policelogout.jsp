<%-- 
    Document   : policelogout
    Created on : Mar 22, 2016, 11:31:34 AM
    Author     : Azra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            session.removeAttribute("nm");
             session.invalidate();  
       
          response.sendRedirect("/Ecopes/policelogin.jsp");
              
            
            %>
    </body>
</html>
