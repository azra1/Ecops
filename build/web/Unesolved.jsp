<%-- 
    Document   : Unesolved
    Created on : Mar 28, 2016, 12:09:30 PM
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
                <div id="adminhead"><center><h1><u><i>UNRESOLVED COMPLAINT</i></u></h1></center>
                     <a href="logout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
             <jsp:include page="adminsidemenu.jsp"></jsp:include>
            <div class="right">
                <div id="t2" align="center"><br>
                <br><table cellspacing="2%" cellpadding="3%" align="center" border="2%">
                                <tr><th bgcolor="grey"color="black">Email</th><th bgcolor="grey" color="white">PS-Name</th><th bgcolor="grey" color="white">Subject</th><th bgcolor="grey" color="white">Remark</th><th bgcolor="grey" color="white">Case Status</th></tr>
                    
                            <% 
       
        try {
           
           /* Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
            Connection con=connect.Connectdb.getDb();
             PreparedStatement  pst=con.prepareStatement("select email,psname,sub,remark,case_status from complainttable inner join caseformtable on complainttable.id=caseformtable.id where case_status='unresolved'");
            ResultSet rs=pst.executeQuery();
            while(rs.next())
            {
                 %>
                <tr color="black">
                    
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                   
                    <td><%=rs.getString(5)%></td>
                    
                    
                </tr>
                  
       <% }}catch(Exception e){System.out.println(e);}

%></div></div></div>
    </body>
</html>
