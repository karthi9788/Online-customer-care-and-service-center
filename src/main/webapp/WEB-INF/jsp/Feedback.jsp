<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Online Customer Care and Service Center</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/feedback.css">

<script language="javascript" type="text/javascript" src="js/feedback.js"></script>
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
		<div class="container ">
		
			<h1>Feedback List</h1>
			<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search..." title="Type in a name">
			<table id="myTable" border="1" class="table table-striped table-responsive-md">
				<thead>
					<tr>
						
						<th class="data">User Id</a></th>
						<th class="data">Question</th>
						<th class="data">User Feedback</a></th>
						
					</tr>
				</thead>
				
				<tbody>
				
				<c:forEach items="${review }" var="review">
						
						<tr>
						
							<td class="data1">${review.userId }</td>
							<td class="data1">${review.question }</td>
							<td class="data1">${review.feedback }</td>
							
						</tr>
						</c:forEach>
					
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>