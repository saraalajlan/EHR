<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script src="js/bootstrap.js"></script>
<script src="css/bootstrap.cs"></script>
<title>List of Patients</title>
</head>
<body>
<h1>List of Patients</h1>
<p>Here you can see the list of the teams.</p>
<div class="table-wrapper-scroll-y my-custom-scrollbar">
<table border="1px" cellpadding="0" cellspacing="0"class="table table-hover" >
<thead>
<tr>
<th width="10%" scope="col">ID</th>
<th width="15%" scope="col">First Name</th>
<th width="10%" scope="col">Second Name</th>
<th width="10%" scope="col">Last Name</th> 
<th width="10%" scope="col">Age</th> 
<th width="10%" scope="col">Date of Birth</th> 
<th width="10%" scope="col">Heart Rate</th>
<th width="10%" scope="col">Temperature</th> 
<th width="10%" scope="col">Blood Pressure</th>
</tr>
</thead>
<tbody>
<c:forEach var="patient" items="${patient}">
<tr>
	<th scope="row">${patient.patientId}</th>
	<td>${patient.firstName}</td>
	<td>${patient.secondName}</td>
	<td>${patient.lastName}</td>
	<td>${patient.DOB}</td>
	<td>${patient.heartRate}</td>
	<td>${patient.temprature}</td>
	<td>${patient.bloodPressure}</td>
	<td>${patient.rating}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
<!--  <p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p> -->

</body>
</html>