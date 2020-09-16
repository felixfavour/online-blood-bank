package com.bloodbank.persist;

import java.sql.*;
import com.mysql.jdbc.Driver;

// This class can be used to initialize the database connection 
public class DatabaseConnection { 
	
	/**
	 * @return [Connection] if it was properly initialized, otherwise, null. 
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
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
        	//Create a New instance of the Database Driver.
			Class.forName(dbDriver).newInstance();
		} catch (Exception ex) {
			ex.printStackTrace();
		} 
        
        // Create a Database Connection with the Database properties and return it.
        Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername,  dbPassword); 
        return con; 
    } 
}
