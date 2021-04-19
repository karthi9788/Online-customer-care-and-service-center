<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Customer Care and Service Center</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/complaintregister.css">

</head>
<body>
	<header >
		Online Customer Care and Service Center</header>
		 <nav class="circle">
    <ul>
    	<li><a href="/returnToHome/${userId}">Raise
					Complaint</a></li>
      <li><a href="/userComplaintStatus/${userId }">Complaints Status</a></li>
      <li> <a href="/searchComplaints">Search Complaints</a></li>
      <li><a href="/userFeedback/${ userId}">Feedback</a> </li>
      <li><a href="/profilepage">Profile</a></li>
      <li><a href="/userlogin">Logout</a></li>
    </ul>
  </nav>
	
	<div class="div">
		<h2>Complaint Registration</h2>
	</div>
	<div class="body">
		<div class="container">
			<div class="content">
			
				<form:form action="/complaintsuccess" modelAtrribute="command"
					method="POST">
					
					<label for="userId" class="bol">User Id</label>
					<br />
					<form:input type="text" class="form-control mb-4 col-4" id="userId"
						path="userId" value="${ userId}" />
						
					<label for="userName" class="bol">Name</label>
					<input type="text" class="form-control mb-4 col-4" id="userName"
						value="${userName }" />
						
					<label for="mobileNumber" class="bol">Mobile Number</label>
					<input type="text" class="form-control mb-4 col-4"
						id="mobileNumber" value="${contactNumber }" />
						
						<label for="date" class="bol">Date</label>
					<form:input type="date" class="form-control mb-4 col-4"
						id="complaintStatement" path="date"/>
						
						
					<label for="categoryName" class="bol">Complaint Category</label>
					<form:select items="${complaintCategories}" id="categoryName"
						path="categoryName"></form:select>
						
					<label for="statement" class="bol">Problem Statement</label>
					<form:textarea type="text" class="form-control mb-4 col-4"
						id="complaintStatement" path="complaintStatement"
						placeholder="problem statement" />
						
					<button type="submit" id="but" class="btn btn-info col-2">Submit</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>