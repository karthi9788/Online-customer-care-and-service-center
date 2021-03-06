<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Online Customer Care and Service Center</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/CustomerCare/src/main/resources/static/css/add-update.css">
<style type="text/css">
@charset "ISO-8859-1";
body {
	background:
		url(https://wallpaper.dog/large/5486500.png);
		background-attachment: fixed;
		 background-repeat: no-repeat;
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
      padding-right:1.3%
   }


.body {
	margin-top: 7%;
	margin-left: 25%;
	margin-right: 25%;
	padding-top: 10px;
	padding-bottom: 20px;
	border-radius: 0.5rem;
}

.container {
	width: 200%;
	margin-left: 28%
}

input {
	width: 250%;
}

.form-control {
	display: block;
	width: 200%;
	height: calc(2.25rem + 10px);
	font-size: 22px;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .3rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	padding-top: 1px;
	margin-left:-3%;
}
.col-4 {
    -ms-flex: 0 0 33.333333%;
    flex: 0 0 33.333333%;
    max-width: 40.333333%; 
}

.h1, h1 {
	padding-bottom: 2%;
	padding-left: 5%;
}

button {
	margin-left: 8%;
	margin-bottom: 2%;
	font-size: 20%;
}

.btn-info {
	color: #fff;
	background-color: #fe524a;
}
.btn-info:hover {
	color: #fff;
	background-color:#e83931;
	border-color: #e83931;
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

	font-size: 25px;
	line-height: 1.5;
	border-radius: .25rem;
	transition: color .15s ease-in-out, background-color .15s ease-in-out,
		border-color .15s ease-in-out, box-shadow .15s ease-in-out;
		padding:5px;
}
.home {
	margin-left:51.9%;
	margin-top: 2%;
	font-size: 25px;
}

.a2 {
	padding-left: 15px;
}
.a1 {
	padding-left: 100px;
}
label {
    display: inline-block;
    margin-bottom: .5rem;
    font-size: 23px;
    margin-left:-2.7%
}
a {
	text-align: left;
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
		<div class="container">
			<div class="content">
				<h1>Update Category</h1>

				<form:form action="/editCategory/${category.categoryId }"
					modelAtrribute="category" method="POST">

					<input type="hidden" value="${category.categoryId }" />
					<form:input id="categoryName" path="categoryName"
						class="form-control mb-4 col-4" value="${category.categoryName }" />
					<form:input type="text" id="description" path="description"
						class="form-control mb-4 col-4" value="${category.description }" />

					<button type="submit" class="btn btn-info col-2">Update</button>
					<!--  <a class="back" href="#"> Back to Category List</a>-->
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>