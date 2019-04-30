<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<link rel="icon" type="image/png"
	href="<c:url value='/resources/img/logoo.png'/>">

<link href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css" rel="stylesheet" />

<link href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap.min.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css" />

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>

<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap4.min.js "></script>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Pateint form</title>

    <!--Bootstrap Latest compiled CSS and JS  -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- jQuery library -->
    <script type="text/javascript" src="//code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.0.js" integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo=" crossorigin="anonymous"></script>

    <!-- JQuery Validation -->	
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>

    <!-- Include ehr validation js file and styling sheet  -->
    <script src="<c:url value='/resources/js/formValidation.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
    
    
   
</head>
<header class="headerf">
 <h4 class="header_text">PATIENTS FORM</h4>
	<img src="<c:url value='/resources/img/logoo.png'/>" width="50" class="logo" /> <var>
		<ul>
			<li><a href="${pageContext.request.contextPath}/patient">Home</a></li>
			<li><a href="${pageContext.request.contextPath}/patient/list">List of patients</a></li>
		</ul>
	</var>
</header>
<body id="formbody">
    <div class="container">
      
        <div class="ehr-left"></div>
        <div id="Sucessalert" class="alert alert-success" id="ehr-grid-submit">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Submitted
				:D!</strong> Patient added to DB successfully.
        </div>
        <div class="ehr-grid-topright"></div>
        <div class="ehr-right"></div>

        <div class="ehr-grid-form">
            <c:url var="addAction" value="/patient/save"></c:url>
            <form:form id="patientForm" action="${addAction}" commandName="patient" method="POST" class="form-group">

                <div class="table-div">
                    <table>
                        <tr>
                            <td>
                                <form:label path="firstName" class="control-lable col-md"> First Name: </form:label>
                            </td>
                            <td>
                                <form:input path="firstName" type="text" id="defaultFormFirstName" class="form-control" placeholder="First name" />
                                <span id="errFirstName" class="errMsg" style="color: red"></span></td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="secondName" class="control-lable col-md"> Second Name: </form:label>
                            </td>
                            <td>
                                <form:input path="secondName" type="text" id="defaultFormSecondName" class="form-control" placeholder="Second name" /> 
                                <span id="errsScondName" class="errMsg" style="color: red"></span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="lastName" class="control-lable col-md"> Last Name: </form:label>
                            </td>
                            <td>
                                <form:input path="lastName" type="text" id="defaultFormLastName" class="form-control" placeholder="Last name" /> 
                                <span id="errLastName" class="errMsg" style="color: red"></span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="age" class="control-lable col-md"> Age: </form:label>
                            </td>
                            <td>
                                <form:input path="age" type="text" id="defaultFormAge" class="form-control" placeholder="Age" /> 
                                <span id="errAge" class="errMsg" style="color: red"></span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="dateOfBirth" class="control-lable col-md"> Date: </form:label>
                            </td>
                            <td>
                                <form:input path="dateOfBirth" type="date" name="dateOfBirth" id="dateOfBirth" class="form-control" placeholder="Date" /> 
                                <span id="errDob" class="errMsg" style="color: red"></span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="heartRate" class="control-lable col-md"> Heart Rate:
                                </form:label>
                            </td>
                            <td>
                                <form:input path="heartRate" type="text" id="defaultFormHeatrate" class="form-control" placeholder="heart rate" /> 
                                <span id="errHeartrate" class="errMsg" style="color: red"></span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="temperature" class="control-lable col-md"> Temperature: </form:label>
                            </td>
                            <td>
                                <form:input path="temperature" type="text" id="defaultFormTemperature" class="form-control" placeholder="Temperature" /> 
                                <span id="errTemp" class="errMsg" style="color: red"></span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="bloodPressure" class="control-lable col-md"> Blood Pressure: </form:label>
                            </td>
                            <td>
                                <form:input path="bloodPressure" type="text" id="defaultFormBloodPressure" class="form-control" placeholder="blood Pressure" />
                                <span id="errBlood" class="errMsg" style="color: red"></span></td>
                        </tr>
                    </table>
                </div>
                <div class="btnDiv">

                    <button id="btnClear" type="button" class="btn btn-info btn-lg-4" >Clear</button>
                    <button type="submit" id="btnAdd" class="btn btn-primary btn-lg-4">Add Patient</button>
                </div>

            </form:form>
            

        </div>
        <div class="ehr-grid-img">
          <!-- <img id="ImgBg" src="<c:url value='/resources/img/EhrImg.png'/>" >-->
        </div>
    </div>
</body>

</html>