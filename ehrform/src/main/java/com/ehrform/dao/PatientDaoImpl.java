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


	@SuppressWarnings("unchecked")
	public List<Patient> getPatient() {
		return getCurrentSession().createQuery("from Patient").list();
	}

}



