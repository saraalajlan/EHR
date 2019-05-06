package com.ehrform.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ehrform.entity.Patient;
import com.ehrform.servicehandler.PatientRepository;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
@Transactional
public class PatientServiceImpl implements PatientService {

	@Autowired
	private PatientRepository patientRepository;

	public void addPatient(Patient patient) {
		patientRepository.addPatient(patient);
	}
	
	public void updatePatient(String json) {
		// Convert from JSON to Object
		Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").create();
		
		Patient patient = null;
		
		try{
		patient = gson.fromJson(json, Patient.class);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		patientRepository.updatePatient(patient);
	}

	public Patient getPatient(int id) {
		return patientRepository.getPatient(id).getPatient();
	}
	
	public void deletePatient(int id) {
		patientRepository.deletePatient(id);
	}
	public List<Patient> getPatient() {
		List<Patient> patientsList = patientRepository.getAllPatients().getPatients();
		
		return patientsList;
	}

}
