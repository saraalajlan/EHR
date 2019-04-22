<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="style.css" type="text/css"/>
<title>List of Patients</title>
<style>
body{
    text-align: center;
}
table {
  width: 60%;
  margin:50px auto;
  border-collapse: collapse;
}
h1{
    margin-top: 70px;
    }
thead{
    background-color: #19a0cc;
    color: white;
   }
  p{
    width:5vw;
    font-size: 30px;
    margin-left: 20VW;
    }

th, td {
  padding: 12px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}
tbody tr:hover {
background-color:#f5f5f5;
}
p:hover{
color:#19a0cc;
cursor:pointer;
}
</style>
</head>
<body>
<h1>List of Patients</h1>
<table>
<thead>
<tr>
<th>ID</th>
<th>First Name</th>
<th>Second Name</th>
<th>Last Name</th> 
<th>Age</th> 
<th>Date of Birth</th> 
<th>Heart Rate</th>
<th>Temperature</th> 
<th>Blood Pressure</th>
<th>Actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="patient" items="${patients}">
<tr>
	<th>${patient.patientId}</th>
	<td>${patient.firstName}</td>
	<td>${patient.secondName}</td>
	<td>${patient.lastName}</td>
	<td>${patient.age}</td>
	<fmt:formatDate type="date" value="${patient.dateOfBirth}" pattern="dd/MM/yyyy" var="Dob"/>
	<td>${Dob}</td>
	<td>${patient.heartRate}</td>
	<td>${patient.temperature}</td>
	<td>${patient.bloodPressure}</td>
	<td> <a href="${pageContext.request.contextPath}/patient/edit/${patient.patientId}.html">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/patient/delete/${patient.patientId}.html">Delete</a><br/> </td>
</tr>
</c:forEach>
</tbody>
</table>
<p onclick="goBack()">&#x21A9;</p>
<script>
function goBack(){
	window.history.back();
}
</script>
</body>
</html>