package com.ehrform.service;

import java.util.List;
import com.ehrform.entity.Patient;

public interface PatientService {
	public void addPatient(Patient patient);
	public void updatePatient(Patient tepatientam);
	public Patient getPatient(int id);
	public void deletePatient(int id);
	public List<Patient> getPatient();
}
