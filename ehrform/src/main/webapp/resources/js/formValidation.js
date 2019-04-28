// Wait for the DOM to be ready
$(function() {
	
	/* Hide all messages */
	$("#Sucessalert").hide();
	$("#errFirstName").hide();
	$("#errSecondName").hide();
	$("#errLastName").hide();
	$("#errAge").hide();
	$("#errDob").hide();
	$("#errHeartrate").hide();
	$("#errTemp").hide();
	$("#errBlood").hide();

	/* Input Validation */
	var errFname = false;
	var errSname = false;
	var errLname = false;
	var errAge = false;
	var errDob = false;
	var errHeartrate = false;
	var errTemperature = false;
	var errBloodpressure = false;

	/*foucus out each input field*/
	$("#defaultFormFirstName").focusout(function() {
		checkFirstName();
	});
	$("#defaultFormSecondName").focusout(function() {
		checkSecondName();
	});
	$("#defaultFormLastName").focusout(function() {
		checkLastName();
	});
	$("#defaultFormAge").focusout(function() {
		checkAge();
	});
	$("#dateofbirth").focusout(function() {
		checkDob();
	});
	$("#defaultFormHeatrate").focusout(function() {
		checkHeartRate();
	});
	$("#defaultFormTemperature").focusout(function() {
		checkTemperature();
	});
	$("#defaultFormBloodPressure").focusout(function() {
		checkBloodPressure();
	});

	
	/*Validation functions*/
	function checkFirstName() {	
		var charPattren = /^[a-zA-Z]*$/;
		var firstName = $("#defaultFormFirstName").val();
		if (firstName == null || firstName == "") {
			$("#errFirstName").html("Required field");
			$("#errFirstName").show();
			$("#defaultFormFirstName").css("border-bottom",
					"2px solid #F90A0A");
			errFname = true;
		} else if (!(firstName.match(charPattren))) {
			$("#errFirstName").html("Only letters no numbers");
			$("#errFirstName").show();
			$("#defaultFormFirstName")
					.css("border-bottom", "2px solid #F90A0A");
			errFname = true;
		} else {
			$("#errFirstName").hide();
			$("#defaultFormFirstName")
					.css("border-bottom", "2px solid #34F458");
			errFname = false;
		}
	}

	function checkSecondName() {
		var charPattren = /^[a-zA-Z]*$/;
		var secondName = $("#defaultFormSecondName").val();
		if (secondName == null || secondName == "") {
			$("#errsScondName").html("Required field");
			$("#errsScondName").show();
			$("#defaultFormSecondName").css("border-bottom",
					"2px solid #F90A0A");
			errSname = true;
		} else if (!(secondName.match(charPattren))) {
			$("#errsScondName").html("Only letters no numbers");
			$("#errsScondName").show();
			$("#defaultFormSecondName").css("border-bottom",
					"2px solid #F90A0A");
			errSname = true;
		} else {
			$("#errsScondName").hide();
			$("#defaultFormSecondName").css("border-bottom",
					"2px solid #34F458");
			errSname = false;
		}
	}
	function checkLastName() {
		var charPattren = /^[a-zA-Z]*$/;
		var lastName = $("#defaultFormLastName").val();
		if (lastName == null || lastName == "") {
			$("#errLastName").html("Required field");
			$("#errLastName").show();
			$("#defaultFormLastName").css("border-bottom",
					"2px solid #F90A0A");
			errLname = true;
		} else if (!(lastName.match(charPattren))) {
			$("#errLastName").html("Only letters no numbers");
			$("#errLastName").show();
			$("#defaultFormLastName")
					.css("border-bottom", "2px solid #F90A0A");
			errLname = true;
		} else {
			$("#errLastName").hide();
			$("#defaultFormLastName")
					.css("border-bottom", "2px solid #34F458");
			errLname = false;
		}
	}

	function checkAge() {
		var age = $("#defaultFormAge").val();
		if (age == null || age == "") {
			$("#errAge").html("Required field");
			$("#errAge").show();
			$("#defaultFormAge").css("border-bottom",
					"2px solid #F90A0A");
			errAge = true;
		} else if (isNaN(age)) {
			$("#errAge").html("Only numbers");
			$("#errAge").show();
			$("#defaultFormAge").css("border-bottom", "2px solid #F90A0A");
			errAge = true;
		} else if(age<1 ||age>150){
			$("#errAge").html("Age must be between 1-150");
			$("#errAge").show();
			$("#defaultFormAge").css("border-bottom", "2px solid #F90A0A");
			errAge = true;
		}else {
			$("#errAge").hide();
			$("#defaultFormAge").css("border-bottom", "2px solid #34F458");
			errAge = false;
		}
	}

	function checkDob() {
		var dateOfBirth = $("#dateofbirth").val();
		if (dateOfBirth == null || dateOfBirth == ""){
			$("#errDob").html("Required field");
			$("#errDob").show();
			$("#dateofbirth").css("border-bottom",
					"2px solid #F90A0A");
			errDob = true;
		}else{		
		$("#errDob").hide();
		$("#dateofbirth").css("border-bottom", "2px solid #34F458");
		errDob = false;
		}
	}

	function checkHeartRate() {
		var heartRate = $("#defaultFormHeatrate").val();
		if (heartRate == null || heartRate == "") {
			$("#errHeartrate").html("Required field");
			$("#errHeartrate").show();
			$("#defaultFormHeatrate").css("border-bottom",
					"2px solid #F90A0A");
			errHeartrate = true;
		} else if (isNaN(heartRate) ) {
			$("#errHeartrate").html("Only numbers");
			$("#errHeartrate").show();
			$("#defaultFormHeatrate").css("border-bottom", "2px solid #F90A0A");
			errHeartrate = true;
		} else if (heartRate < 0 || heartRate >300){
			$("#errHeartrate").html("Heart rate must be between 0-300");
			$("#errHeartrate").show();
			$("#defaultFormHeatrate").css("border-bottom", "2px solid #F90A0A");
			errHeartrate = true;
		}else {
			$("#errHeartrate").hide();
			$("#defaultFormHeatrate").css("border-bottom", "2px solid #34F458");
			errHeartrate = false;
		}
	}
	
	function checkTemperature() {
		var temperature = $("#defaultFormTemperature").val();
		if (temperature == null || temperature == "") {
			$("#errTemp").html("Required field");
			$("#errTemp").show();
			$("#defaultFormTemperature").css("border-bottom",
					"2px solid #F90A0A");
			errTemperature = true;
		} else if (isNaN(temperature)) {
			$("#errTemp").html("Only numbers");
			$("#errTemp").show();
			$("#defaultFormTemperature").css("border-bottom", "2px solid #F90A0A");
			errTemperature = true;
		} else {
			$("#errTemp").hide();
			$("#defaultFormTemperature").css("border-bottom", "2px solid #34F458");
			errTemperature = false;
		}
	}

	function checkBloodPressure() {
		var bloodPressure = $("#defaultFormBloodPressure").val();
		var bloodPressureFormat = /^\d{1,3}\/\d{1,3}$/;
		if (bloodPressure == null || bloodPressure == "") {
			$("#errBlood").html("Required field");
			$("#errBlood").show();
			$("#defaultFormBloodPressure").css("border-bottom",
					"2px solid #F90A0A");
			errBloodpressure = true;
} else if (!(bloodPressure.match(bloodPressureFormat))) {
			$("#errBlood").html("Please Enter a valid format for the blood pressure (systolic / diastolic mmHg)");
			$("#errBlood").show();
			$("#defaultFormBloodPressure").css("border-bottom",
					"2px solid #F90A0A");
			errBloodpressure = true;
		} else {
			$("#errBlood").hide();
			$("#defaultFormBloodPressure").css("border-bottom",
					"2px solid #34F458");
			errBloodpressure = false;
		}
	}
	
	
   /*onclick action for add patient button*/
	$('#btnAdd').click(function(){
		if(errFname==false &&errSname==false&&errLname==false&&errAge==false&&errDob==false&&errHeartrate==false
				&&errTemperature==false&&errBloodpressure ==false){
               $("#alertSuccess").show();
			   $("#patientForm").submit();
		}else{
			alert("Missing fields");
		}
		
	});
	
	
	/* onclick action for clear button*/
	$('#btnClear').click(function() {
		if (confirm("Are you sure you want to clear all the fields?")) {
			/* Clear all input type="text" box */
			$('#patientForm input[type="text"]').val('');
			/* Clear textarea using id */
			$('#patientForm #txtAddress').val('');
		}
	});
	
	/* onclick action for back button*/
    $('btnBack').click(function(){
    	 window.history.back();
    });
});