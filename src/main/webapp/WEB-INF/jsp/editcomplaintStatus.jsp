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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/complaintStatus.css">
<style>
body {
	background:
		url(https://wallpaper.dog/large/5486500.png);
		background-attachment: fixed;
		 background-repeat: no-repeat;
}

.add {
	margin-left: 89%;
}

#add {
	padding: 8px 8px 8px 8px;
	font-size: 17px;
}

.btn-danger {
	color: #fff;
	background-color: #fd5247;
	border-color: #fe5549;
}

.btn-primary {
	color: #fff;
	background-color: #fd5247;
	border-color: #fe5549;
}

.btn-primary:hover {
	color: #fff;
	background-color: #e83931;
	border-color: #e83931;
}

h1 {
	padding-bottom: 20px;
	text-align: center;
}

.body {
	margin-top: 2.7%;
	padding-left: 28%;
	padding-top: 10px;
	padding-bottom: 20px;
	border-radius: 0.5rem;
	padding-top: 10px;
	position: relative;
}

header{
    background-color:gray;
    
    color:white;
    padding-top: 25px;
    padding-bottom: 15px;
    font-size: 40px;
   font-family:calibri;
    position: relative;
    text-align: center;
    border-bottom-left-radius:.5rem;
     border-bottom-right-radius:.5rem;
   }

.home {
	margin-left: 54.7%;
	margin-top: 2%;
	font-size: 25px;
}

.a2 {
	padding: 15px;
}

a {
	text-align: left;
}

.data {
	font-size: 23px;
}
.data1 {
	font-size: 26px;
}

table {
	border-collapse: separate;
	border-radius: 0.5rem;
}

th {
	background-color: gray;
	color: white;
	font-weight: 500;
	text-align: center;
}

.edit {
	float: right;
	font-size: 20px;
	padding-top: 2px;
}

.mb-4, .my-4 {
	margin-bottom: .5rem !important;
}

.col-4 {
	-ms-flex: 0 0 33.333333%;
	flex: 0 0 33.333333%;
	max-width: 90%;
}

button, input, optgroup, select, textarea {
	margin: 0;
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}

.add {
	margin-left: 45%;
}

#add {
	padding: 6px 20px 6px 20px;
	font-size: 20px;
}

.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
	margin-bottom: .5rem;
	font-family: inherit;
	font-weight: 500;
	line-height: 1.2;
	color: red;
}
</style>
<link rel="stylesheet" type="text/css" href="css/menu.css">
</head>

<body>
	<header>Online Customer Care and Service Center</header>
	<nav class="circle">
    <ul>
      <li><a href="/categories">Complaint Categories</a></li>
      <li><a href="/complaintStatus">Complaints Status</a></li>
      <li><a href="/adminhome">Complaints</a></li>
      <li><a href="/profilepage">Profile</a></li>
      <li><a href="/userlogin">Logout</a></li>
    </ul>
  </nav>
	<div class="body">
		<div class="container my-2">
			<h1>Complaint Status</h1>
			<div class="add"></div>

			<form:form action="/saveComplaintStatus/${complaint.complaintId }"
				modelAttribute="complaint" method="POST">
				
				<table border="1" class="table table-striped table-responsive-md">
					<thead>
						<tr>
							<th class="data">Complaint id</th>
							 <th class="data">Date</th>  
							<th class="data">User Id</th>
							<th class="data">Complaint Category</th>
							<th class="data">Complaint Statement</th>
							 <th class="data">Assigned Team</th> 
							<th class="data">Status</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td class="data1">${complaint.complaintId }</td>
						    <td class="data1">${complaint.date }</td> 
							<td class="data1">${complaint.userId }</td>
							<td class="data1">${complaint.categoryName }</td>
							<td class="data1">${complaint.complaintStatement }</td>
							<td class="data1">${complaint.supportTeam }</td>  
							<td class="data1">${complaint.status }</td>  
							
						</tr>
					</tbody>
				</table>
				<div class="add">
					<button id="add" class="btn btn-primary btn-sm mb-3">Download</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>