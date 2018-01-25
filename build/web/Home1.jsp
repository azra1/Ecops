<%-- 
    Document   : Home1
    Created on : Mar 12, 2016, 12:59:02 PM
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
            <!--slider strt-->
            <div id="slider"><img src="images/2.gif"width="100%" height="auto"/></div>
            <!--slider end-->
            <!--midd strt-->
            <div id="mid"><br />
                <center><u><h1><b><i>WELCOME</i></b></h1></u></center><br>
                <div id="content">
                    <center><h4>Welcome to the ECOPS Web site. Our goal is to provide the citizens of DELHI with Online Crime Reporting.If you have comments or questions about this website, or about our community, or simply need more information and want to contact us, please click on the Contact Us button on any page within this site</h4></center></div>
                <br>
                <br>
            </div>
            <!--mid end-->
            <!--footer strt-->
            <jsp:include page="Footer1.jsp"></jsp:include>
            <!--footer end-->
        </div>
     <!--inner end-->   
    </body>
</html>
