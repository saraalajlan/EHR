package com.ehrform.dao;
import java.util.List;
import com.ehrform.entity.Patient;

public interface PatientDao {

		public void addPatient(Patient patient);
		public void updatePatient(Patient patient);
		public Patient getPatient(int id);
		public void deletePatient(int id);
		public List<Patient> getPatient();
	
}


