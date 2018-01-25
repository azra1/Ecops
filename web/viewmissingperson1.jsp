<%-- 
    Document   : viewmissingperson1
    Created on : Mar 17, 2016, 1:15:51 PM
    Author     : Azra
--%>

<%@page import="java.sql.*"%>
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
<%            try 
{ 
 
    Connection con=connect.Connectdb.getDb();
    PreparedStatement pst=con.prepareStatement("select * from missingpersontable");
      ResultSet rs=pst.executeQuery(); 


%> 
<div id="misspersonmid"><br>
                <div id="missmid">
                    <%
                    while(rs.next()) 
{ %>
<div id="mw1"><a href="missing_details.jsp?mid=<%=rs.getInt(1)%>"><img src="missingprofile/<%=rs.getString(10)%>"  height="100%" width="100%"></a></div>
                   <%}%>
                </div>
                
            </div>
            <% 

} 
catch(Exception e) 
{ 
System.out.println(e); 
} 
%> 
            <!--middle end-->
             <!--footer strt-->
            <jsp:include page="Footer1.jsp"></jsp:include>
            <!--footer end-->
        </div>
     <!--inner end--> 
    </body>
</html>
