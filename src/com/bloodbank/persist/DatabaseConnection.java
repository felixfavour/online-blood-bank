package com.bloodbank.persist;

import java.sql.*;
import com.mysql.jdbc.Driver;

// This class can be used to initialize the database connection 
public class DatabaseConnection { 
	
    public static Connection getDatabase() throws SQLException, ClassNotFoundException 
    { 
        // Initialize all the information regarding 
        // Database Connection 
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost:3306/"; 
        // Database name to access 
        String dbName = "bloodbank"; 
        String dbUsername = "root";
        String dbPassword = ""; 
  
        try {
			Class.forName(dbDriver).newInstance();
		} catch (Exception ex) {
			ex.printStackTrace();
		} 
        Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername,  dbPassword); 
        return con; 
    } 
}
