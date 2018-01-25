<%-- 
    Document   : Missingperson
    Created on : Mar 16, 2016, 1:21:16 PM
    Author     : Azra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style1.css">
    </head>
    <body>
        <!--inner strt-->
        <div id="inner">
            <!--header strt-->
            <jsp:include page="Header1.jsp"></jsp:include>
            <!--header end-->
            <!--middle strt-->
            <div id="servicemid"><br>
                <jsp:include page="servicesidemenu.jsp"></jsp:include>
                <div class="servright">
                    <center><i><h1><u>Missing Person Form</u></h1></i></center>
                    <div id="servcontent"><br> 
                       <fieldset><legend>File Missing Person Detail</legend>  <form action="missingpersonjsp.jsp" method="post" enctype="multipart/form-data">
                           <% String msg=(String)request.getAttribute("message");%>
                            <center>
                        <table cellspacing="30%" cellpadding="30%">
                            <tr><td>Missing-Date:</td><td><input type="text" name="miss1" size="25" required="required" placeholder="Format--dd/mm/yyyy"></td></tr>
                        <tr><td>Name:&nbsp;</td><td><input type="text" name="miss2" size="25" required="required"></td></tr>
                        <tr><td>Father-Name:&nbsp;</td><td><input type="text" name="miss3" size="25" required="required"></td></tr>
               <tr><td>Age:&nbsp;</td><td><input type="text" name="miss4" size="25" required="required"></td></tr>
               <tr><td>Height:&nbsp;</td><td><input type="text" name="miss5" size="25" required="required"></td></tr>
               <tr><td>Religion:&nbsp;</td><td><select name="miss6" required="required">
                           <option value="Christin">Christian</option>
                           <option value="Hindu">Hindu</option>
                           <option value="Muslim">Muslim</option>
                           <option value="Sikh">Sikh</option>
                           <option value="Other">Other</option>
                       </select>
                   </td></tr>
               <tr><td>Gender:&nbsp;</td><td><select name="miss7" required="required">
                           <option value="Female">Female</option>
                           <option value="Male">Male</option>
                           <option value="other">Other</option>
                       </select></td></tr>
               <tr><td>State:&nbsp;</td><td><select name="miss8"  required="required"><option value="All Eight states"></option><option value="Chandigarh">Chandigarh</option>
                       <option value="Delhi">Delhi</option><option value="Haryana">Haryana</option><option value="Himachal Pardesh">Himachal Pardesh</option><option value="Punjab">Punjab</option><option value="Rajasthan">Rajasthan</option><option value="Uttar Pardesh">Uttar Pardesh</option><option value="Uttrakhand">Uttrakhand</option>
                       </select></td></tr>
                <tr><td>Upload Photo:&nbsp;</td><td><input type="file" name="photo"/></td></tr>
                                                          <tr><td></td><td><input type="submit" value="Submit"></td></tr>
                          </table>
                            </center>
                        <center><font color="red">
            <%
        if(msg!=null)
        out.println(msg);
        %>
        </font></center>
                            </form></fieldset><br><br>
                                                          
                                                          
                </div><br>
                         
                </div>
            </div>
            <!-- middle end-->
             <!--footer strt-->
            <jsp:include page="Footer1.jsp"></jsp:include>
            <!--footer end-->
        </div>
     <!--inner end--> 
    </body>
</html>
