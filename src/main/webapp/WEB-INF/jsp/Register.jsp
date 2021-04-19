<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type = "text/css" href = "css/register.css">

</head>
<body>
<header>Online Customer Care and Service Center
</header>
<div class="container register-form">
            <div class="form">
             <div class="note">
                   <center> <p>Registration</p></center>
                </div>
                	<form:form modelAttribute="register" action="/success"
								method="GET">
                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <form:select  class="form-control" path = "userType"  placeholder="Role" items ="${roles}" />
                            	<form:errors path = "userType" class = "error" />
                            </div>
                            <div class="form-group">
                                <form:input type="text" class="form-control" path = "firstName" placeholder="First Name*" required="required"/>
                           		<form:errors path = "firstName"  class = "error" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <form:input type="email" class="form-control" path = "email" placeholder="E mail *" required="required"/>
                            	<form:errors path = "email" class = "error" />
                            </div>
                            <div class="form-group">
                                <form:input type="text" class="form-control" path = "lastName" placeholder="Last Name *" required="required" />
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="form-group">
                                <form:select type="text" class="form-control" path="designation" items="${designation}" placeholder="Designation *"   />
                            </div>
                            <div class="form-group">
                                <form:input type="text" minlength="10" maxlength="10" path = "contactNumber" class="form-control" placeholder="Contact Number *" required="required"/>
                                <form:errors path = "contactNumber"  class = "error" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <form:input id="dob" type="date" path="dob" class="form-control" placeholder="Date Of Birth *" required="required"/>
                            </div>
                            <div class="form-group">
                                <form:select path = "gender" items = "${gender}" placeholder = "Gender" class="form-control" id="gender" required="required" />
                            </div>
                    </div>
                     <div class="col-md-6">
                            <div class="form-group">
                             <form:select class="form-control" path="secretQuestion"
													items="${secretQuestion}" id="secretQuestion1" />
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="form-group">
                              <form:input id="answer" type="text" class="form-control"
													path="answer" placeholder="Answer" required="required"/>
                            </div>
                            </div>
                              <div class="col-md-6">
                            <div class="form-group">
                              <form:input id="password" type="text" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" class="form-control"
													path="password" placeholder="password" required="required" />
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="form-group">
                              <sf:select class="form-control" path="analystLevel"
													items="${levelsAvailable}" id="level" required="required"/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                            </div>                 
            </div>
           
            <div ><input type="submit" class="btnSubmit" name="submit"
													value="Submit"></div>
            </div>
        </div>
        </form:form>
        </div>
        </div>
</body>
</html>