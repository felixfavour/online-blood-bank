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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String localizedMessageException = "";
	String status = "";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String operationStatus = loginUser(username, password);
		
		if (operationStatus == "SUCCESS") {
			RequestDispatcher view = request.getRequestDispatcher("profile/editProfile.jsp");
			view.forward(request, response);
		} else {
			RequestDispatcher view = request.getRequestDispatcher("login/index.jsp");
			view.forward(request, response);
		}
		
	}
	
	private String loginUser(String username, String password) {
		try {
			Connection con = DatabaseConnection.getDatabase();
			Statement statement = con.createStatement();
			
			ResultSet resultSet = statement.executeQuery("SELECT username, password FROM donors WHERE username = \"" + username + "\"");

			while (resultSet.next()) {				
				if (resultSet.getString("password").contentEquals(password)) {
					System.out.println("SUCCESS");
					status = "SUCCESS";
				} else {
					status = "Wrong Password";
				}
			}			
			
		} catch (Exception ex) {
			localizedMessageException = ex.getLocalizedMessage();
			status = localizedMessageException;
			ex.printStackTrace();
		}
		
		return status;
	}

}
