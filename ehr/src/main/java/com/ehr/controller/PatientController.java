package com.ehr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ehr.entity.Patient;
import com.ehr.service.PatientService;
import com.sprhib.model.Team;
import com.sprhib.service.TeamService;

@Controller
@RequestMapping(value="/patient")
public class PatientController {
	@Autowired
	private PatientService patientService;
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addPatientPage() {
		ModelAndView modelAndView = new ModelAndView("add-patient-form");
		modelAndView.addObject("patient", new Patient());
		return modelAndView;
}

	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView addingPatient(@ModelAttribute Patient patient) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		patientService.addPatient(patient);
		
		String message = "Pateint was successfully added.";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/list")
	public ModelAndView listOfPatients() {
		ModelAndView modelAndView = new ModelAndView("list-of-patients");
		
		List<Patient> patients = patientService.getPatients();
		modelAndView.addObject("patients", patients);
		
		return modelAndView;
	}
