package com.ehrform.service;

import java.util.List;
import com.ehrform.entity.Patient;

public interface PatientService {
	public void addPatient(Patient patient);
	public List<Patient> getPatient();
}
