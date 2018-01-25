<%-- 
    Document   : deletecomplaint
    Created on : Mar 9, 2016, 1:40:02 PM
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
                <div id="adminhead"><center><h1><u><i>DELETE COMPLAINT</i></u></h1></center>
                    <a href="logout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
             <jsp:include page="adminsidemenu.jsp"></jsp:include>
            <div class="right">
                <div id="t2" align="center"><br>
                            <br><table cellspacing="2%" cellpadding="3%" align="center" border="2%">
                                <tr><th bgcolor="grey"color="black">Id</th><th bgcolor="grey" color="white">Email</th><th bgcolor="grey" color="white">Police Station Name</th><th bgcolor="grey" color="white">Subject</th><th bgcolor="grey" color="white">Description</th><th bgcolor="grey" color="white">Date</th><th bgcolor="grey" color="white">DELETE</th></tr>
                    
                            <% 
       
        try {
           
           /* Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");*/
            Connection con=connect.Connectdb.getDb();
            String pg=request.getParameter("page");
    String q="";
    int peg=1;
    if(pg==null || pg.equals("1"))
    {
        q="select * from complainttable limit 0,5";
    }
    else
    {
        peg=Integer.parseInt(pg);
        int start=peg*5-5;
        q="select * from complainttable limit "+start+","+peg*5;
    }
           
            PreparedStatement  pst=con.prepareStatement("select * from complainttable");
            ResultSet rs=pst.executeQuery(q);
            while(rs.next())
            {
                 %>
                <tr color="black">
                    
                    <td><%=rs.getInt(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><button><a href="deletecomplaintjsp.jsp?tid=<%=rs.getInt(1)%>">Delete</a></button></td>
                </tr>
                  
       <% }
           
    //    }catch(Exception e){System.out.println(e);}
        %>
        </table>
           <center><font color="red">
            <%
        if(msg!=null)
        out.println(msg);
        %></font></center>
            </div>
              <table align="center"><tr><td>
     <%
         
         int count=0;
         PreparedStatement ps=con.prepareStatement("select count(id) from complainttable");
         ResultSet r=ps.executeQuery();
         if(r.next())
             count=r.getInt(1);
        for(int i=1;i<=(count/5)+1;i++)
        {
        %>
        
    <a href="deletecomplaint.jsp?page=<%=i%>"><%=i%></a>
    
    <%}%>
            </td></tr></table> 
            <%}catch(Exception e){System.out.println(e);}

%>  
        </div>
    </body>
</html>
