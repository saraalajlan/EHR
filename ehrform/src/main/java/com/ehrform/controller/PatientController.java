package com.ehrform.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ehrform.entity.Patient;
import com.ehrform.service.PatientService;
import com.ehrform.entity.Patient;
import com.ehrform.service.PatientService;

@Controller
@RequestMapping(value="/patient")
public class PatientController {
	@Autowired
	private PatientService patientService;
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView("home");
		//modelAndView.addObject("patient", new Patient());
		return modelAndView;
}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public ModelAndView addPatientForm() {
		ModelAndView modelAndView = new ModelAndView("add-patient-form");
	
		modelAndView.addObject("patient", new Patient());
		return modelAndView;
}

	@RequestMapping(value="/save", method=RequestMethod.POST)
	public ModelAndView addingPatient(@ModelAttribute Patient patient) {
		
		ModelAndView modelAndView = new ModelAndView("add-patient-form");
		patientService.addPatient(patient);
		return modelAndView;
	}
	
	@RequestMapping(value="/edit", method = RequestMethod.POST)
	public @ResponseBody String edditingTeam(@RequestBody Patient patient, HttpServletRequest request, HttpServletResponse response) {
	
		//ModelAndView modelAndView = new ModelAndView("list-of-patients");
		patientService.updatePatient(patient);		
		return "Success!!";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	public ModelAndView deletePatient(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("list-of-patients");
		patientService.deletePatient(id);
		return modelAndView;
	}

	
	@RequestMapping(value="/list")
	public ModelAndView listOfPatients() {

	ModelAndView modelAndView = new ModelAndView("list-of-patients");
	List<Patient> patients = patientService.getPatient();
	modelAndView.addObject("patients", patients);
	return modelAndView;
	} 
}
