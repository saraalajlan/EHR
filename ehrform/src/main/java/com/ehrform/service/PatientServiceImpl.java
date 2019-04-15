package com.ehrform.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ehrform.dao.PatientDao;
import com.ehrform.entity.Patient;

@Service
@Transactional
public class PatientServiceImpl implements PatientService{
			
		@Autowired
		private patientDao PatientDao;

		public void addPatient(Patient patient) {
			patientDao.addPateint(patient);		
		}


		public Patient getTeam(int id) {
			return patientDao.getPatient(id);
		}


		public List<Patient> getPatient() {
			return teamDAO.getPatient();
		}

	}


