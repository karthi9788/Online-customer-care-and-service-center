<%@ page language="java" contentType="text/html; charset = ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="css/loginutil.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<header>Online Customer Care and Service Center </header>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-b-160 p-t-50">
				<sf:form class="login100-form validate-form" modelAttribute="Login"
					action="/signin" method="GET">
					<span class="login100-form-title p-b-43"> Account Login </span>

					<div class="wrap-input100 rs1 validate-input"
						data-validate="Username is required">
						<sf:input class="input100" type="text" id="firstName"
							path="firstName" placeholder="UserName" />

					</div>


					<div class="wrap-input100 rs2 validate-input"
						data-validate="Password is required">
						<sf:input class="input100" type="password" id="password"
							path="password" placeholder="Password" />
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Sign in</button>
					</div>
					<div class="msg">${userNameMsg } ${passwordMsg }</div>
					<div class="msg1">${msg }</div>
					<div class="text-center w-full p-t-23">
						<a href="/forgotId" class="txt1"> Forgot UserName? </a> <a
							href="/forgotpassword" class="txt1"> Forgot password? </a>
					</div>

					<div class="text-center w-full p-t-23">
						<p class="p">
							New User? <a href="/register" class="p1"> Sign-Up </a>
						</p>
					</div>

				</sf:form>
			</div>
		</div>
	</div>
</body>
</html>