<%-- 
    Document   : Registration
    Created on : Mar 7, 2016, 9:59:22 PM
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
                <div id="regmid">
                    <div id="regform"><br>
                        <center> <h1><i><b><u>Registration Form</u></b></i></h1></center>
                        <form>
                            <center>
                        <table>
                            
                        <tr><td>User Name</td><td><input type="text" name="reg1" size="25" required="required"></td></tr>
                        <tr><td>Password</td><td><input type="password" name="reg2" size="25" required="required"></td></tr>
                        
                        <tr><td>Voter-Id</td><td><input type="text" name="reg3" size="25" required="required"></td></tr>
                        <tr><td>Name</td><td><input type="text" name="reg4" size="25" required="required"></td></tr>
                        <tr><td>Date of Birth(dd/mm/yy)</td><td><input type="text" name="reg5" size="25" required="required"></td></tr>
                        <tr><td>Email</td><td><input type="text" name="reg6" size="25" required="required"></td></tr>
                        <tr><td>Address</td><td><textarea row="20" col="30" name="reg5"></textarea></td></tr>
                        <tr><td>City</td><td><input type="text" name="reg7" size="25" required="required"></td></tr>
                        <tr><td>Pincode</td><td><input type="text" name="reg8" size="25" required="required"></td></tr>
                        <tr><td>Contact No.</td><td><input type="text" name="reg9" size="25" required="required"></td></tr>
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
