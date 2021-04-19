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
<link rel="stylesheet" type="text/css" href="css/searchComplaint.css">

<script language="javascript" type="text/javascript" src="js/searchcomplaint.js"></script>

</head>

<body>
	<header>Online Customer Care and Service Center</header>
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
	<div class="body">
		<div class="container ">
			<h1 class="h1">Complaints</h1>
			<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search..." title="Type in a name">
			<table border="1" class="table table-striped table-responsive-md" id="myTable">
				<thead>
					<tr>
						  <th onclick="sortTable(0)" class="data">Complaint Id</th>
						<th onclick="sortTable(1)" class="data">Complaint Category</th>
						<th onclick="sortTable(2)" class="data">Date</th>
						<th onclick="sortTable(3)" class="data">User Id</th>
						
						<th class="data">Complaint Statement</th>

						<!--  <th class="data">View</th>-->
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${complaintList }" var="complaint">
						
						<tr>
						 <td class="data1">${complaint.complaintId }</td> 
						<td class="data1">${complaint.categoryName }</td>
							
							<td class="data1">${complaint.date }</td>
							<td class="data1">${complaint.userId }</td>
							
							
							<td class="data1">${complaint.complaintStatement }</td>
							
							
						
									<!--  <td class="data1"><div class="add">
					<button id="add" class="btn btn-primary btn-sm mb-3"><a class="view" href="/viewComplaint/${complaint.complaintId }">View</a></button>
				</div></td>-->
						</tr>
						
					</c:forEach>
				</tbody>
			</table>
			<div id="pageNavPosition" class="pager-nav"></div>
		</div>
	</div>
	<script  type="text/javascript" src="js/PagerJS.js"></script>
</body>
</html>