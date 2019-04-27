<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
  <html>

      <head>
        <title>Patient Form</title>
         
  	        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
			<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<script>
            $(function(){
            $("#datepicker").datepicker();
			});
            </script>
            
            <!-- Latest compiled and minified CSS -->
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
			<!-- jQuery library -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<!-- Latest compiled JavaScript -->
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		   
		   <!-- JQuery Validation -->
		    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
           
      </head>
	
	
      <body>
	 <c:url var="addAction" value="/patient/save" ></c:url> 
				
       <form:form  id="patientForm" action="${addAction}" commandName="patient">
		     <p class="h4 mb-4 text-center" style = " color : blue " >Patient Information</p>
		     <br/><br/>	
		     <center>
		     <table>	  
		    <tr>
		    <td><form:label path="firstName" class="control-lable col-sm-9" > First Name: </form:label> </td>
		    <td><form:input path="firstName" type="text" id="defaultFormFirstName"  class="form-control" placeholder="First name"/><span id="errfirstname" style = " color : red ">This field is required</span><td>
			</tr>
			
			<tr>
             <td><form:label path="secondName" class="control-lable col-sm-9">   Second Name: </form:label> </td> 
             <td><form:input path="secondName" type="text" id="defaultFormSecondName" class="form-control" placeholder="Second name"/><span id="errsecondname" style = " color : red ">This field is required</span></td> 
			<tr>
			
			<tr>
			 <td><form:label path="lastName" class="control-lable col-sm-9"> Last Name:  </form:label></td>
			 <td><form:input path="lastName" type="text" id="defaultFormLastName" class="form-control" placeholder="Last name"/>			 <span id="errlastname" style = " color : red ">This field is required</span>
			 </td>
			 </tr> 
			 
			 <tr>
			 <td><form:label path="age" class="control-lable col-sm-9">    Age:  
			 </form:label> </td>
			 <td><form:input path="age" type="text" id="defaultFormAge" class="form-control" placeholder="Age"/><span id="errage" style = " color : red ">This field is required</span>
			 </td>
			 </tr> 
			 
			 <tr>
			 <td><form:label path="dateOfBirth" class="control-lable col-sm-9">   Date: 
			 </form:label> </td>  
			 <td><form:input path="dateOfBirth" type="text" id="datepicker" class="form-control" placeholder="Date"/>			 <span id="errdob" style = " color : red ">This field is required</span>
			 </td>
             </tr>
             
		     <tr>
		     <td><form:label path="heartRate" class="control-lable col-sm-9">  Heart Rate: 
		     </form:label></td>
		     <td><form:input path="heartRate" type="text" id="defaultFormHeatrate" class="form-control" placeholder="heart rate"/>		     <span id="errheartrate" style = " color : red ">This field is required</span>
		     </td>
             </tr>
			 
			 <tr>
		     <td><form:label path="temperature" class="control-lable col-sm-9">  Temperature:  
		     </form:label></td>
		     <td><form:input path="temperature" type="text" id="defaultFormTemperature" class="form-control" placeholder="Temperature"/>		     <span id="errtemp" style = " color : red ">This field is required</span>
		     </td>
             
             <tr>
             <td><form:label path="bloodPressure" class="control-lable col-sm-9">  Blood Pressure: 
             </form:label></td>
             <td><form:input path="bloodPressure" type="text" id="defaultFormBloodPressure" class="form-control" placeholder="blood Pressure"/>             <span id="errblood" style = "color : red ">This field is required</span>
             </td>
             </tr>
           
			
			<tr>
              <td><button id="btnClear" type="button" class="btn btn-info btn-lg-4">Clear</button></td>  
              <td><button id="addBtn" type="button" class="btn btn-primary btn-lg-4">Add Patient</button></td>      			       			   
	        	<!-- <td><input type="submit" value="<spring:message text="Add Person"/>" /></td> -->	 
			</tr>	
			</table>
			</center>
            </form:form>
            
            <script>
			$(document).ready(function(){
				$('#btnClear').click(function(){				
					if(confirm("Want to clear?")){
						/*Clear all input type="text" box*/
						$('#patientForm input[type="text"]').val('');
						/*Clear textarea using id */
						$('#patientForm #txtAddress').val('');
					}					
				});
			});
		</script>
		
            <script>
            $(document).ready(function(){
            	$("#alertSuccess").hide();
            		$("#errfirstname").hide();
            		$("#errsecondname").hide();
            		$("#errlastname").hide();  //Initially hiding the error spans
            		$("#errage").hide();
            		$("#errdob").hide();
            		$("#errheartrate").hide();
            		$("#errtemp").hide();
            		$("#errblood").hide();

            		$("#addBtn").click(function() {
            			var firstName=$("#defaultFormFirstName").val();
            			var secondName=$("#defaultFormSecondName").val();
            			var lastName=$("#defaultFormLastName").val();
            			var age=$("#defaultFormAge").val();
            			var dateOfBirth=$("#datepicker").val();
            			var Heartrate=$("#defaultFormHeatrate").val();
            			var Tempperature=$("#defaultFormTemperature").val();
            			var BloodPressure=$("#defaultFormBloodPressure").val();
            			var bloodpressureFormat = /^\d{1,3}\/\d{1,3}$/;

            			 if(firstName=="" || firstName==null ||secondName==null || secondName==""
            					 ||lastName=="" || lastName==null ||age=="" || age==null
            					 ||dateOfBirth=="" || dateOfBirth==null ||Heartrate=="" || Heartrate==null
            					 ||Tempperature=="" || Tempperature==null ||BloodPressure=="" || BloodPressure==null){
            					$("#errfirstname").show();       
                    		    $("#errsecondname").show();
                    		    $("#errlastname").show();
                    		    $("#errage").show();
                    		    $("#errdob").show();
                    		    $("#errheartrate").show();
                    		    $("#errtemp").show();
            				    $("#errblood").show();	
            		    }else if(isNaN(age)){
            				alert("Age should contain Only Digits");
            		    }else if(isNaN(Heartrate)){
            				alert("Heart rate should contain Only Digits");
            		    }else if(isNaN(Tempperature)){
            				alert("Age should contain Only Digits");
            				}else if(!(BloodPressure.match(bloodpressureFormat))){
            				alert("Please Enter a valid format for the blood pressure");
            			}else{
            		        //$("#alertSuccess").show();
            				$("#patientForm").submit();
            			}
            			
            			});
            });
      		     </script>
            



</body>
</html>