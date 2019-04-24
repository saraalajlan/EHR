<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="style.css" type="text/css" />
<title>List of Patients</title>
<link
	href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
	<link rel="stylesheet" type="text/css"
		href="<c:url value='/resources/css/style.css'/>">
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

		<script type="text/javascript" charset="utf8"
			src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
		<script
			src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
		<script
			src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap4.min.js "></script>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <c:url var="editAction" value="/patient/edit" ></c:url> 
</head>
<body>
	<h1>List of Patients</h1>
	<table id="myTable">
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
					<td><p id="firstName_${patient.patientId}">${patient.firstName}</p>
						<input id="newFirstName_${patient.patientId}" type="text"
						value="${patient.firstName}" style="display: none" /></td>

					<td><p id="secondName_${patient.patientId}">${patient.secondName}</p>
						<input id="newSecondName_${patient.patientId}" type="text"
						value="${patient.secondName}" style="display: none" /></td>

					<td><p id="LastName_${patient.patientId}">${patient.lastName}</p>
						<input id="newLastName_${patient.patientId}" type="text"
						value="${patient.lastName}" style="display: none" /></td>

					<td><p id="age_${patient.patientId}">${patient.age}</p> <input
						id="newAge_${patient.patientId}" type="text"
						value="${patient.age}" style="display: none" /></td>

					<fmt:formatDate type="date" value="${patient.dateOfBirth}"
						pattern="dd/MM/yyyy" var="Dob" />
					<td><p id="dob_${patient.patientId}">${Dob}</p> <input
						id="newDob_${patient.patientId}" type="text"
						value="${patient.dateOfBirth}" style="display: none" /></td>

					<td>
						<p id="heartRate_${patient.patientId}">${patient.heartRate}</p> <input
						id="newHeartRate_${patient.patientId}" type="text"
						value="${patient.heartRate}" style="display: none" />
					</td>

					<td><p id="temp_${patient.patientId}">${patient.temperature}</p>
						<input id="newTemp_${patient.patientId}" type="text"
						value="${patient.temperature}" style="display: none" /></td>

					<td><p id="bp_${patient.patientId}">${patient.bloodPressure}</p>
						<input id="newBp_${patient.patientId}" type="text"
						value="${patient.bloodPressure}" style="display: none" /></td>

					<td><img class="actions"
						onclick="javascript:editPatient(${patient.patientId})"
						id="edit_bt_${patient.patientId}"
						src="<c:url value='/resources/img/iconfinder_write_126582.png'/>">
						<img class="actions" id="delete_bt_${patient.patientId}"
							src="<c:url value='/resources/img/iconfinder_Vector-icons_42_1041650.png'/>">
							<button id="save_bt_${patient.patientId}" onClick="save()">Save</button>
							</td>
							
							
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!--  <button id="save_bt" onClick="save()">Save</button>-->
	<p id="arrow" onclick="goBack()">&#x21A9;</p>
	<input id="patientBeingEdited" type="text" style="display: none;" />
	<script>	
		function goBack() {
			window.history.back();
			}
			function back(){
				window.location = '/web/backendadmin/home';
				}
		
		function editPatient(patientId){
			// hide actions
			$('.actions').hide();
			// set currentlyBeingEditedPatient  q???????
			$("#patientBeingEdited").val(patientId); 
			// disable all editing actions
			//$('.actions').addClass('disabled');
			// hide both old names
			$('#firstName_'+patientId
			+ ',#secondName_'+patientId
			+ ',#LastName_'+patientId
			+ ',#age_'+patientId
			+ ',#dob_'+patientId
			+ ',#heartRate_'+patientId
			+ ',#temp_'+patientId
			+ ',#bp_'+patientId).hide();
			// set new names field with old names
			$('#newFirstName_'+patientId).val($('#firstName_'+patientId).text());
			$('#newSecondName_'+patientId).val($('#secondName_'+patientId).text());
			$('#newLastName_'+patientId).val($('#LastName_'+patientId).text());
			$('#newAge_'+patientId).val($('#age_'+patientId).text());
			$('#newDob_'+patientId).val($('#dob_'+patientId).text());
			$('#newHeartRate_'+patientId).val($('#heartRate_'+patientId).text());
			$('#newTemp_'+patientId).val($('#temp_'+patientId).text());
			$('#newBp_'+patientId).val($('#bp_'+patientId).text());
			// show new names field
			$('#newFirstName_'+patientId
			+ ',#newSecondName_'+patientId
			+ ',#newLastName_'+patientId
			+ ',#newAge_'+patientId
			+ ',#newDob_'+patientId
			+ ',#newHeartRate_'+patientId
			+ ',#newTemp_'+patientId
			+ ',#newBp_'+patientId).show();
			// show save and cancel buttons
			$('#save_bt_'+patientId).show();
			// hide add channel action
			//$('#edit_bt').hide();
			// disable table features
			//disableTableFeatures();
			}
		function save(){
		    var url = "${editAction}";

			var data = {};
			
			var patientId = $("#patientBeingEdited").val();
			
			
			//data["patientId"] = patientId;
			data["firstName"] = $('#newFirstName_'+patientId).val();
			data["secondName"] =  $('#newSecondName_'+patientId).val();
			data["lastName"] = $('#newLastName_'+patientId).val();
			//data["age"] = $('#newAge_'+patientId).val();
			data["dateOfBirth"] = $('#newDob_'+patientId).val();
			//data["heartRate"] = $('#newHeartRate_'+patientId).val();
			//data["temperature"] = $('#newTemp_'+patientId).val();
			data["bloodPressure"] = $('#newBp_'+patientId).val();
			
			
			console.log("Before AJAX!!!!!");
			console.log(JSON.stringify(data));

			
			// AJAX call to edit patient
		
		$.ajax({
			type : "POST",
			url : url,
			contentType : "application/json",
			data : JSON.stringify(data),
			success : function(data) {
				console.log("SUCCESS: ", data);
				
				$('.actions').show();
				$('#save_bt_'+patientId).hide();
			},
			error : function(e) {
				console.log("ERROR: ", e);
			},
			done : function(e) {
				console.log("DONE");
			}
		});
						
		}
		</script>
</body>
</html>