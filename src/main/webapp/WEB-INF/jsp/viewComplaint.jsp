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
<link rel="stylesheet" type="text/css"
	href="/CustomerCare/src/main/resources/static/css/viewComplaint.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script >
function exportData(){
    /* Get the HTML data using Element by Id */
    var table = document.getElementById("table");
 
    /* Declaring array variable */
    var rows =[];
 
      //iterate through rows of table
    for(var i=0,row; row = table.rows[i];i++){
        //rows would be accessed using the "row" variable assigned in the for loop
        //Get each cell value/column from the row
        column1 = row.cells[0].innerText;
        column2 = row.cells[1].innerText;
 
    /* add a new records in the array */
        rows.push(
            [
                column1,
                column2
            ]
        );
 
        }
        csvContent = "data:text/csv;charset=utf-8,";
         /* add the column delimiter as comma(,) and each row splitted by new line character (\n) */
        rows.forEach(function(rowArray){
            row = rowArray.join(",");
            csvContent += row + "\r\n";
        });
 
        /* create a hidden <a> DOM node and set its download attribute */
        var encodedUri = encodeURI(csvContent);
        var link = document.createElement("a");
        link.setAttribute("href", encodedUri);
        link.setAttribute("download", "Complaint.csv");
        document.body.appendChild(link);
        link.click();
}</script>

<style>
@charset "ISO-8859-1";

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
	margin-left: 54.05%;
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

table td, .table th {
	padding-right: 1px;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
}

table {
	border-collapse: separate;
	border-radius: 0.5rem;
}

th {
	background-color: gray;
	color: white;
	font-weight: 500;
	text-align: left;
	width: 35%;
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

nav ul {
  list-style: none;
  text-align: center;
}
nav ul li {
  display: inline-block;
}
nav ul li a {
  display: block;
  padding: 15px;
  text-decoration: none;
 color:dimgrey;
  font-weight: 500;
  font-size:24px;
  margin: 0 10px;
}
nav ul li a,
nav ul li a:after,
nav ul li a:before {
  transition: all .5s;
}
nav ul li a:hover {
  color: #555;
}

/* By Dominik Biedebach @domobch */


/* stroke */
nav.stroke ul li a,
nav.fill ul li a {
  position: relative;
}
nav.stroke ul li a:after,
nav.fill ul li a:after {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
  width: 0%;
  content: '.';
  color: transparent;
  background: #333;
  height: 1px;
}
nav.stroke ul li a:hover:after {
  width: 100%;
}

nav.fill ul li a {
  transition: all 2s;
}
/* By Dominik Biedebach @domobch */

nav.fill ul li a:after {
  text-align: left;
  content: '.';
  margin: 0;
  opacity: 0;
}
nav.fill ul li a:hover {
  color: #023f1c;
  z-index: 1;
}
nav.fill ul li a:hover:after {
  z-index: -10;
  animation: fill 1s forwards;
  -webkit-animation: fill 1s forwards;
  -moz-animation: fill 1s forwards;
  opacity: 1;
}

/* Circle */
nav.circle ul li a {
  position: relative;
  overflow: hidden;
  z-index: 1;
}
/* By Dominik Biedebach @domobch */
nav.circle ul li a:after {
  display: block;
  position: absolute;
  margin: 0;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  content: '.';
  color: transparent;
  width: 1px;
  height: 1px;
  border-radius: 50%;
  background: transparent;
}
nav.circle ul li a:hover:after {
  -webkit-animation: circle 1.5s ease-in forwards;
}

/* SHIFT */
nav.shift ul li a {
  position:relative;
  z-index: 1;
}
nav.shift ul li a:hover {
  color: #91640F;
}
nav.shift ul li a:after {
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  margin: auto;
  width: 100%;
  height: 1px;
  content: '.';
  color: transparent;
  background: #F1C40F;
  visibility: none;
  opacity: 0;
  z-index: -1;
}
nav.shift ul li a:hover:after {
  opacity: 1;
  visibility: visible;
  height: 100%;
}

/* By Dominik Biedebach @domobch */

/* Blend */
nav.blend ul li a {
  position: relative;
  border-radius: 5px;
  overflow: hidden;
  z-index: 1;
}
nav.blend ul li a:hover {
  color: #fff;
}
nav.blend ul li a:before,
nav.blend ul li a:after {
  position: absolute;
  width: 0px;
  height: 100%;
  top: 0;
  bottom: 0;
  background: #D35400;
  transition: all .5s;
  margin: auto;
  content: '.';
  color: transparent;
  z-index: -1;
  opacity: 0.75;
}
nav.blend ul li a:before {
  left: 0;
}
nav.blend ul li a:after {
  right: 0;
}

nav.blend ul li a:hover:after,
nav.blend ul li a:hover:before {
  width: 100%;
}

/* DROWN */

nav.drown ul li a {
  position: relative;
  overflow: hidden;
  z-index: 1;
}

nav.drown ul li a:hover {
  color: #fff;
}

nav.drown ul li a:before {
  background: #fff;
  content: '.';
  color: transparent;
  position: absolute;
  width: 500%;
  top: 100px;
  right: 300px;
  height: 300px;
  z-index: -1;
}
nav.drown ul li a:hover:before {
  left: auto;
  bottom: auto;
  right: -50%;
  top: 0;
  background: #89C52B;
}



/* Keyframes */
@-webkit-keyframes fill {
  0% {
    width: 0%;
    height: 1px;
  }
  50% {
    width: 100%;
    height: 1px;
  }
  100% {
    width: 100%;
    height: 100%;
    background: #2ECC71;
  }
}

/* Keyframes */
@-webkit-keyframes circle {
  0% {
    width: 1px;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    margin: auto;
    height: 1px;
    z-index: -1;
    background: #eee;
    border-radius: 100%;
  }
  100% {
    background: #aaa;
    height: 5000%;
    width: 5000%;
    z-index: -1;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    border-radius: 0;
  }
}
</style>
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
		<div class="container my-2">
			<h1>Complaint Details</h1>
			<div class="add"></div>

			<!--<form:form action="/assignTeam/${complaint.complaintId }"
				modelAttribute="complaint" method="POST">-->

			<table border="1" class="table table-striped table-responsive-md"
				id="table">
				<tbody>
					<tr>
						<th class="data">Complaint Id</th>

						<td class="data1">${complaint.complaintId }</td>



					</tr>


					<tr>
						<th class="data">Date</th>

						<td class="data1">${complaint.date }</td>




					</tr>
					<tr>
						<th class="data">User Id</th>
						<td class="data1">${complaint.userId }</td>
					</tr>
					<tr>
						<th class="data">User Name</th>
						<td class="data1">${user.firstName }</td>
					</tr>
					<tr>
						<th class="data">User Email Id</th>
						<td class="data1">${user.email}</td>
					</tr>
					<tr>
						<th class="data">Complaint Category
						<td class="data1">${complaint.categoryName }</td>
						</th>
					</tr>
					<tr>
						<th class="data">Complaint Statement</th>
						<td class="data1">${complaint.complaintStatement }</td>
					</tr>

				</tbody>
			</table>
			<div class="add">
				<button id="add" onclick="exportData()"
					class="btn btn-primary btn-sm mb-3">Download</button>
			</div>
			<!--  <a class="back" href="/categories"> Back to Complaint List</a>-->
			</form:form>
		</div>
	</div>
</body>
</html>