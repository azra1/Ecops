<%-- 
    Document   : Helpline1
    Created on : Mar 12, 2016, 4:13:05 PM
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
            <!-- middle strt-->
            <div id="helpmid"><br>
                <center>   <h2><u><i>HELPLINE NUMBERS</i></u></h2></center>
                <div id="helpcontent">
                    <br>
                        <table border="3%" cellspacing="10%" cellpadding="20%" align="center">
                            <tr>
                                <th>Category</th>
                                <th>Helpline Number</th>
                                
                             </tr>
                             <tr><td>Children</td><td>1098</td></tr>
                             <tr><td>Control Room</td><td>100</td></tr>
                             <tr><td>Women</td><td>1091 & 011-2411234</td></tr>
                             <tr><td>Senior Citizen</td><td>1091 & 1291</td></tr>
                             <tr><td>Inform About Crime</td><td>1090</td></tr>
                             <tr><td>Terrorism<br>(identity kept secret)</td><td>1090</td></tr>
                             <tr><td>Traffic</td><td>011-2301010</td></tr>
                             <tr><td>Anti Corruption Cell</td><td>011-2389001,011-2389002</td></tr>
                             <tr><td>Anti Threat By Recovery Agent</td><td>26184455</td></tr>
                             <tr><td>Legal Cell</td><td>011-23490255 , ext-4258</td></tr>
                             <tr><td>Anti-Obsense Call Cell</td><td>1096,27894455</td></tr>
                             
                        </table><br>
                </div>
                <br><br>
            </div>
            
            
            
            <!--middle end-->
             <!--footer strt-->
            <jsp:include page="Footer1.jsp"></jsp:include>
            <!--footer end-->
        </div>
     <!--inner end--> 
    </body>
</html>
