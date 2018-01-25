<%-- 
    Document   : addcriminaljsp
    Created on : Mar 10, 2016, 2:00:43 PM
    Author    :puja
--%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
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
       String image_name="",cname="",gender="",height="",weight="",policestatn="",crimelvl="",crime="",status="";
       while (itr.hasNext()) 
       {
           FileItem item = (FileItem) itr.next();
          
           if (item.isFormField())   //checking if its normal field then we read as normal. no need to store in disc
            {
                        String name = item.getFieldName();
                       String value = item.getString();
                                            
                       if(name.equals("crime2"))
                       {
                               cname=value;
                               
                        }
                       else if(name.equals("crime3"))
                        {  
                                   gender=value;                        
                            
                        }  
                          else if(name.equals("crime4"))
                        {  
                                   height=value;                        
                            
                        } 
                          else if(name.equals("crime5"))
                        {  
                                   weight=value;                        
                            
                        } 
                       else if(name.equals("crime6"))
                        {  
                                   policestatn=value;                        
                            
                        } 
                   else if(name.equals("crime7"))
                        {  
                                   crimelvl=value;                        
                            
                        } else if(name.equals("crime8"))
                        {  
                                   crime=value;                        
                            
                        } 
                       else if(name.equals("crime9"))
                        {  
                                   status=value;                        
                            
                        } 
                                 
            }
            else                                      //this else part for process about PDF file
             {
                try 
                {
        
                   String itemName = item.getName();    //this will return the  file name
                   image_name=cname+itemName;
                   String filename=request.getRealPath("")+"\\profiles\\";
                   
                  
                  // System.out.println(itemName+ " " +filename);
               filename=filename+image_name;       //now concatenation the file name with upload  path.
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
                 String q="insert into criminaltable(Image_name,Name,Gender,Height,Weight,Policestation,Crimelevel,Crime,Status)values(?,?,?,?,?,?,?,?,?)";
                       PreparedStatement ps=con.prepareStatement(q);
                       ps.setString(1,image_name);
                         ps.setString(2,cname);
                           ps.setString(3,gender);
                             ps.setString(4,height);  
                             ps.setString(5,weight);
                             ps.setString(6,policestatn);
                             ps.setString(7,crimelvl);
                             ps.setString(8,crime);
                             ps.setString(9,status);
                             
                       
                    int x=ps.executeUpdate();
                   
                       if(x>0)
                       {
                          msg="Criminal Record inserted.";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("addcriminal.jsp");
                rd.include(request, response);
                       }
                       else 
                       {
                       msg="Criminal Record not inserted !!";
                request.setAttribute("message",msg);
                 RequestDispatcher rd=request.getRequestDispatcher("addcriminal.jsp");
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
