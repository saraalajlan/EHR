%@ page language=java contentType=texthtml; charset=UTF-8
	pageEncoding=UTF-8%
%@ taglib uri=httpjava.sun.comjspjstlcore prefix=c%
%@ taglib prefix=fmt uri=httpjava.sun.comjspjstlfmt%
!DOCTYPE html PUBLIC -W3CDTD XHTML 1.0 TransitionalEN httpwww.w3.orgTRxhtml1DTDxhtml1-transitional.dtd
html xmlns=httpwww.w3.org1999xhtml
head
titleList of Patientstitle
link rel=icon type=imagepng
	href=curl value='resourcesimglogoo.png'

	link rel=stylesheet type=textcss
		href=curl value='resourcescssstyle.css'
link
	href=httpscdn.datatables.net1.10.15cssdataTables.bootstrap.min.css
	rel=stylesheet 

link
	href=httpscdn.datatables.netresponsive2.1.1cssresponsive.bootstrap.min.css
	rel=stylesheet 

link rel=stylesheet type=textcss
	href=httpscdn.datatables.net1.10.19cssjquery.dataTables.css 



script src=httpscode.jquery.comjquery-1.10.2.jsscript

script type=textjavascript charset=utf8
	src=httpscdn.datatables.net1.10.19jsjquery.dataTables.jsscript

script
	src=httpscdn.datatables.net1.10.15jsjquery.dataTables.min.jsscript

script
	src=httpscdn.datatables.net1.10.15jsdataTables.bootstrap4.min.js script

scrip
	src=httpsajax.googleapis.comajaxlibsjquery3.3.1jquery.min.js
