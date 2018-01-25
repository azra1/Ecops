<%-- 
    Document   : adminloginjsp
    Created on : Mar 8, 2016, 1:05:52 PM
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
            try{
                String msg="";
            String name=request.getParameter("admin1");  
        String password=request.getParameter("admin2");  
       /* Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
       Connection con=connect.Connectdb.getDb();/*packgename.classname.methordname*/
        PreparedStatement pst=con.prepareStatement("select * from admin where name=? && password =?");
        pst.setString(1,name);
        pst.setString(2,password);
        ResultSet rs=pst.executeQuery();
               if(rs.next())
               {
                   session.setAttribute("nm",name); 
         request.getRequestDispatcher("AdminHome.jsp").forward(request, response);
                   
               }    

        else{  
                  
                   msg="Sorry,Username or Password Error!";
                   request.setAttribute("message",msg);
                   
                           
                           
           /* out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sorry, username or password error!");  */
            request.getRequestDispatcher("Adminlogin.jsp").include(request, response);  
        }  
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
         
    %>
    </body>
</html>
