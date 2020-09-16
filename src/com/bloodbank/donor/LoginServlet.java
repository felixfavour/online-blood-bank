package com.bloodbank.donor;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bloodbank.persist.DatabaseConnection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String localizedMessageException = "";
	String status = "";
	
/**
 * Overridden method that is invoked when a POST request is sent to the Servlet.
 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		/*
		 * [operationStatus] is a field that tells the client whether the login
		 * operation was successful or not. see [loginUser()]
		 */
		String operationStatus = loginUser(username, password);
		
		// If user logged in successfully
		if (operationStatus == "SUCCESS") {
			// redirect the user to the Profile Modification URL
			response.sendRedirect(request.getContextPath() + "/profile/editProfile.jsp");
		} else {
		/*
		 * If the user could not be logged in successfully,
		 * reload the current page and send an error message to the client.
		 */
			RequestDispatcher view = request.getRequestDispatcher("login/index.jsp");
			request.setAttribute("status", status);
			view.forward(request, response);
		}
		
	}
	
	/**
	 * 
	 * @param username 
	 * @param password
	 * @return "SUCCESS" if user is login Operation is Successful and "WRONG PASSWORD OR EMAIL" if unsuccessful
	 */
	private String loginUser(String username, String password) {
		try {
			
			// Initialize the Database Connection
			Connection con = DatabaseConnection.getDatabase();
			// Create a [Statement] instance that would contain SQL queries.
			Statement statement = con.createStatement();
			// Executing the Query.
			// SQL statement to extract the password and username of user that matches the query.
			ResultSet resultSet = statement.executeQuery("SELECT username, password FROM donors WHERE username = \"" + username + "\"");

			
			while (resultSet.next()) {	
				// if password provided by client matches the one in database, operation is successful
				if (resultSet.getString("password").contentEquals(password)) {
					status = "SUCCESS";
					System.out.println(status);
				} else {
				// if password provided by client does not match the one in database, there must be a wrong password or username. 
					status = "WRONG PASSWORD OR EMAIL";
					System.out.println(status);
				}
			}			
			
		} catch (Exception ex) {
			// If there are any Exceptions while connecting to the Database and executing queries...
			// ...they would be caught here.
			localizedMessageException = ex.getLocalizedMessage();
			status = localizedMessageException;
			ex.printStackTrace();
		}
		
		return status;
	}

}
