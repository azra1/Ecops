/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connectdb {
 public static Connection con=null;
    public static Connection getDb()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecops","root","");
        
        }catch(Exception e){System.out.println(e);}
        return con;
    }
    
}
   

   

