package com.ehrform.servicehandler;

import java.util.List;

import com.ehrform.dto.BaseResponse;
import com.ehrform.dto.GetPatientResponse;
import com.ehrform.entity.Patient;

public interface PatientRepository {
	public BaseResponse addPatient(Patient patient);
	public GetPatientResponse updatePatient(Patient patient);
	public GetPatientResponse getPatient(int id);
	public BaseResponse deletePatient(int id);
	public GetPatientResponse getAllPatients();
}