<%-- 
    Document   : complaintdetailjsp
    Created on : Mar 9, 2016, 10:50:36 PM
    Author     : Azra
--%>

<%@page import="java.sql.*"%>
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
       String msg=(String)request.getAttribute("message"); 
       %>
        <div id="admininner">
            <div id="admintop"><img src="images/images_1.png">
                <div id="adminhead"><center><h1><u><i>VIEW COMPLAINT DETAIL</i></u></h1></center>
                    <a href="logout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
            <jsp:include page="adminsidemenu.jsp"></jsp:include>
            <div class="right">
                <div id="t2" align="center"><br>
                            <br>
                    
                            <% 
       
        try {
            String tid=request.getParameter("tid");
            
            int id=Integer.parseInt(tid);
          /*  Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
          Connection con=connect.Connectdb.getDb();
             String q="select * from complainttable where id=?";
            PreparedStatement  pst=con.prepareStatement("select * from complainttable where id =?");
            pst.setInt(1,id);
            ResultSet rs=pst.executeQuery();
            while(rs.next())
            {
                 %>
                <form action="statusupdate.jsp">
                    <table border="2%"cellspacing="10%" cellpadding="20%" width="50%">
                        <tr><th bgcolor="grey">FIELDS</th><th bgcolor="grey">DETAILS</th></tr>
                        <tr><td>Complaint Id: &nbsp;</td><td><%=rs.getInt(1)%></td></tr>
                        <tr><td>  Email: &nbsp;</td><td><%=rs.getString(2)%></td></tr>
                        <tr><td>PoliceStation: &nbsp;</td><td><%=rs.getString(3)%></td></tr>
                        <tr><td>Subject:&nbsp;</td><td><%=rs.getString(4)%></td></tr>
                        <tr><td>  Description:&nbsp; </td><td><%=rs.getString(5)%></td></tr>
                        <tr><td>   Complaint Date:&nbsp;</td><td><%=rs.getString(6)%></td></tr>
                        <tr><td><button><a href="showcomplaint.jsp">BACK</a></button></td><td><input type="submit" value="FORWARD"></td></tr>
                    </table>
                        <input type="hidden" value="<%=tid%>" name="tid">
                 </form>
                  
       <% }
           
        }catch(Exception e){System.out.println(e);}
        %>
        </table>
           <center><font color="red">
            <%
        if(msg!=null)
        out.println(msg);
        %>
            </div>
                
        </div>
    </body>
</html>
