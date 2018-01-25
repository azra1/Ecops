<%-- 
    Document   : deleteresolvedcase
    Created on : Mar 28, 2016, 1:52:48 PM
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
       String n=(String)session.getAttribute("nm");
         if(n!=null){  
        
                 response.addHeader("Cache-Control", "no-chache, no-store, must-revalidate,"
         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");

           }else{  
            out.print("Please login first");  
            request.getRequestDispatcher("Adminlogin.jsp").forward(request, response);  
        }  
            
         try {
             String tid=request.getParameter("tid");
               int id=Integer.parseInt(tid);
           /* Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
           Connection con=connect.Connectdb.getDb();
            String q="delete from caseformtable where id=?";
           
            PreparedStatement pstmt=con.prepareStatement(q);
            
            pstmt.setInt(1,id);
          
            int x=pstmt.executeUpdate();
            String s="delete from complainttable where id=?";
             PreparedStatement pstmt2=con.prepareStatement(s);
              pstmt2.setInt(1,id);
              pstmt2.executeUpdate();
               
            if(x>0)
            {
               
               
                RequestDispatcher rd=request.getRequestDispatcher("Resolved.jsp");
                rd.include(request, response);
                 out.println(x+"record deleted");
            }
            else
            {
                RequestDispatcher rd=request.getRequestDispatcher("Resolved.jsp");
                rd.include(request, response);
                out.println("Data not deleted");
            }
            
             
        }catch(Exception e){System.out.println(e);}
        %>
         
    </body>
</html>
