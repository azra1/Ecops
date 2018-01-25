<%-- 
    Document   : Services1
    Created on : Mar 15, 2016, 10:12:11 AM
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
                    <center><i><h1><u>SERVICES</u></h1></i></center>
                    <div id="servcontent"><p>The Officer and Men of Police are commited to providing professional law enforcement service,protecting the right of individual,preventing crime.</p>
                        <p>We will serve the community with integrity,diversity and quality and to provide proactive interaction with community to enhanced the feeling of safety and security in the state.</p>
                        <p> Ecops,in the affiliation with our community,is committed to serve the needs of the citizens of india by providing efficient and effective level of services.</p>
                        <p>We shall strive to develop a comprehensive strategy to resolve public safety issues and enhance quality of life within our community.</p>
                        
                        <br> </div><br>
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
