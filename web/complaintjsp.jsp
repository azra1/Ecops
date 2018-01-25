<%-- 
    Document   : complaintjsp
    Created on : Mar 8, 2016, 6:42:29 PM
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

           
           
           String email=request.getParameter("comp2");
           String psname =request.getParameter("comp3");
           String subject=request.getParameter("comp4");
           String description=request.getParameter("comp5");
           String msg="";
           try
           {
              /* Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
               Connection con=connect.Connectdb.getDb();
               String q="insert into complainttable(Email,PsName,Sub,Descrptn)values(?,?,?,?)";
               PreparedStatement pstmt=con.prepareStatement(q);
               pstmt.setString(1,email);
               pstmt.setString(2,psname);
               pstmt.setString(3,subject);
               pstmt.setString(4,description);
               
               int x=pstmt.executeUpdate();
               if(x>0)
               { 
                    
               msg="Complaint inserted";
                request.setAttribute("message",msg);
                RequestDispatcher rd=request.getRequestDispatcher("Complaint1.jsp");
                rd.include(request, response);
                  
               }
               else
               {
                    msg="Complaint not inserted";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("Complaint1.jsp");
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
