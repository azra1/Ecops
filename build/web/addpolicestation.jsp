<%-- 
    Document   : addpolicestation
    Created on : Mar 21, 2016, 1:17:49 PM
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
         <%
        String n=(String)session.getAttribute("nm");
         if(n!=null){  
        
                 response.addHeader("Cache-Control", "no-chache, no-store, must-revalidate,"
         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");

           }
           else{  
            out.print("Please login first");  
            request.getRequestDispatcher("Adminlogin.jsp").forward(request, response);  
        }  
        %>
        <div id="admininner">
            <div id="admintop"><img src="images/images_1.png">
                <div id="adminhead"><center><h1><u><i>REGISTER POLICE STATION</i></u></h1></center>
                    <a href="logout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
            <jsp:include page="adminsidemenu.jsp"></jsp:include>
            <div class="right">
                 <div id="t2" align="center"><br>
                            <br><div id="addcrime1">
                                <fieldset><legend>Station Infomation</legend>
                            <form action="addpolicestationjsp.jsp" height="auto" width="30%"method="post">
                                <% String msg=(String)request.getAttribute("message"); %>
                                <table height="auto" width="30%" cellspacing="20%" cellpadding="15%">
                                
                                
                                  <tr><td>PoliceStaion-Name:&nbsp;</td><td><select name="ps2">
                                             <option value="Central Delhi DPS">Central Delhi DPS</option>
                                     <option value="East Delhi DPS">East Delhi DPS</option>
                                      <option value="New Delhi DPS">New Delhi DPS</option>
                                       <option value="North Delhi DPS">North Delhi DPS</option>
                                        <option value="North East Delhi DPS">North East Delhi DPS</option>
                                         <option value="North West Delhi DPS">North West Delhi DPS</option>
                                          <option value="South Delhi DPS">South Delhi DPS</option>
                                           <option value="South East Delhi DPS">South East Delhi DPS</option>
                                            <option value="South West Delhi DPS">South West Delhi DPS</option>
                                            <option value="West Delhi DPS">West Delhi DPS</option>
                                                </select></td></tr>
                                  <tr><td>Address:&nbsp;</td><td><textarea row="30" col="30" name="ps3">
                                              </textarea></td></tr>
                                      <tr><td>Phone:&nbsp;</td><td><input type="text" name="ps4" required="required"></td></tr>
                                        <tr><td>PoliceStation-Head:&nbsp;</td><td><input type="text" name="ps5" required="required"></td></tr>
                                        <tr><td>Password:&nbsp;</td><td><input type="password" name="ps6" required="required">
                                             </td></tr>
                                           
                                                          <tr><td></td><td><input type="submit" value="Submit"></td></tr>
                                
                                </table></form>
                                 <center><font color="red">
            <%
        if(msg!=null)
        out.println(msg);
            %></font></center>
                                </fieldset>
                            </div>
                           
                </div></div>
                               
                 </div>
                
        </div>
    </body>
</html>
