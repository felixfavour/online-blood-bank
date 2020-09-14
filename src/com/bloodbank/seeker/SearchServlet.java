package com.bloodbank.seeker;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.*;

import com.bloodbank.donor.Donor;
import com.bloodbank.lifesaver.Lifesaver;
import com.bloodbank.persist.DatabaseConnection;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String localizedMessageException = "";
	String status = "";
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city = request.getParameter("city");
		String bloodGroup = request.getParameter("bloodGroup");
		
		// Add donors list to the [request] as response from the Servlet
		
		ArrayList<Donor> donors = searchDonors(city, bloodGroup);
		Lifesaver lifesaver = searchLifesaver(city);
		
		request.setAttribute("donors", donors);
		request.setAttribute("city", city);
		request.setAttribute("lifesaver", lifesaver);
		
		RequestDispatcher view = request.getRequestDispatcher("search/index.jsp");
		view.forward(request, response);
		
	}
	
	private ArrayList<Donor> searchDonors(String cityParam, String bloodGroupParam) {
		
		ArrayList<Donor> donors = new ArrayList<Donor>();
		
		try {
			Connection connection = DatabaseConnection.getDatabase();
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery("SELECT * FROM donors WHERE city = \""
					+ cityParam 
					+ "\" AND bloodGroup = \""
					+ bloodGroupParam 
					+ "\"");
			
			while(resultSet.next()) {

				String name = resultSet.getString("name");
				String username = resultSet.getString("username");
				String emailAddress = resultSet.getString("emailAddress");
				String password = resultSet.getString("password");
				String address = resultSet.getString("address");
				String city = resultSet.getString("city");
				String sex = resultSet.getString("sex");
				int weight = Integer.valueOf(resultSet.getString("weight"));
				String dob = resultSet.getString("dob");
				String bloodGroup = resultSet.getString("bloodGroup");
				String contactNumber = resultSet.getString("contactNumber");
				
				Donor donor = new Donor(
					name,
					username, 
					emailAddress, 
					password, 
					address, 
					city, 
					sex, 
					weight, 
					dob,
					bloodGroup, 
					contactNumber
				);
				
				System.out.println(donor.getUsername());
				
				donors.add(donor);
				connection.close();
			}			
			
			status = "SUCCESS";	
			System.out.println(status);		
			
			
		} catch(Exception ex) {
			localizedMessageException = ex.getLocalizedMessage();
			System.out.println(localizedMessageException);	
			status = "FAILURE";	
			System.out.println(status);	
		}
		
		
		return donors;
	}

	private Lifesaver searchLifesaver(String cityParam) {
		Lifesaver lifesaver = null;		
		try {
			Connection connection = DatabaseConnection.getDatabase();
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery("SELECT * FROM lifesavers WHERE city = \""
					+ cityParam 
					+ "\"");
			
			while(resultSet.next()) {
				
				lifesaver = new Lifesaver(
					resultSet.getObject("name").toString(),
					resultSet.getObject("contactNumber").toString(),
					resultSet.getObject("city").toString(),
					resultSet.getObject("email").toString()
				);
				
			}
			
			
			connection.close();
		} catch(Exception ex) {
			localizedMessageException = ex.getLocalizedMessage();
			System.out.println(localizedMessageException);
		}
		
		
		return lifesaver;
	}
}
