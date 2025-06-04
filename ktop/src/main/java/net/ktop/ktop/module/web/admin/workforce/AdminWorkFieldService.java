package net.ktop.ktop.module.web.admin.workforce;

import java.util.List;

public interface AdminWorkFieldService {

	public int addWorkField(AdminWorkFieldDto dto);
	
	public List<AdminWorkFieldDto> getAllWorkField();
	
	public int deleteWorkField(int id);
	
	public int updateWorkField(AdminWorkFieldDto dto);
}
