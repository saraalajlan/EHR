// Wait for the DOM to be ready

$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='patientForm']").validate({
    // Specify validation rules
	  rules: {
	      // The key name on the left side is the name attribute
	      // of an input field. Validation rules are defined
	      // on the right side
	      defaultFormFirstName: "required",
	      defaultFormSecondName: "required",
	      defaultFormLastName:"required",
	      defaultFormAge:"required",
	      datepicker:"required",
	      defaultFormHearrate:"required",
	      defaultFormTemperature:"required",
	      defaultFormBloodPressure:"required",
	      },
	    // Specify validation error messages
	    messages: {
	      defaultFormFirstName: "Only letters no numbers",
	      defaultFormSecondName: "Only letters no numbers",
	      defaultFormLastName:"Only letters no numbers",
	      defaultFormAge:"Only numbers and shall be between 1-150",
	      datepicker:"required",
	      defaultFormHearrate:"Only numbers and shall be between 0-300",
	      defaultFormTemperature:"Only numbers and shall be in Celsius ",
	      defaultFormBloodPressure:"Systolic over diastolic e.g. 120/80 mmHg",
	    // Make sure the form is submitted to the destination defined
	    // in the "action" attribute of the form when valid
	    },
	     submitHandler: function(form) {
	          form.submit();
	        }
    });
    });
