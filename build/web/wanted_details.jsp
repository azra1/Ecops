<%-- 
    Document   : wanted_details
    Created on : Mar 14, 2016, 12:25:27 PM
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
            String tid=request.getParameter("cid");
            
            int id=Integer.parseInt(tid);
          /*  Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
          Connection con=connect.Connectdb.getDb();
             String q="select * from criminaltable where CriminalId=?";
            PreparedStatement  pst=con.prepareStatement(q);
            pst.setInt(1,id);
            ResultSet rs=pst.executeQuery();
            while(rs.next())
            {
                 %>
            <div id="detailmid">
                <center><b><i><h1>CRIMINAL INFORMATION</h1></i></b></center>
                <div id="detailboder"><br>
                    <div id="dp"><img src="profiles/<%=rs.getString(2)%>" height="100%" width="100%"></div>
                    <div id="dpdetail">
                        <table border="3%" align="center" cellspacing="50%" cellpadding="30%">
                            <tr><td>Name:&nbsp;</td><td><%=rs.getString(3)%></td></tr>
                            <tr><td>Gender:&nbsp;</td><td><%=rs.getString(4)%></td></tr>
                            <tr><td>Height:&nbsp;</td><td><%=rs.getString(5)%></td></tr>
                            <tr><td>Weight:&nbsp;</td><td><%=rs.getString(6)%></td></tr>
                            <tr><td>Police Station:&nbsp;</td><td><%=rs.getString(7)%></td></tr>
                            <tr><td>Crime Level:&nbsp;</td><td><%=rs.getString(8)%></td></tr>
                            <tr><td>Crime Description:&nbsp;</td><td><%=rs.getString(9)%></td></tr>
                            <tr><td>Status:&nbsp;</td><td><%=rs.getString(10)%></td></tr>
                        </table>
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
