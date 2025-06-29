package net.ktop.ktop.module.web.workforce.workfield;

import java.util.List;

public interface WorkFieldService {

	int addWorkField(WorkFieldDto dto);
	
	List<WorkFieldDto> getAllWorkField();
	
	int deleteWorkField(int id);
	
	int updateWorkField(WorkFieldDto dto);
} 