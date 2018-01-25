<%-- 
    Document   : policelogin
    Created on : Mar 22, 2016, 10:57:18 AM
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
        <div id="policeinner">
            <div id="policetop"><img src="images/images_1.png">
                <div id="policehead"><center><h1><u><i>POLICE LOGIN PANEL</i></u></h1></center>
                   </div></div>
            <div id="policemid"><br><br>
                        <div id="policemid1">
                        <form action="policeloginjsp.jsp" method="post">
                            <% String msg=(String)request.getAttribute("message");%>
                            <center>
                        <table>
                            <tr><td>PS-Id:&nbsp;</td><td><input type="text" name="ps1" size="25"  required="required"/></td></tr>
                            <tr><td>Password:&nbsp;</td><td><input type="password" name="ps2" size="25" required="required"/></td></tr>
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
