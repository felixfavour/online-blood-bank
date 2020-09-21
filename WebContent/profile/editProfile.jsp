<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bloodbank.donor.Donor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/main.css">
</head>
<body>
	<div class="container rounded bg-white mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <img class="rounded-circle mt-5" src="https://avatars3.githubusercontent.com/u/52291700?s=460&u=edb088a61ed88197a87121af1e898afc4acebea6&v=4" width="90">
                    <span class="font-weight-bold py-2">Welcome, Mr Obi Zim</span>
                    <span class="text-black-50">Edit your profile details</span>
                </div>
            </div>
            <div class="col-md-8">
                <div class="p-3 py-5">
                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label for="fullname">Full Name</label>
                            <input type="text" class="form-control" placeholder="Full Name">
                        </div>
                        <div class="col-md-6">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" placeholder="Username"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label for="email">Email Address</label>
                            <input type="text" class="form-control" placeholder="Email">
                        </div>
                        <div class="col-md-6">
                            <label for="City">City</label>
                            <input type="text" class="form-control"  placeholder="City">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label for="address">Residential Address</label>
                            <input type="text" class="form-control" placeholder="address">
                        </div>
                        <div class="col-md-6">
                            <label for="weight">Weight</label>
                            <input type="number" class="form-control" placeholder="Weight">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <label for="dateofbirth">Date of birth</label>
                            <input type="date" class="form-control" placeholder="Date of birth">
                        </div>
                        <div class="col">
                            <label for="contact">Phone Number</label>
                            <input type="number" class="form-control" placeholder="Phone Number">
                        </div>
                        <div class="col select-column">
                            <label for="bloodgroup">Blood Group</label>
                            <select class="form-control" name="bloodGroup">
                                <option>A</option>
                                <option>B</option>
                                <option>AB</option>
                                <option>O</option>	
                          </select>
                        </div>
                    </div>
                    <div class="mt-5 text-right">
                        <button class="btn btn-danger profile-button" type="button">Update Profile</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>