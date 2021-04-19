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
<link rel="stylesheet" type="text/css" href="css/add-update.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
</head>

<body>
	<header>Online Customer Care and Service Center</header>
	<nav class="circle">
		<ul>
			<li><a href="/adminhome">Complaints</a></li>
			<li><a href="/categories">Complaint Categories</a></li>
			<li><a href="/reviewList">Questionnaire</a></li>
			<li><a href="/complaintStatus">Complaints Status</a></li>
			<li><a href="/askFeedback">Ask Feedback</a></li>
			<li><a href="/feedback">Feedbacks</a></li>
			<li><a href="/profilepage">Profile</a></li>
			<li><a href="/userlogin">Logout</a></li>
		</ul>
	</nav>
	<div class="body">
		<div class="container">
			<div class="content">
				<h1>Add Category</h1>
				<form:form action="/saveCategory" modelAtrribute="category"
					method="POST">

					<form:input class="form-control mb-4 col-4" id="categoryName"
						path="categoryName" placeholder="Enter Category Name" />
					<form:textarea id="description" path="description"
						class="form-control mb-4 col-4" placeholder="Enter Description"></form:textarea>
					<button type="submit" class="btn btn-info col-2">Add</button>

					<!--  <a class="back" href="/categories"> Back to Category List</a>-->
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>