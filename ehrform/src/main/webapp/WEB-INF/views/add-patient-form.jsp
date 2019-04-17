<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				
          <form class="form-horizontal">
		     <p class="h4 mb-4 text-center" style = " color : blue " >Patient Information</p>
		     <br/><br/>
			   <br/><br/>
			
				  
		    <div>
			
             <label class="control-lable col-md-7" > First Name:  <input type="text" id="defaultFormFirstName"  class="form-control" placeholder="First name"/> </label>
                <br/><br/>
			
             <label class="control-lable col-sm-7">   Second Name:  <input type="text" id="defaultFormSecondName" class="form-control" placeholder="Second name"/> </label>
            <br/><br/>
			
			 <label class="control-lable col-sm-7"> Last Name:  <input type="text" id="defaultFormLastName" class="form-control" placeholder="Last name"/> </label>
              <br/><br/>
			  
			 <label class="control-lable col-sm-7">    Age:  <input type="text" id="defaultFormAge" class="form-control" placeholder="Age"/> </label>
               <br/><br/>
			   
			   <div class="demo">
			 <label class="control-lable col-sm-7">   Date:   <input type="text" id="datepicker" class="form-control" placeholder="Date"/></label>
               </div>
			   <br/><br/>
			   <br/><br/>
			   <br/><br/>
			   <br/><br/>
			   <br/><br/>
			   <br/><br/>
			   <br/><br/>
		
			 <label class="control-lable col-sm-7">  Heart Rate:   <input type="text" id="defaultFormAge" class="form-control" placeholder="heart rate"></label>
               <br/><br/>
			   
			 <label class="control-lable col-sm-7">  Temperature:   <input type="text" id="defaultFormAge" class="form-control" placeholder="Temperature"></label>
               <br/><br/>
			   
			  <label class="control-lable col-sm-7">  Blood Pressure:   <input type="text" id="defaultFormAge" class="form-control" placeholder="blood Pressure"></label>
                 <br/><br/>
			   <br/><br/>
			   <br/><br/>
			
				<div class="col-sm-5">
               <button class="btn btn-info my-4 btn-block " type="submit">Reset</button>
               			   
			   <button class="btn btn-info my-4 btn-block" type="submit">Add Patient</button>			   
				</div>
				</div>
            </form> 



</body>
</html>