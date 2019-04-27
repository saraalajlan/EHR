package com.ehrform.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ehrform.entity.Patient;

@Repository
public class PatientDaoImpl implements PatientDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addPatient(Patient patient) {
		getCurrentSession().save(patient);
	}

	public Patient getPatient(int id) {
		Patient patient = (Patient) getCurrentSession().get(Patient.class, id);
		return patient;
	}
	
	public void deletePatient(int id) {
	  Patient patient = getPatient(id);
		if (patient != null)
			getCurrentSession().delete(patient);
	}
	
	public void updatePatient(Patient patient) {
		Patient patientToUpdate = getPatient(patient.getPatientId());
		patientToUpdate.setFirstName(patient.getFirstName());
		patientToUpdate.setSecondName(patient.getSecondName());
		patientToUpdate.setLastName(patient.getLastName());
		patientToUpdate.setAge(patient.getAge());
		patientToUpdate.setHeartRate(patient.getHeartRate());
		patientToUpdate.setTemperature(patient.getTemperature());
		patientToUpdate.setBloodPressure(patient.getBloodPressure());
		getCurrentSession().update(patientToUpdate);
		
	}

	@SuppressWarnings("unchecked")
	public List<Patient> getPatient() {
		return getCurrentSession().createQuery("from Patient").list();
	}

}



