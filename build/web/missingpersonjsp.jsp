<%-- 
    Document   : missingpersonjsp
    Created on : Mar 17, 2016, 11:34:26 AM
    Author     : Azra
--%>

<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
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
              String msg="";
       Connection con=null;
     boolean isMultipart = ServletFileUpload.isMultipartContent(request);
     if (!isMultipart) 
     {
     } 
     else 
     {
       FileItemFactory factory = new DiskFileItemFactory();
       ServletFileUpload upload = new ServletFileUpload(factory);
       List items = null;
       try 
       {
               items = upload.parseRequest(request);
       }
       catch (FileUploadException e) 
       {
               e.printStackTrace();
       }
       Iterator itr = items.iterator();     //this will create iterator object from list..used for traversing the data.
       String img_name="",mdate="",mname="",mfname="",mage="",mheight="",mreligion="",mgender="",mstate="";
       while (itr.hasNext()) 
       {
           FileItem item = (FileItem) itr.next();
          
           if (item.isFormField())   //checking if its normal field then we read as normal. no need to store in disc
            {
                        String name = item.getFieldName();
                       
                       String value = item.getString();
                                            
                       if(name.equals("miss1"))
                       {
                               mdate=value;
                               
                        }
                       else if(name.equals("miss2"))
                        {  
                                   mname=value;                        
                            
                        }  
                          else if(name.equals("miss3"))
                        {  
                                   mfname=value;                        
                            
                        } 
                          else if(name.equals("miss4"))
                        {  
                                   mage=value;                        
                            
                        } 
                       else if(name.equals("miss5"))
                        {  
                                   mheight=value;                        
                            
                        } 
                   else if(name.equals("miss6"))
                        {  
                                   mreligion=value;                        
                            
                        } else if(name.equals("miss7"))
                        {  
                                   mgender=value;                        
                            
                        } 
                       else if(name.equals("miss8"))
                        {  
                                   mstate=value;                        
                            
                        } 
                                 
            }
            else                                      //this else part for process about PDF file
             {
                try 
                {
        
                   String itemName = item.getName();    //this will return the  file name
                   img_name=mname+itemName;
                   String filename=request.getRealPath("")+"\\missingprofile\\";
                   
                  
                  // System.out.println(itemName+ " " +filename);
               filename=filename+img_name;       //now concatenation the file name with upload  path.
              System.out.println(filename);
                  File savedFile=new File(filename);
                       double bytes = savedFile.length();
			double kilobytes = (bytes/1024);
                        if(kilobytes>60)
                            out.println("data is large");
                        else
                     item.write(savedFile);    //saving file into disc,item contain which you select the file.
                      
                        //here item will copy into the savedFile and store into disk
            
                
                     
                }catch(Exception e){System.out.println(e);}
           }
                        
                    
       }
                     try
                     {
                         con=connect.Connectdb.getDb();
                 String querySetLimit = "SET GLOBAL max_allowed_packet=104857600;";  // 10 MB
            Statement stSetLimit = con.createStatement();
            stSetLimit.execute(querySetLimit);     
                 String q="insert into missingpersontable(Missingdate,Name,FatherName,Age,Height,Religion,Gender,State,Image_name)values(?,?,?,?,?,?,?,?,?)";
                       PreparedStatement ps=con.prepareStatement(q);
                       ps.setString(1,mdate);
                         ps.setString(2,mname);
                           ps.setString(3,mfname);
                             ps.setString(4,mage);  
                             ps.setString(5,mheight);
                             ps.setString(6,mreligion);
                             ps.setString(7,mgender);
                             ps.setString(8,mstate);
                             ps.setString(9,img_name);
                             
                       
                    int x=ps.executeUpdate();
                   
                       if(x>0)
                       {
                          msg="Record inserted.";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("Missingperson.jsp");
                rd.include(request, response);
                       }
                       else 
                       {
                       msg="Record not inserted !!";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("Missingperson.jsp");
                rd.include(request, response);
                       }
                        
                                
                }
                catch(Exception ste)
                {
                    out.println(ste);
                }
               
            
                 
              
           
          }
       
     
        
                     
%> 
    </body>
</html>
