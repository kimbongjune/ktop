package net.ktop.ktop.module.web.admin.material;

import java.util.List;

public interface AdminMaterialService {

	public int addMaterial(AdminMaterialDto dto);
	
	public List<AdminMaterialDto> getAllMaterial();
	
	public int deleteMaterial(int id);
	
	public int updateMaterial(AdminMaterialDto dto);
}
