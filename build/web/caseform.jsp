<%-- 
    Document   : caseform
    Created on : Mar 22, 2016, 12:38:53 PM
    Author     : Azra
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style3.css">
    </head>
    <body><%
        String n=(String)session.getAttribute("nm");
         if(n!=null){  
        
                 response.addHeader("Cache-Control", "no-chache, no-store, must-revalidate,"
         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");

           }
           else{  
            out.print("Please login first");  
            request.getRequestDispatcher("policelogin.jsp").forward(request, response);  
        }  
       String msg=(String)request.getAttribute("message"); 
       %>
        <div id="policeinner">
            <div id="policetop"><img src="images/images_1.png">
                <div id="policehead"><center><h1><u><i>FORM</i></u></h1></center>
                    <a href="policelogout.jsp" style="text-align: right;margin-left:80%">LOGOUT</a>
                </div></div>
            <jsp:include page="policesidemenu.jsp"></jsp:include>
            <div class="right">
                <div id="t2" align="center"><br>
                            <br>
       <%        
        try{   
            String tid=request.getParameter("tid");
            
            int id=Integer.parseInt(tid);
           Connection con=connect.Connectdb.getDb();
             String q="select * from complainttable where id=?";
            PreparedStatement  pst=con.prepareStatement("select * from complainttable where id =?");
            pst.setInt(1,id);
            ResultSet rs=pst.executeQuery();
            while(rs.next())
            {
                 %>
                 <form action="caseformjsp.jsp">
                    <table border="2%"cellspacing="10%" cellpadding="20%" width="50%">
                        <tr><td>Complaint_Id:&nbsp;</td><td><%=rs.getInt(1)%></td></tr>
                        <tr>   <td>Remark:&nbsp;</td><td><textarea row="30" col="30" name="cf2"></textarea></td></tr>
                        <tr><td>Case-Status:&nbsp;</td><td><input type="radio" name="cf3" value="Resolved">Resolved &nbsp;
                                <input type="radio" name="cf3" value="UnResolved" checked>UnResolved</td>
                        </tr>
                        <tr><td></td><td><input type="submit" value="Submit"></td></tr>
                    </table>
                        <input type="hidden" value="<%=tid%>" name="tid">
                         <% }

           
        }catch(Exception e){System.out.println(e);}
        %>
        
           <center><font color="red">
            <%
        if(msg!=null)
        out.println(msg);
        %></font></center></form>
            </div>
                
        </div>
                            </body>
</html>
