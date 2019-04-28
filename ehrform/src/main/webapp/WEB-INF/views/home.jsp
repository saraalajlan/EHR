<%@ page language="java" contentType="text/html; charset=UTF-8"

                pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8" />

 

<title>Electronic Health Record</title>

<link rel="stylesheet" type="text/css"

                href="<c:url value='/resources/css/style.css'/>">

 

<link rel="icon" type="image/png"

                href="<c:url value='/resources/img/logoo.png'/>">

<!--  -->

<style>

#Logo {

                width: 100px;

                height: 80px;

                margin: 10px;

}

 

#homePage {

                background-image: url("<c:url value='/resources/img/bg.jpg'/>");

                background-repeat: no-repeat;

                background-size: 100vw 100vh;

}

</style>

</head>

<body id="homePage">

 

                <img id="homeLogo" src="<c:url value='/resources/img/logoo.png'/>">

                <div id="intro">

                                <h1>WELCOME</h1>

                                <h4>To Electronic Health Record Application!</h4>

                                <button onclick="location.href='patient/add'">

                                                <img

                                                                src="<c:url value='/resources/img/icons8-add-user-group-man-man-filled-50.png'/>">

                                                <br />Add Patient

                                </button>

                                <button onclick="location.href='patient/list'">

                                                <img id="listImg"

                                                                src="<c:url value='/resources/img/icons8-list-filled-24.png'/>">

                                                <br /> View Patients

                                </button>

                </div>

</body>

</html>