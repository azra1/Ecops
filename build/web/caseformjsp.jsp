<%-- 
    Document   : caseformjsp
    Created on : Mar 22, 2016, 1:36:03 PM
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
           
           String tid=request.getParameter("tid");
            
            int id=Integer.parseInt(tid);
           String cfremark=request.getParameter("cf2");
           String cfcasestatus =request.getParameter("cf3");
           
           String msg="";
           try
           {
              /* Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
               Connection con=connect.Connectdb.getDb();
               String q="insert into caseformtable(id,Remark,Case_Status)values(?,?,?)";
               PreparedStatement pstmt=con.prepareStatement(q);
               pstmt.setString(1,tid);
               pstmt.setString(2,cfremark);
               pstmt.setString(3,cfcasestatus);
              
              int x=pstmt.executeUpdate();
               if(x>0)
               { 
                    
               msg="Status inserted";
                request.setAttribute("message",msg);
                RequestDispatcher rd=request.getRequestDispatcher("caseform.jsp");
                rd.include(request, response);
                  
               }
               else
               {
                    msg="Status not inserted";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("caseform.jsp");
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
