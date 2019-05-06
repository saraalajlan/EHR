package com.ehrform.servicehandler;

import org.springframework.stereotype.Repository;

import com.ehrform.dto.BaseResponse;
import com.ehrform.dto.GetPatientResponse;
import com.ehrform.entity.Patient;
import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

@Repository
public class PatientRepositoryImpl implements PatientRepository {

	@Override
	public BaseResponse addPatient(Patient patient) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GetPatientResponse updatePatient(Patient patient) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GetPatientResponse getPatient(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BaseResponse deletePatient(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GetPatientResponse getAllPatients() {
		Gson gson = new Gson();
		GetPatientResponse r = null;
		try {

			
			Client client = Client.create();

			WebResource webResource = client.resource("http://localhost:9999/patient/listPatients");

			ClientResponse response = webResource.accept("application/json").get(ClientResponse.class);

			if (response.getStatus() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());
			}

			String output = response.getEntity(String.class);
			r = gson.fromJson(output, GetPatientResponse.class);

			System.out.println("Output from Server .... \n");
			System.out.println(r);

		} catch (Exception e) {

			e.printStackTrace();

		}
		return r;
	}

	

}