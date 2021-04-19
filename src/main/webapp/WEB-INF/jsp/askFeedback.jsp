<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Customer Care and Service Center</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/askfeedback.css">

</head>

<body>
	<header>Online Customer Care and Service Center</header>
	<nav class="circle">
		<ul>
			<li><a href="/adminhome">Complaints</a></li>
			<li><a href="/categories">Complaint Categories</a></li>
			<li><a href="/complaintStatus">Complaints Status</a></li>
			<li><a href="/reviewList">Questionnaire </a></li>
			<li><a href="/askFeedback">Ask Feedback</a></li>
			<li><a href="/feedback">Feedbacks</a></li>
			<li><a href="/profilepage">Profile</a></li>
			<li><a href="/userlogin">Logout</a></li>
		</ul>
	</nav>
	<div class="body">
		<div class="container my-2">
			<h1>Ask Feedback</h1>
			<div class="add"></div>



			<table border="1" class="table table-striped table-responsive-md">
				<thead>
					<tr>
						<th class="data">Complaint Id</th>
						<th class="data">Date</th>
						<th class="data">User Id</th>
						<th class="data">Complaint Category</th>
						<th class="data">Complaint Statement</th>
						<th class="data">Assigned Team</th>
						<th class="data">Status</th>
						<th class="data">Action</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${complaintList }" var="complaint">
						<form:form action="/saveaskfeedback/${complaint.userId }">
							<tr>
								<td class="data1">${complaint.complaintId }</td>
								<td class="data1">${complaint.date }</td>
								<td class="data1">${complaint.userId }</td>
								<td class="data1">${complaint.categoryName }</td>
								<td class="data1">${complaint.complaintStatement }</td>
								<td class="data1">${complaint.levelOfIssue }</td>
								<td class="data1">${complaint.status }</td>
								<td><button class="btn btn-primary btn-sm mb-3">Ask
										Feedback</button></td>
							</tr>
						</form:form>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>