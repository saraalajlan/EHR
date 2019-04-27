package com.ehrform.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ehrform.dao.PatientDao;
import com.ehrform.entity.Patient;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Service
@Transactional
public class PatientServiceImpl implements PatientService {

	@Autowired
	private PatientDao patientDao;

	public void addPatient(Patient patient) {
		patientDao.addPatient(patient);
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
		
		patientDao.updatePatient(patient);
	}

	public Patient getPatient(int id) {
		return patientDao.getPatient(id);
	}
	
	public void deletePatient(int id) {
		patientDao.deletePatient(id);
	}
	public List<Patient> getPatient() {
		List<Patient> patientsList = patientDao.getPatient();
		
		return patientsList;
	}

}
