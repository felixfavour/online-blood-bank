package com.bloodbank.persist;

import java.sql.*;

// This class can be used to initialize the database connection 
public class DatabaseConnection { 
	
    public static Connection getDatabase() throws SQLException, ClassNotFoundException 
    { 
        // Initialize all the information regarding 
        // Database Connection 
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost:3306/bloodbank"; 
        // Database name to access 
        String dbName = "bloodbank"; 
        String dbUsername = "root";
        String dbPassword = ""; 
  
        Class.forName(dbDriver); 
        Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername,  dbPassword); 
        return con; 
    } 
}
