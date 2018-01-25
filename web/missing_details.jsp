<%-- 
    Document   : missing_details
    Created on : Mar 17, 2016, 1:24:55 PM
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
            <!-- mid strt-->
        <%    try {
            String tid=request.getParameter("mid");
            
            int id=Integer.parseInt(tid);
          /*  Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
          Connection con=connect.Connectdb.getDb();
             String q="select * from missingpersontable where PersonId=?";
            PreparedStatement  pst=con.prepareStatement(q);
            pst.setInt(1,id);
            ResultSet rs=pst.executeQuery();
            while(rs.next())
            {
                 %>
            <div id="detailmid">
                <center><b><i><h1>MISSING PERSON INFORMATION</h1></i></b></center>
                <div id="detailboder"><br>
                    <div id="dp"><img src="missingprofile/<%=rs.getString(10)%>" height="100%" width="100%"></div>
                    <div id="dpdetail">
                        <table border="3%" align="center" cellspacing="50%" cellpadding="30%">
                            <tr><td>Missing-Date:&nbsp;</td><td><%=rs.getString(2)%></td></tr>
                            <tr><td>Name:&nbsp;</td><td><%=rs.getString(3)%></td></tr>
                            <tr><td>Father-Name:&nbsp;</td><td><%=rs.getString(4)%></td></tr>
                            <tr><td>Age:&nbsp;</td><td><%=rs.getString(5)%></td></tr>
                            <tr><td>Height:&nbsp;</td><td><%=rs.getString(6)%></td></tr>
                            <tr><td>Religion:&nbsp;</td><td><%=rs.getString(7)%></td></tr>
                            <tr><td>Gender:&nbsp;</td><td><%=rs.getString(8)%></td></tr>
                            <tr><td>State:&nbsp;</td><td><%=rs.getString(9)%></td></tr>
                            
                        </table><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;     <button ><a href="viewmissingperson1.jsp">BACK</a></button><br>
                            
                    </div>
                </div>
            </div>
            <!--mid end-->
             <% }
           
        }catch(Exception e){System.out.println(e);}
        %>
             <!--footer strt-->
            <jsp:include page="Footer1.jsp"></jsp:include>
            <!--footer end-->
        </div>
     <!--inner end-->   
    </body>
</html>
