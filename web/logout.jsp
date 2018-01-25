<%-- 
    Document   : logout
    Created on : Mar 8, 2016, 3:43:59 PM
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
       
          response.sendRedirect("/Ecopes/Adminlogin.jsp");
              
            
            %>
    </body>
</html>
