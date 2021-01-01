package com.tao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
      private static String url = "jdbc:mysql://localhost:3306/tao?useUnicode=true&characterEncoding=utf-8";
      private static String username = "root";
      private static String password = "0302243708";
      public static Connection getConn(){
    	  Connection con = null;
    	  try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username,password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return con;  
      }
      
      
      public static void Close(Connection con,PreparedStatement sta,ResultSet res){
    	  
    		  try {
    			  if(con!=null){
				con.close();
    			  }
    			  if(sta!=null){
    				  sta.close();
    			  }
    			  if(res!=null){
    				  res.close();
    			  }
    		  }
			 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		 return; 
      
      }
}
