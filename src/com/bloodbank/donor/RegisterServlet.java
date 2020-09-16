package com.bloodbank.donor;

import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bloodbank.persist.DatabaseConnection;

@WebServlet(name = "registerServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {
	
	String localizedMessageException = "";
	String status = "";

	private static final long serialVersionUID = 7891410414445453938L;
	
/**
 * Overridden method that is invoked when a POST request is sent to the Servlet.
 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String username = req.getParameter("username");
		String emailAddress = req.getParameter("emailAddress");
		String password = req.getParameter("password");
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		String sex = req.getParameter("sex");
		int weight = Integer.valueOf(req.getParameter("weight"));
		String dob = req.getParameter("dob");
		String bloodGroup = req.getParameter("bloodGroup");
		String contactNumber = req.getParameter("contactNumber");
		
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
		
		String operationStatus = addDonorToDatabase(donor);
		
		/*
		 * Instantiate a RequestDispatcher to redirect and send a response to the client
		 * when the Donor has been successfully registered
		 */
		if (operationStatus == "SUCCESS") {
			res.sendRedirect(req.getContextPath() + "/login/index.jsp");
		} else {
			RequestDispatcher view = req.getRequestDispatcher("register/index.jsp#dialog");
			req.setAttribute("error", status);
			view.forward(req, res);
		}
	}
	
	/**
	 * @param donor
	 * @returns "SUCCESS" if [donor] was sucessfully registered
	 * @returns [localizedMessageException] if donor was not registered*/
	private String addDonorToDatabase(Donor donor) {
		
		try {
			// Initialize the Database Connnection
			Connection con = DatabaseConnection.getDatabase(); 
			/*
			 * Create a [PreparedStatement] instance that would hold SQL query
			 * The Query would insert each field/attribute of the Donor to the database.
			 */
			PreparedStatement statement = con.prepareStatement("Insert into donors(name, username, emailAddress, password, address, city, sex, weight, dob, bloodGroup, contactNumber) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			statement.setString(1, donor.getName());
			statement.setString(2, donor.getUsername());
			statement.setString(3, donor.getEmailAddress());
			statement.setString(4, donor.getPassword());
			statement.setString(5, donor.getAddress());
			statement.setString(6, donor.getCity());
			statement.setString(7, donor.getSex());
			statement.setInt(8, donor.getWeight());
			statement.setString(9, donor.getDob());
			statement.setString(10, donor.getBloodGroup());
			statement.setString(11, donor.getContactNumber());
			
			// Execute the query in the PreparedStatement instance
			statement.executeUpdate();
			// If insertion operation is Successful.
			status = "SUCCESS";
			statement.close();
			con.close();
			
			
		} catch(Exception ex) {
			// If there are any exceptions during the course of the Database operation it is caught here.
			localizedMessageException = ex.getLocalizedMessage();
			status = localizedMessageException;
			ex.printStackTrace();
		}
		return status;
		
	}

}
