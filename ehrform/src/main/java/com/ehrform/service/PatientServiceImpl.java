package com.ehrform.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ehrform.dao.PatientDao;
import com.ehrform.entity.Patient;

@Service
@Transactional
public class PatientServiceImpl implements PatientService {

	@Autowired
	private PatientDao patientDao;

	public void addPatient(Patient patient) {
		patientDao.addPatient(patient);
	}

	public Patient getPatient(int id) {
		return patientDao.getPatient(id);
	}

	public List<Patient> getPatient() {
		List<Patient> patientsList = patientDao.getPatient();
		
		return patientsList;
	}

}
