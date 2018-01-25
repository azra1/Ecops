<%-- 
    Document   : addcriminal
    Created on : Mar 10, 2016, 12:54:34 PM
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
                <div id="adminhead"><center><h1><u><i>ADD CRIMINALS</i></u></h1></center>
                    <a href="logout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
            <jsp:include page="adminsidemenu.jsp"></jsp:include>
            <div class="right">
                <div id="t2" align="center"><br>
                            <br><div id="addcrime1">
                                <fieldset><legend>Criminal Infomation</legend>
                            <form action="addcriminaljsp.jsp" height="auto" width="30%"method="post" enctype="multipart/form-data">
                                <% String msg=(String)request.getAttribute("message"); %>
                                <table height="auto" width="30%" cellspacing="20%" cellpadding="15%">
                                
                                
                                  <tr><td>Name:&nbsp;</td><td><input type="text" size="20%" name="crime2" required="required"></td></tr>
                                  <tr><td>Gender:&nbsp;</td><td><select name="crime3"><option value="FEMALE">Female</option>
                                              <option value="MALE">Male</option>
                                              <option value="OTHER">Other</option>
                                          </select></td></tr>
                                      <tr><td>Height:&nbsp;</td><td><input type="text" name="crime4" required="required"></td></tr>
                                        <tr><td>Weight:&nbsp;</td><td><input type="text" name="crime5" required="required"></td></tr>
                                                    <tr><td>PoliceStation:&nbsp;</td><td><select name="crime6">
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
                                            <tr><td>Crime Level:&nbsp;</td><td><select name="crime7">
                                                        <option value="Very High">Vey High</option>
                                                        <option value="High">High</option>
                                                        <option value="Medium">Medium</option>
                                                        <option value="Low">Low</option>
                                                    </select>
                                                </td></tr>
                                            <tr><td>Crime:&nbsp;</td><td><textarea  row="20" col="20"name="crime8" required="required"></textarea></td></tr>
                                                        <tr><td>Status:&nbsp;</td><td><select name="crime9">
                                                                    <option value="Arrested">Arrested</option>
                                                                    <option value="NotArrested">NotArrested</option>
                                                    </select></td></tr>
                                                        <tr><td>Criminal Photo:&nbsp;</td><td><input type="file" name="photo"/></td></tr>
                                                          <tr><td></td><td><input type="submit" value="Submit"></td></tr>
                                
                                </table></form>
                                <center>      <font color="red">
            <%
        if(msg!=null)
        out.println(msg);
            %></font></center></fieldset>
                            </div>
                           
                </div></div>
      
            </div>
                
        </div>
    </body>
</html>
