<%-- 
    Document   : Complaint1
    Created on : Mar 15, 2016, 3:39:13 PM
    Author     : Azra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style1.css">
        <script>
        function validateForm() 
    {
    var x = document.forms["myForm2"]["comp2"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
    {
        alert("Not a valid e-mail address");
        return false;
    }
}
</script>
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
                    <center><i><h1><u>Complaint Form</u></h1></i></center>
                    <div id="servcontent">  <fieldset><legend>File The Complaint</legend>  <form action="complaintjsp.jsp" name="myForm2" method="post" onsubmit="return validateForm();">
                           <% String msg=(String)request.getAttribute("message");%>
                            <center>
                        <table cellspacing="30%" cellpadding="30%">
                        
                        <tr><td>Email-Id:&nbsp;</td><td><input type="text" name="comp2" size="25" required="required"></td></tr>
                        <tr><td>PoliceStation:&nbsp;</td><td><select name="comp3">
                                    <option value="Central Delhi DPS">Central Delhi DPS</option>
                                     <option value="East Delhi DPS">East Delhi DPS</option>
                                      <option value="New Delhi DPS">New Delhi DPS</option>
                                       <option value="North Delhi DPS">North Delhi DPS</option>
                                        <option value="North East Delhi DPS">North East Delhi DPS</option>
                                         <option value="North West Delhi DPS">North West Delhi DPS</option>
                                          <option value="South Delhi DPS">South Delhi DPS</option>
                                           <option value="South East Delhi DPS">South East Delhi DPS</option>
                                            <option value="South West Delhi DPS">South West Delhi DPS</option>
                                            <option value="West Delhi DPS">West Delhi DPS</option></select>
                            </td></tr>
                        <tr><td>Subject:&nbsp;</td><td><input type="text" name="comp4" size="25" required="required"></td></tr>
                        <tr><td>Description:&nbsp;</td><td><textarea row="30" col="20" name="comp5" required="required"></textarea></td></tr>
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
