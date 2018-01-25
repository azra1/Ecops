<%-- 
    Document   : contactinsert
    Created on : Mar 9, 2016, 1:52:49 PM
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
           
           
           String conname=request.getParameter("t1");
           String conemail =request.getParameter("t2");
           String consubject=request.getParameter("t3");
           String conmessage=request.getParameter("t4");
           String msg="";
           try
           {
              /* Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
               Connection con=connect.Connectdb.getDb();
               String q="insert into contacttable(Name,Email,Subject,Message)values(?,?,?,?)";
               PreparedStatement pstmt=con.prepareStatement(q);
               pstmt.setString(1,conname);
               pstmt.setString(2,conemail);
               pstmt.setString(3,consubject);
               pstmt.setString(4,conmessage);
               int x=pstmt.executeUpdate();
               if(x>0)
               { 
                    
               msg="Record inserted";
                request.setAttribute("message",msg);
                RequestDispatcher rd=request.getRequestDispatcher("Contact1.jsp");
                rd.include(request, response);
                  
               }
               else
               {
                    msg="Record not inserted";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("Contact1.jsp");
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
