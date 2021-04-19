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
<link rel="stylesheet" type="text/css" href="css/resetpassword.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">

</head>

<body>
	<header>Online Customer Care and Service Center</header>
	<div class="body">
		<div class="container">
			<div class="content">
				<h1>Password Reset</h1>
				<form:form action="/resetedSucess" modelAtrribute="command"
					method="GET">
					<form:label  for="password"  class="label" path = "password">New Password</form:label>
					<form:input class="form-control mb-4 col-4"  type = "text"
						path="password" placeholder="Password" />
					<br  /><br  />
					<button type="submit" class="btn btn-info col-2">Reset</button>
						<br />
					<!--  <a class="back" href="/categories"> Back to Category List</a>-->
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>