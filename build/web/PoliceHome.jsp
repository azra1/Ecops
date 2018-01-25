<%-- 
    Document   : PoliceHome
    Created on : Mar 22, 2016, 11:10:11 AM
    Author     : Azra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style3.css">
    </head>
    <body>
       <%
        String n=(String)session.getAttribute("nm");
         if(n!=null){  
        
                 response.addHeader("Cache-Control", "no-chache, no-store, must-revalidate,"
         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");

           }
           else{  
            out.print("Please login first");  
            request.getRequestDispatcher("policelogin.jsp").forward(request, response);  
        }  
        %>
        <div id="policeinner">
            <div id="policetop"><img src="images/images_1.png">
                <div id="policehead"><center><h1><u><i>POLICE PROFILE</i></u></h1></center>
                    <a href="policelogout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
            <jsp:include page="policesidemenu.jsp"></jsp:include>
            <div class="right">
                <center>  <h1> <i> <% out.println("WELCOME, &nbsp;"+n); %></i></h1></center>
            </div>
                
        </div>
    </body>
</html>
