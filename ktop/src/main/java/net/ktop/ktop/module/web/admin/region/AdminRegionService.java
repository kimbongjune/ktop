package net.ktop.ktop.module.web.admin.region;

import java.util.List;

public interface AdminRegionService {
	
	public int addRegion(AdminRegionDto dto);
	
	public List<AdminRegionDto> getAllRegion();
	
	public int deleteRegion(int id);
	
	public int updateRegion(AdminRegionDto dto);
}
