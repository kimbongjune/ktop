package net.ktop.ktop.module.web.region;

import java.util.List;

public interface RegionService {
	
	public List<RegionDto> getAllRegion();
	
	public int addRegion(RegionDto dto);
	
	public int deleteRegion(int id);
	
	public int updateRegion(RegionDto dto);
	
}