script curl var=editAction value=patienteditcurl
head
body id=listOfPatient 
	header class=header
	h4 class=header_textLIST OF PATIENTSh4
	img src=curl value='resourcesimglogoo.png' width=50 class=logo  var
		ul
			lia href=${pageContext.request.contextPath}patientHomeali
			lia href=${pageContext.request.contextPath}patientaddAdd Patientali
		ul
	var 
	header
	table id=myTable
		thead
			tr
				thIDth
				thFirst Nameth
				thSecond Nameth
				thLast Nameth
				thAgeth
				thDate of Birthth
				thHeart Rateth
				thTemperatureth
				thBlood Pressureth
				thActionsth
			tr
		thead
		tbody
			cforEach var=patient items=${patients}
				tr id=patientRow_${patient.patientId}
					th${patient.patientId}th
					tdp id=firstName_${patient.patientId}${patient.firstName}p
						input id=newFirstName_${patient.patientId} type=text
						value=${patient.firstName} style=display none td

					tdp id=secondName_${patient.patientId}${patient.secondName}p
						input id=newSecondName_${patient.patientId} type=text
						value=${patient.secondName} style=display none td

					tdp id=lastName_${patient.patientId}${patient.lastName}p
						input id=newLastName_${patient.patientId} type=text
						value=${patient.lastName} style=display none td

					tdp id=age_${patient.patientId}${patient.age}p input
						id=newAge_${patient.patientId} type=text
						value=${patient.age} style=display none td

					fmtformatDate type=date value=${patient.dateOfBirth}
						pattern=ddMMyyyy var=Dob 
					tdp id=dob_${patient.patientId}${Dob}p input
						id=newDob_${patient.patientId} type=text
						value=${patient.dateOfBirth} style=display none td

					td
						p id=heartRate_${patient.patientId}${patient.heartRate}p input
						id=newHeartRate_${patient.patientId} type=text
						value=${patient.heartRate} style=display none 
					td

					tdp id=temp_${patient.patientId}${patient.temperature}p
						input id=newTemp_${patient.patientId} type=text
						value=${patient.temperature} style=display none td

					tdp id=bp_${patient.patientId}${patient.bloodPressure}p
						input id=newBp_${patient.patientId} type=text
						value=${patient.bloodPressure} style=display none td

					tdimg class=actions_${patient.patientId}
						onclick=javascripteditPatient(${patient.patientId})
						id=edit_bt_${patient.patientId}
						src=curl value='resourcesimgiconfinder_write_126582.png'
							img class=actions_${patient.patientId}
							onclick=deletePatient(${patient.patientId})
							id=delete_bt_${patient.patientId}
							src=curl value='resourcesimgiconfinder_Vector-icons_42_1041650.png'img
								img id=save_bt_${patient.patientId}
								onClick=save(${patient.patientId})
								style=display none; width 33px;
								src=curl value='resourcesimgtrue.png'td


				tr
			cforEach
		tbody
	table

	!-- p id=arrow onclick=goBack()&#x21A9;p
	input id=patientBeingEdited type=text style=display none;   --

	script	
		function goBack() {
			window.history.back();
			}
			function back(){
				window.location = '';
				}
		
        
		function editPatient(patientId){
			 hide actions
			$('.actions_'+patientId).hide();
			 set currentlyBeingEditedPatient  
			$(#patientBeingEdited).val(patientId); 
			 disable all editing actions
			$('.actions').addClass('disabled');
			 hide both old names
			$('#firstName_'+patientId
			+ ',#secondName_'+patientId
			+ ',#lastName_'+patientId
			+ ',#age_'+patientId
			+ ',#dob_'+patientId
			+ ',#heartRate_'+patientId
			+ ',#temp_'+patientId
			+ ',#bp_'+patientId).hide();
			 set new names field with old names
			$('#newFirstName_'+patientId).val($('#firstName_'+patientId).text());
			$('#newSecondName_'+patientId).val($('#secondName_'+patientId).text());
			$('#newLastName_'+patientId).val($('#lastName_'+patientId).text());
			$('#newAge_'+patientId).val($('#age_'+patientId).text());
			$('#newDob_'+patientId).val($('#dob_'+patientId).text());
			$('#newHeartRate_'+patientId).val($('#heartRate_'+patientId).text());
			$('#newTemp_'+patientId).val($('#temp_'+patientId).text());
			$('#newBp_'+patientId).val($('#bp_'+patientId).text());
			 show new names field
			$('#newFirstName_'+patientId
			+ ',#newSecondName_'+patientId
			+ ',#newLastName_'+patientId
			+ ',#newAge_'+patientId
			+ ',#newDob_'+patientId
			+ ',#newHeartRate_'+patientId
			+ ',#newTemp_'+patientId
			+ ',#newBp_'+patientId).show();
			 show save and cancel buttons
			$('#save_bt_'+patientId).show();

			}
		function save(patientId){
			var data = {};
			
			var patientId = $(#patientBeingEdited).val();
			
			data[patientId] = patientId;
			data[firstName] = $('#newFirstName_'+patientId).val();
			data[secondName] =  $('#newSecondName_'+patientId).val();
			data[lastName] = $('#newLastName_'+patientId).val();
			data[age] = $('#newAge_'+patientId).val();
			data[dateOfBirth] = $('#newDob_'+patientId).val();
			data[heartRate] = $('#newHeartRate_'+patientId).val();
			data[temperature] = $('#newTemp_'+patientId).val();
			data[bloodPressure] = $('#newBp_'+patientId).val();
			
			console.log(Before AJAX!!!!!);
			console.log(JSON.stringify(data));

			
			 AJAX call to edit patient
		
	    $.ajax({
			type  POST,
			url  edit,
			contentType  applicationjson,
			data  JSON.stringify(data),
			success  function(data) {
				console.log(SUCCESS , data);
				
			backToNormal(patientId);
							
			},
			error  function(e) {
				console.log(ERROR , e);
				alert(oops!!!);
			}
			
		}); 
				
	
		}
		
		
		function deletePatient(patientId){
			$.ajax({
				type  DELETE,
				url  delete+patientId,
				contentType  applicationjson,
				success  function(data) {
					console.log(SUCCESS , data);
				if(confirm(Are you sure you want to delete this Record)){
				$('#patientRow_'+patientId).remove();
					}								
				},
				error  function(e) {
					console.log(ERROR , e);
					alert(oops!!!);
				}
				
			}); 
			
		}
		
		function backToNormal(patientId){
			
			$('#firstName_'+patientId).text($('#newFirstName_'+patientId).val());
			$('#secondName_'+patientId).text($('#newSecondName_'+patientId).val());
			$('#lastName_'+patientId).text($('#newLastName_'+patientId).val());
			$('#age_'+patientId).text($('#newAge_'+patientId).val());
			$('#dob_'+patientId).text($('#newDob_'+patientId).val());
			$('#heartRate_'+patientId).text($('#newHeartRate_'+patientId).val());
			$('#temp_'+patientId).text($('#newTemp_'+patientId).val());
			$('#bp_'+patientId).text($('#newBp_'+patientId).val());
			
			$('#newFirstName_'+patientId
					+ ',#newSecondName_'+patientId
					+ ',#newLastName_'+patientId
					+ ',#newAge_'+patientId
					+ ',#newDob_'+patientId
					+ ',#newHeartRate_'+patientId
					+ ',#newTemp_'+patientId
					+ ',#newBp_'+patientId).hide();
					
					$('#firstName_'+patientId
							+ ',#secondName_'+patientId
							+ ',#lastName_'+patientId
							+ ',#age_'+patientId
							+ ',#dob_'+patientId
							+ ',#heartRate_'+patientId
							+ ',#temp_'+patientId
							+ ',#bp_'+patientId).show();
					
                    
					 show actions
					$('.actions_'+patientId).show();
					 hide save and cancel buttons
					$('#save_bt_'+patientId).hide();
        	
        }
			
		
		

		script
body
html