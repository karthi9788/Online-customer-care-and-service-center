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
<title>Complaint Registration</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/forgotid.css">

</head>
<body>
	<header>
		Online Customer Care and Service Center</header>
	<div class="div">
	</div>
	<div class="body">
		<div class="container">
			<div class="content">
			
				<form:form action="/userId" modelAtrribute="command"
					method="GET">
					<br /><br /><br /><br /><br /><br />
					<form:label  for="email"  class="label" path = "email" required = "required">Email</form:label><br />
					<form:input id="email" type="email" class="input" path = "email" placeholder="Enter your Email" /><br /><br/>
					<form:label  for="secretQuestion1"  class="label" path = "secretQuestion">Secret Question</form:label>
					<form:select class = "input" path="secretQuestion" items="${secretQuestion}" id="secretQuestion1" required = "required"/>
					<form:label  for="answer"  class="label" path = "answer" required = "required">Answer</form:label><br />
					<form:input id="answer" type="text" class="input" path = "answer" placeholder="Enter your answer" />
					<br /><br />
					<button type="submit" id="but" class="btn btn-info col-2">Submit</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>