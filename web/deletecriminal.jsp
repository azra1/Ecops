<%-- 
    Document   : deletecriminal
    Created on : Mar 18, 2016, 2:28:13 PM
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
                <div id="adminhead"><center><h1><u><i>DELETE CRIMINALS RECORDS</i></u></h1></center>
                    <a href="logout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
            <jsp:include page="adminsidemenu.jsp"></jsp:include>
            <div class="right">
                <div id="t2" align="center"><br>
                            <br><table height="auto" border="2%" width="50%" cellspacing="20%" cellpadding="15%">
 <tr><th bgcolor="grey"color="black">Criminal-Id</th><th bgcolor="grey" color="white">Image</th><th bgcolor="grey" color="white">Name</th><th bgcolor="grey" color="white">DELETE</th></tr>
                                                                                  
                            <% 

try 
{ 
 
    Connection con=connect.Connectdb.getDb();
    PreparedStatement pst=con.prepareStatement("select * from criminaltable ");
      ResultSet rs=pst.executeQuery(); 

while(rs.next()) 
{ 
%> 
<tr> 
<!-- Mention Directory where your images has been saved--> 
<td><%=rs.getInt(1)%></td>
<!--<td><%=rs.getString(2)%></td>-->
<td><img src="profiles/<%=rs.getString(2)%>" width="100px" height="50px" /></td> 
<td><%=rs.getString(3)%></td>

 <td><button><a href="deletecriminaljsp.jsp?tid=<%=rs.getInt(1)%>">DELETE</a></button></td>
</tr> 

<% 
} 
} 
catch(Exception e) 
{ 
out.print(""+e.getMessage()); 
} 
%> 
        
</table> 

                </div></div>
           <center><font color="red">
            <%
        if(msg!=null)
        out.println(msg);
        %>
            </div>
                
        </div>
    </body>
</html>
