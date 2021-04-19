<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/profile.css">

</head>
<body>
	<header>
		Online Customer Care and Service Center </header>
		<nav class="circle">
    <ul>
      <li><a href="/returnToHome/${userId}">Home</a></li>
      <li><a href="/editprofile/${userId }">Edit Profile</a></li>
      <li><a href="/userlogin">Logout</a></li>
    </ul>
  </nav>
	<div class="container emp-profile">
		<form method="post">
			<div class="row">
				<div class="col-md-6">
					<div class="profile-head">
						<h5>${userName }</h5>
						<h6>${userType}</h6>
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4"></div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								<div class="col-md-6">
									<label>User Id</label>
								</div>
								<div class="col-md-6">
									<p>${userId }</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Name</label>
								</div>
								<div class="col-md-6">
									<p>${firstName }</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>D.O.B</label>
								</div>
								<div class="col-md-6">
									<p>${dob }</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Gender</label>
								</div>
								<div class="col-md-6">
									<p>${gender }</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Designation</label>
								</div>
								<div class="col-md-6">
									<p>${designation}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Phone</label>
								</div>
								<div class="col-md-6">
									<p>${contactNumber }</p>
								</div>
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>