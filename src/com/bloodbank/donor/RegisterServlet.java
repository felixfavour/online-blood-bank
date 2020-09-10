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

@WebServlet(name = "registerServlet", urlPatterns = {"/registerDonor"})
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 7891410414445453938L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String username = req.getParameter("username");
		String emailAddress = req.getParameter("emailAddress");
		String password = req.getParameter("password");
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		String sex = req.getParameter("sex");
		String weight = req.getParameter("weight");
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
		
		addDonorToDatabase(donor);
		
		req.setAttribute("donor", donor);
		RequestDispatcher view = req.getRequestDispatcher("profile/editProfile.jsp");
		view.forward(req, res);
	}
	
	private void addDonorToDatabase(Donor donor) {

		try {
			Connection con = DatabaseConnection.getDatabase();
			PreparedStatement statement = con.prepareStatement("Insert into donors values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			statement.setString(1, donor.getName());
			statement.setString(2, donor.getUsername());
			statement.setString(3, donor.getEmailAddress());
			statement.setString(4, donor.getPassword());
			statement.setString(5, donor.getAddress());
			statement.setString(6, donor.getCity());
			statement.setString(7, donor.getSex());
			statement.setString(8, donor.getWeight());
			statement.setString(9, donor.getDob());
			statement.setString(10, donor.getBloodGroup());
			statement.setString(11, donor.getContactNumber());
			
			statement.executeUpdate();
			statement.close();
			con.close();
			
		} catch(Exception ex) {
			ex.printStackTrace();
		}
	}

}
