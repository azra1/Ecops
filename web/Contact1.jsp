<%-- 
    Document   : Contact1
    Created on : Mar 12, 2016, 4:34:23 PM
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
    var x = document.forms["myForm"]["t2"].value;
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
            <div id="contactmid"><br><center><b><i><h1>CONTACT INFORMATION</h1></i></b></center>
                <div id="contactleft">
                    <br />
                       <center>    <h4><i><u>FOR ANY QUERIES AND FEEDBACK FILL THE BELOW FORM</u></i></h4></center>
                        <center> <h1><i><b><u>FORM</u></b></i></h1></center><br />
                             <form name="myForm" action="contactinsert.jsp" method="post"onsubmit="return validateForm();">
                                  <% String msg=(String)request.getAttribute("message");%>
                                 <center>
                                    <table cellspacing="20%" cellpadding="15%">
                                     <tr><td>NAME</td><td><input type="text" name="t1" size="25" required="required"/></td></tr>
                                     <tr><td> EMAIL</td><td><input type="text" name="t2" size="25" required="required"/> </td></tr>
                                <tr><td> SUBJECT</td><td><input type="text" name="t3" size="25"required="required"/> </td></tr>
                                <tr><td> MESSAGE</td><td><textarea rows="10" cols="30" name="t4" required="required"/></textarea></td></tr>
                                <tr> <td> </td><td><input type="submit" value="Submit"/></td></tr>
                                    </table>
                                 </center>
                                 <center><font color="red">
                                      <%
                                        if(msg!=null)
                                        out.println(msg);
                                      %>
                                  </font></center>
                             </form>
                 </div>
                                  <div id="contactright">
                                      <center> <h1><i><b>CONTACT</b></i></h1></center>
                        <hr>
                        <center><h4><i>Availability</i></h4>
                        <div>Timing :24 Hours</div>
                        <hr>
                        <h4><i>For Emergency</i></h4>
                        <div>call: 100</div>
                        <hr>
                        <h4><i>For Enquirey</i></h4>
                        <div>call: 101</div>
                        <hr>
                        <h4><i>Address</i></h4>
                        <div>Director general of police<br> IT&T wing Police HeadQuater<br>Police line,kingway camp</div>
                        <hr>
                        <h4><i>Contact-info</i></h4>
                        <div>Central control room: (011)-2765438<br>Email: police@help.gov.in</div>
                        <br>
                        </center>
                                  </div><br/><br/>
                
            </div>
            
                    <br/><br/>
            
            
            <!--middle end-->
            <!--footer strt-->
            <jsp:include page="Footer1.jsp"></jsp:include>
            <!--footer end-->
        </div>
     <!--inner end--> 
    </body>
</html>
