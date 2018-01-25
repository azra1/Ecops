<%-- 
    Document   : Adminlogin
    Created on : July 7, 2016, 10:38:26 PM
    Author     : Azra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         
        <link rel="stylesheet" type="text/css" href="style2.css">
       
    </head>
    <body>
        <div id="admininner">
            <div id="admintop"><img src="images/images_1.png">
                <div id="adminhead"><center><h1><u><i>ADMIN LOGIN PANEL</i></u></h1></center>
                   </div></div>
            <div id="adminmid"><br><br>
                        <div id="adminmid1">
                        <form action="adminloginjsp.jsp" method="post">
                            <% String msg=(String)request.getAttribute("message");%>
                            <center>
                        <table>
                            <tr><td>Admin-Id:&nbsp;</td><td><input type="text" name="admin1" size="25"  required="required"/></td></tr>
                            <tr><td>Password:&nbsp;</td><td><input type="password" name="admin2" size="25" required="required"/></td></tr>
                        <tr><td></td><td><input type="submit" value="Submit"></td></tr>
                        </table>
                         </center>
                        <center><font color="red">
            <%
        if(msg!=null)
        out.println(msg);
        %>
        </font></center>
                        </form></div><br>
                    </div>
                </div>        
    </body>
</html>
