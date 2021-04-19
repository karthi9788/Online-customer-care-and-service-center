<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type = "text/css" href = "css/editprofile.css">

<!------ Include the above in your HEAD tag ---------->
<style>
@charset "ISO-8859-1";
body {
	background:
		url(https://wallpaper.dog/large/5486500.png);
		background-attachment: fixed;
		 background-repeat: no-repeat;
}

.form-control {
    display: block;
    width: 80%;
    padding: .375rem .75rem;
    font-size: 1rem;
     font-weight:700;
    line-height: 2.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    border-radius: 25px; 
}

.note
{
    text-align: center;
    color: red;
    font-weight: bold;
    line-height: 80px;
    font-size:43px;
    margin-bottom: 3%;
    margin-left:-9%
}
.container {
    width: 100%;
    padding-right: 15px;
     padding-left: 15px;
    margin-right: auto;
    margin-left: 20%;
    margin-top: 1%;
}
.btnSubmit {
background-color: red; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius:25px;
}
.form-group {
    margin-bottom: 50px;
}

select {
	height : 50px;
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
      padding-left:1.3%
   }
.label {
 	background-color:transparent;
    color:darkblack;
     font-size: 20px;
      font-weight:strong;
}

@charset "ISO-8859-1";

nav ul {
	list-style: none;
	text-align: center;
	padding-top: -1.2%;
	margin-left: -1.5%
}

nav ul li {
	display: inline-block;
}

nav ul li a {
	display: block;
	padding: 15px 20px;
	text-decoration: none;
	color:dimgrey;
	font-weight: 600;
	font-size: 26px;
	margin: 0 10px;
	font-family: calibri;
	margin-left: -2%
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
100%
{
background:#aaa;
height:5000%;
width:5000%;
z-index:-1;
top:0;
bottom:0;
left:0;
right:0;
margin:auto;
border-radius:0;
}
}
</style>
</head>
<body>
	<header>Online Customer Care and Service Center</header>
	<nav class="circle">
		<ul>
			<li><a href="/returnToHome/${user.userId}">Home</a></li>
			<li><a href="/profilepage">Profile</a></li>
			<li><a href="/userlogin">Logout</a></li>
		</ul>
	</nav>
	<div class="container register-form">
            <div class="form">
             <div class="note">
                   <center> <p>Edit Profile</p></center>
                </div>
                	<form:form modelAttribute="profile"
									action="/changeProfile/${user.userId }" >
                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                            <form:label for="firstName" class="label" path="firstName">First Name</form:label>
                                <form:input type="text" class="form-control" path = "firstName" placeholder="First Name*" value="${user.firstName }" required="required"/>
                           		<form:errors path = "firstName"  class = "error" />
                            </div>
                             <div class="form-group">
                             <form:label for="email" class="label" path="email">Email</form:label>
                                <form:input type="email" class="form-control" path = "email" placeholder="E mail *" value="${user.email }" required="required"/>
                            	<form:errors path = "email" class = "error" />
                            </div>
                        </div>
                        <div class="col-md-6">
                           
                            <div class="form-group">
                            <form:label for="lastName" class="label" path="lastName">Last Name</form:label>
                                <form:input type="text" class="form-control" path = "lastName" placeholder="Last Name *" value="${user.lastName }" required="required" />
                            </div>
                             <div class="form-group">
                             <form:label for="contactNumber" class="label" path="contactNumber">Phone Number</form:label>
                                <form:input type="text" minlength="10" maxlength="10" path = "contactNumber" class="form-control" placeholder="Contact Number *" value="${user.contactNumber }" required="required"/>
                                <form:errors path = "contactNumber"  class = "error" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                            <form:label for="dob" class="label" path="dob">Date Of Birth</form:label>
                                <form:input id="dob" type="date" path="dob" class="form-control" placeholder="Date Of Birth *" value="${user.dob }" required="required"/>
                            </div>
                             <div class="form-group">
                             <form:label for="secretQuestion" class="label" path="secretQuestion">Secret Question</form:label>
                             <form:select class="form-control" path="secretQuestion"
													 id="secretQuestion" >
														<c:forEach var="item" items="${secretQuestion}">
															<c:choose>
																<c:when test="${user.secretQuestion==item}">
																	<form:option selected="true" value="${item}">
																	</form:option>
																</c:when>
																<c:otherwise>
													<form:option value="${item }">
													</form:option>
												</c:otherwise>
															</c:choose>
														</c:forEach>
													</form:select>
                            </div>
                    </div>
                     <div class="col-md-6">
                      <div class="form-group">
                      <form:label for="gender" class="label" path="gender">Gender</form:label>
                                <form:select path = "gender"  placeholder = "Gender" class="form-control" id="gender" required="required" >
                                	<c:forEach var="item" items = "${gender}">
															<c:choose>
																<c:when test="${user.gender==item}">
																	<form:option selected="true" value="${item}">
																	</form:option>
																</c:when>
																<c:otherwise>
													<form:option value="${item }">
													</form:option>
												</c:otherwise>
															</c:choose>
														</c:forEach>
													</form:select>
                            </div>
                            <div class="form-group">
                            <form:label for="answer" class="label" path="answer">Answer</form:label>
                              <form:input id="answer" type="text" class="form-control"
													path="answer" placeholder="Answer" value="${user.answer }" required="required"/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                            <form:label for="designation" class="label" path="designation">Designation</form:label>
                              <form:select path = "designation"  placeholder = "designation" class="form-control" id="designation" required="required" >
                                	<c:forEach var="item" items = "${designation}">
															<c:choose>
																<c:when test="${user.designation==item}">
																	<form:option selected="true" value="${item}">
																	</form:option>
																</c:when>
																<c:otherwise>
													<form:option value="${item }">
													</form:option>
												</c:otherwise>
															</c:choose>
														</c:forEach>
													</form:select>
                            </div>
            </div>
           <div class="col-md-6"></div> <div class="col-md-6"></div>
            <div ><input type="submit" class="btnSubmit" name="submit"
													value="Submit"></div>
            </div>
        </div>
        </form:form>
        </div>
        </div>
</body>
</html>