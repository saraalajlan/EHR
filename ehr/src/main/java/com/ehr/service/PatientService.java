package com.ehr.service;
import java.util.List;

import com.ehr.entity.Patient;

public interface PatientService {
			
		public void addTeam(Team team);
		
		public List<Team> getTeams();

	}
}
