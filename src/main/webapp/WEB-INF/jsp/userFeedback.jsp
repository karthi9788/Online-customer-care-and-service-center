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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/userfeedback.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
<style>
@charset "ISO-8859-1";

body {
	background:
		url(https://wallpaper.dog/large/5486500.png);
		background-attachment: fixed;
		 background-repeat: no-repeat;
}

.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
	margin-bottom: .5rem;
	font-family: inherit;
	font-weight: 500;
	line-height: 1.2;
	color: red;
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
	margin-left: 66.2%;
	margin-top: 2%;
	font-size: 25px;
}

.body {
	margin-top: 1.5%;
	
	padding-top: 10px;
	padding-bottom: 20px;
	border-radius: 0.5rem;
	padding-top: 10px;
}

.container {
	margin-top: 2.3%;
	text-align: center;
}

input {
	width: 250%;
}

.form-control {
	display: block;
	width: 100%;
	/* height: calc(2.25rem + 2px); */
	padding: .375rem .75rem;
	font-size: 19.5px;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	text-align: center
}

.h2, h2 {
	font-size: 2rem;
	padding-bottom: 2%;
	padding-left: 2%;
}

h1 {
	text-align: center;
}

button {
	margin-left: 8%;
	margin-bottom: 2%;
	font-size: 10px;
}

.back {
	font-size: 20px;
	padding-bottom: 2%;
	padding-left: 8%;
}

.btn {
	display: inline-block;
	font-weight: 400;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	padding: .375rem .75rem;
	font-size: 20px;
	line-height: 1.5;
	border-radius: .25rem;
	transition: color .15s ease-in-out, background-color .15s ease-in-out,
		border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.btn-primary {
	color: #fff;
	background-color: #4e4649a3;
	border-color: gray;
	margin-bottom: 10px;
}

.btn-primary:hover {
	color: #fff;
	background-color: dimgrey;
	border-color: gray;
}

.btn-danger {
	color: #fff;
	background-color: #fd5247;
	border-color: #fe5549;
}

.a2 {
	padding: 15px;
}

a {
	text-align: left;
}

th {
	background-color: gray;
	color: white;
	font-weight: 500;
}

table {
	border-collapse: separate;
	border-radius: 0.5rem;
}

.data {
	font-size: 23px;
}

.add {
	margin-left: 86.5%;
}

#add {
	padding: 8px 8px 8px 8px;
	font-size: 20px;
}

.data1 {
	font-size: 26px;
}

.a1 {
	padding-left: 100px;
}

@charset "ISO-8859-1";

nav ul {
	list-style: none;
	text-align: center;
	padding-right:3%
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
	margin: 0 10px;
	font-size:24px
}
dl, ol, ul {
    margin-top: 10px;
    margin-bottom: 1rem;
}

nav ul li a, nav ul li a:after, nav ul li a:before {
	transition: all .5s;
}

nav ul li a:hover {
	color: #555;
}

/* By Dominik Biedebach @domobch */

/* stroke */
nav.stroke ul li a, nav.fill ul li a {
	position: relative;
}

nav.stroke ul li a:after, nav.fill ul li a:after {
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
	position: relative;
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

nav.blend ul li a:before, nav.blend ul li a:after {
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

nav.blend ul li a:hover:after, nav.blend ul li a:hover:before {
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
@
-webkit-keyframes fill { 0% {
	width: 0%;
	height: 1px;
}

50


%
{
width


:


100
%;


height


:


1px
;


}
100


%
{
width


:


100
%;


height


:


100
%;


background


:


#2ECC71
;


}
}

/* Keyframes */
@
-webkit-keyframes circle { 0% {
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
100


%
{
background


:


#aaa
;


height


:


5000
%;


width


:


5000
%;


z-index


:


-1
;


top


:


0
;


bottom


:


0
;


left


:


0
;


right


:


0
;


margin


:


auto
;


border-radius


:


0
;


}
}
.inp{
height:100%;
width:100%;
}
</style>
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
			<h1>Feedback</h1>

				<form:form action="/userfeed/${userId}" modelAttribute="review"
				method="POST">
				<table border="1" class="table table-striped table-responsive-md">
					<thead>
						<tr>

							<th class="data">S.no</th>
							<th class="data">Question</th>
							<th class="data">Feedback</th>
						</tr>
					</thead>

					<tbody>
					
						<c:forEach items="${reviewlist }" var="review">
					
							<tr>
								<td class="data1">${review.questionId }</td>
								<td class="data1">${review.question }</td>
								<td class="data1"><form:input type="text" class="inp"
										for="${review.question }" id="feedback" path="feedback" /></td>
										
							</tr>
							
						
							
						</c:forEach>	
					</tbody>
				</table>
				
				<div><button type="submit" class="btn btn-primary btn-sm mb-3">Submit Feedback</button></div>
			</form:form>
		</div>
	</div>
</body>
</html>