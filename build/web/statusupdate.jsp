<%-- 
    Document   : statusupdate
    Created on : Mar 21, 2016, 2:27:12 PM
    Author     : Azra
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String msg="";
            String id=request.getParameter("tid");
        
        try
           {
              /* Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
               Connection con=connect.Connectdb.getDb();
               String q="update complainttable set Status='Success' where id=?";
               PreparedStatement pstmt=con.prepareStatement(q);
               pstmt.setString(1,id);
               int x=pstmt.executeUpdate();
               if(x>0)
               { 
                    
               msg="Status Updated";
                request.setAttribute("message",msg);
                RequestDispatcher rd=request.getRequestDispatcher("showcomplaint.jsp");
                rd.include(request, response);
                  
               }
               else
               {
                    msg="Status not Updated";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("showcomplaint.jsp");
                rd.include(request, response);
                  
               }
              
           }
           catch(Exception e)
                   {
                       System.out.println(e);
                   }
        %>
    </body>
</html>
