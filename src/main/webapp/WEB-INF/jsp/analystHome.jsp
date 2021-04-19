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
<link rel="stylesheet" type="text/css" href="css/analystHome.css">


<script language="javascript" type="text/javascript"
	src="js/analysthome.js"></script>
</head>

<body>
	<header>Online Customer Care and Service Center</header>
	<nav class="circle">
		<ul>
			<!-- <li><a href="/complaintStatusForAnalyst">Complaints Status</a></li> -->
			<li><a href="/profilepage">Profile</a></li>
			<li><a href="/userlogin">Logout</a></li>
		</ul>
	</nav>

	<div class="body">
		<div class="container ">
			<h1 class="h1">Complaints</h1>
			<input type="text" id="myInput" onkeyup="myFunction()"
				placeholder="Search..." title="Type in a name">
			<table border="1" class="table table-striped table-responsive-md"
				id="myTable">
				<thead>
					<tr>
						<th onclick="sortTable(0)" class="data">Complaint Id</th>
						<th onclick="sortTable(1)" class="data">Date</th>
						<th onclick="sortTable(2)" class="data">User Id</th>
						<th onclick="sortTable(3)" class="data">Complaint Category</th>
						<th class="data">Complaint Statement</th>

						<th class="data">Status</th>
						<th class="data">Next Level Analyst (If Required)</th>
						<th class="data">Action</th>
						<th class="data">View</th>
					</tr>
				</thead>

					<c:forEach items="${complaintList }" var="complaint">
						<form:form action="/assignTeamByAnalyst/${complaint.complaintId }"
							modelAttribute="complaint" method="POST">
							<tr>
								<td class="data1">${complaint.complaintId }</td>
								<td class="data1">${complaint.date }</td>
								<td class="data1">${complaint.userId }</td>
								<td class="data1">${complaint.categoryName }</td>

								<td class="data1">${complaint.complaintStatement }</td>

								<td class="data1"><form:select id="status" path="status"
										 class="form-control mb-4 col-4">
										
										<c:forEach var="item" items="${statusList}">
											<c:choose>
												<c:when test="${complaint.status==item}">
													<form:option selected="true" value="${item}">

													</form:option>
												</c:when>
                                        	<c:otherwise>
													<form:option value="${item }">

													</form:option>

												</c:otherwise>
											</c:choose>
										</c:forEach>
									
									
									
									
									
									</form:select></td>
								<td class="data1"><form:select id="levelOfIssue"
										path="levelOfIssue" 
										class="form-control mb-4 col-4">
									
											<c:forEach var="item" items="${level}">
											<c:choose>
												<c:when test="${complaint.levelOfIssue==item}">
													<form:option selected="true" value="${item}">

													</form:option>
												</c:when>
	<c:otherwise>
													<form:option value="${item }">

													</form:option>

												</c:otherwise>
											</c:choose>
										</c:forEach>
									
									
									
									
									</form:select></td>
								<td class="data1"><div class="add">
										<button id="add" class="btn btn-primary btn-sm mb-3">Submit</button>
									</div></td>
								<td class="data1"><div class="add">
										<a id="add" class="btn btn-primary btn-sm mb-3"
											href="/viewComplaintForAnalyst/${complaint.complaintId }">View</a>
									</div></td>
							</tr>
						</form:form>
					</c:forEach>
				<tbody>
				</tbody>
			</table>
			<div id="pageNavPosition" class="pager-nav"></div>
		</div>
	</div>
	<script type="text/javascript" src="js/PagerJS.js"></script>
</body>
</html>