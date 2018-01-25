<%-- 
    Document   : Userlogin
    Created on : Mar 7, 2016, 10:28:14 PM
    Author     : Azra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
         <div id="outer">
            <div id="inner">
                <!--header begin-->
                <jsp:include page="header.jsp"></jsp:include>
               <!--header end-->
                <!--middle begin-->
                <div id="userlogmid">
                    <div id="userlogform"><br>
                        <center> <h1><i><b><u>Login Form</u></b></i></h1></center><br />
                        <form>
                            <center>
                        <table>
                        <tr><td>User Name</td><td><input type="text" name="user1" size="25" required="required"></td></tr>
                        <tr><td>Password</td><td><input type="password" name="user2" size="25" required="required"></td></tr>
                        <tr><td></td><td><input type="submit" value="Submit"></td></tr>
                        
                           
                            
                            
                        </table>
                            </center></form>
                    </div>
                    
                </div>
                <!--middle end-->
                <!--footer begin-->
                <jsp:include page="footer.jsp"></jsp:include>
                <!--footer end-->
            </div>
            
        </div>
        
    </body>
</html>
