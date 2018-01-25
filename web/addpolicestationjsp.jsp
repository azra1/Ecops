<%-- 
    Document   : addpolicestationjsp
    Created on : Mar 21, 2016, 1:35:06 PM
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
           
           
           String psname=request.getParameter("ps2");
           String psaddress =request.getParameter("ps3");
           String psphone=request.getParameter("ps4");
           String pshead=request.getParameter("ps5");
            String pspwd=request.getParameter("ps6");
           String msg="";
           try
           {
              /* Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
               Connection con=connect.Connectdb.getDb();
               String q="insert into policestationtable(PS_Name,PS_Address,Phone,PS_Head,Pwd)values(?,?,?,?,?)";
               PreparedStatement pstmt=con.prepareStatement(q);
               pstmt.setString(1,psname);
               pstmt.setString(2,psaddress);
               pstmt.setString(3,psphone);
               pstmt.setString(4,pshead);
               pstmt.setString(5,pspwd);
               int x=pstmt.executeUpdate();
               if(x>0)
               { 
                    
               msg="Record inserted";
                request.setAttribute("message",msg);
                RequestDispatcher rd=request.getRequestDispatcher("addpolicestation.jsp");
                rd.include(request, response);
                  
               }
               else
               {
                    msg="Record not inserted";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("addpolicestation.jsp");
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
