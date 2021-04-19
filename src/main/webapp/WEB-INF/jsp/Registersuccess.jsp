<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/register.css">
<style>
h1 {
	padding-top: 300px;
	font-size: 40px;
	font-weight: 200;
}

.a2 {
	margin-top: 8%;
	padding-top: 10%;
	font-size: 25px;
	color:blue
}

header {
	background-color: transparent;
	color: black;
	padding-top: 30px;
	padding-bottom: 15px;
	font-size: 40px;
	padding-right: 40px;
	padding-left: 20px;
	position: relative;
	text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header> Online Customer Care and Service Center </header>
	<center>
		<h1>${Role }Registration Successful !!</h1>
		<a class="a2" href="/login">Login</a>
	</center>
</body>
</html>