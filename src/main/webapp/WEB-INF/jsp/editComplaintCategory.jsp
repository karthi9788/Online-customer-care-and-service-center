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
<link rel="stylesheet" type="text/css"
	href="css/editComplaintCategory.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
</head>

<body>
	<header>Online Customer Care and Service Center</header>
	<nav class="circle">
    <ul>
      <li><a href="/categories">Complaint Categories</a></li>
      <li><a href="/complaintStatus">Complaints Status</a></li>
      <li><a  href="/adminhome">Complaints</a></li>
      <li><a href="/profilepage">Profile</a></li>
      <li><a href="/userlogin">Logout</a></li>
    </ul>
  </nav>
	<div class="body">
		<div class="container">
			<div class="content">
				<h1>Update Complaint Category</h1>

				<form:form action="/assignTeamForComplaint/${complaint.complaintId }"
					modelAtrribute="complaint" method="POST">
					
					<form:select class="form-control mb-4 col-4" id="categoryName"
						path="categoryName" items="${complaintCategories }">
					</form:select>
					
					<form:input id="complaintStatement" path="complaintStatement"
						class="form-control mb-4 col-4"
						value="${complaint.complaintStatement }" />
						
					<button type="submit" class="btn btn-info col-2">Update</button>
				</form:form>
				<!--  <a class="back" href="/assignTeamForComplaint"> Back </a>-->
			</div>
		</div>
	</div>
</body>
</html>