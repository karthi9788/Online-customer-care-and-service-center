<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Online Customer Care and Service Center</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/complaintregistersuccess.css">

</head>

<body>
	<header>
		Online Customer Care and Service Center
		</header>
		<nav class="circle">
    <ul>
      <li><a href="/complaintRegister">Raise Complaint</a></li>
      <li><a href="/userComplaintStatus/${userId}">Complaints Status</a></li>
      <li> <a href="/searchComplaints">Search Complaints</a></li>
      <li><a href="/userFeedback/${userId}">Feedback</a> </li>
      <li><a href="/profilepage">Profile</a></li>
      <li><a href="/userlogin">Logout</a></li>
    </ul>
  </nav>
	
	<center>
		<h3>Complaint Registered Successful !!</h3>
		<br />
		<!-- <h5><a href="/complaintRegister">Home</a></h5></center> -->
</body>
</html>