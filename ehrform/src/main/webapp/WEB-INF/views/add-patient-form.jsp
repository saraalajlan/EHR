<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstlC" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
  <html>

      <head>
        <title>Patient Form</title>
		     <link rel="stylesheet" href="styles/kendo.common.min.css" />
             <link rel="stylesheet" href="styles/kendo.default.min.css" />
             <link rel="stylesheet" href="styles/kendo.default.mobile.min.css" />
             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
          <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/jquery-ui.min.js"></script>
          <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
          <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
          <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>
          <script>$(function() {  $( "#datepicker" ).datepicker();}); </script>
		  
      </head>
	
	
      <body>
		<jstlC:url var="addAction" value="/patient/save" ></jstlC:url>
				
       <form:form action="${addAction}" commandName="patient">
		     <p class="h4 mb-4 text-center" style = " color : blue " >Patient Information</p>
		     <br/><br/>			
		     <table>	  
		    <tr>
		    <td><form:label path="firstName" class="control-lable col-md-7" > First Name:  </form:label> </td>
		    <td><form:input path="firstName" type="text" id="defaultFormFirstName"  class="form-control" placeholder="First name"/><td>
			</tr>
			
			<tr>
             <td><form:label path="secondName" class="control-lable col-sm-7">   Second Name: </form:label> </td> 
             <td><form:input path="secondName" type="text" id="defaultFormSecondName" class="form-control" placeholder="Second name"/></td> 
			<tr>
			
			<tr>
			 <td><form:label path="lastName" class="control-lable col-sm-7"> Last Name:   </form:label></td>
			 <td><form:input path="lastName" type="text" id="defaultFormLastName" class="form-control" placeholder="Last name"/></td>
			 </tr> 
			 
			 <tr>
			 <td><form:label path="age" class="control-lable col-sm-7">    Age:   </form:label> </td>
			 <td><form:input path="age" type="text" id="defaultFormAge" class="form-control" placeholder="Age"/></td>
			 </tr> 
			 
			 <tr>
			 <td><form:label path="dateOfBirth" class="control-lable col-sm-7">   Date: </form:label> </td>  
			 <td><form:input path="dateOfBirth" type="text" id="datepicker" class="form-control" placeholder="Date"/></td>
             </tr>
             
		     <tr>
		     <td><form:label path="heartRate" class="control-lable col-sm-7">  Heart Rate:  </form:label></td>
		     <td><form:input path="heartRate" type="text" id="defaultFormAge" class="form-control" placeholder="heart rate"/></td>
             </tr>
			 
			 <tr>
		     <td><form:label path="temperature" class="control-lable col-sm-7">  Temperature:  </form:label></td>
		     <td><form:input path="temperature" type="text" id="defaultFormAge" class="form-control" placeholder="Temperature"/></td>
             
             <tr>
             <td><form:label path="bloodPressure" class="control-lable col-sm-7">  Blood Pressure:</form:label></td>
             <td><form:input path="bloodPressure" type="text" id="defaultFormAge" class="form-control" placeholder="blood Pressure"/></td>
             </tr>
           
			
			<tr>
				 <!--<div class="col-sm-5"> class="btn btn-info my-4 btn-block" -->
             <!--   <button class="btn btn-info my-4 btn-block " type="submit">Reset</button> -->
               			   
			   <td><input type="submit" value="<spring:message text="Add Person"/>" />   </td>
			   
			</tr>	
			</table>		
            </form:form> 



</body>
</html>