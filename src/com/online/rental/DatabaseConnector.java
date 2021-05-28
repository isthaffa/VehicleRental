package com.online.rental;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DatabaseConnector {
	
	
public static Connection connect() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		    throw new RuntimeException("JDBC Driver not loaded. Cannot find the driver in the classpath!", e);
		}

		 Connection conn = null;
		 String username="root";
		 String password="";
		 
		 
		 
		 try {
		 	conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/online_rental",username,password);
		 }
		 catch(SQLException e) {
			 // TODO: implement
			 System.out.println(e.getMessage());
		 }
		 return conn;
	}

}
