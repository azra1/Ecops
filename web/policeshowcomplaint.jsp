<%-- 
    Document   : policeshowcomplaint
    Created on : Mar 22, 2016, 11:16:54 AM
    Author     : Azra
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style3.css">
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
            request.getRequestDispatcher("policelogin.jsp").forward(request, response);  
        }  
       String msg=(String)request.getAttribute("message"); 
       %>
        <div id="policeinner">
            <div id="policetop"><img src="images/images_1.png">
                <div id="policehead"><center><h1><u><i>VIEW COMPLAINT</i></u></h1></center>
                     <a href="policelogout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
             <jsp:include page="policesidemenu.jsp"></jsp:include>
            <div class="right">
                <div id="t2" align="center"><br>
                            <br><table cellspacing="2%" cellpadding="3%" align="center" border="2%">
                                <tr><th bgcolor="grey"color="black">Id</th><th bgcolor="grey" color="white">Email</th><th bgcolor="grey" color="white">Police Station Name</th><th bgcolor="grey" color="white">Subject</th><th bgcolor="grey" color="white">Date</th><th bgcolor="grey" color="white">Details</th></tr>
                    
                            <% 
       
        try {
           
           /* Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
            Connection con=connect.Connectdb.getDb();
            PreparedStatement  pst=con.prepareStatement("select * from complainttable where Status='Success'");
            ResultSet rs=pst.executeQuery("select * from complainttable where Status='Success'");
            while(rs.next())
            {
                 %>
                <tr color="black">
                    
                    <td><%=rs.getInt(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                   
                    <td><%=rs.getString(6)%></td>
                    
                    <td><button><a href="policecomplaintdetailjsp.jsp?tid=<%=rs.getInt(1)%>">Details</a></button></td>
                </tr>
                  
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
