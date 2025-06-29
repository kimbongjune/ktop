package net.ktop.ktop.module.web.material.impl;

import net.ktop.ktop.module.web.material.MaterialDto;
import net.ktop.ktop.module.web.material.MaterialRepository;
import net.ktop.ktop.module.web.material.MaterialService;
import net.ktop.ktop.module.web.material.file.MaterialFileDto;
import net.ktop.ktop.module.web.material.file.MaterialFileRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaterialServiceImpl implements MaterialService {

    private final MaterialRepository materialRepository;
    private final MaterialFileRepository materialFileRepository;

    @Autowired
    public MaterialServiceImpl(MaterialRepository materialRepository, MaterialFileRepository materialFileRepository) {
        this.materialRepository = materialRepository;
        this.materialFileRepository = materialFileRepository;
    }

    @Override
    public int insertMaterial(MaterialDto dto) {
        return materialRepository.insertMaterial(dto);
    }

    @Override
    public List<MaterialDto> selectMaterialList(MaterialDto dto) {
        return materialRepository.selectMaterialList(dto);
    }

    @Override
    public int selectMaterialCount(MaterialDto dto) {
        return materialRepository.selectMaterialCount(dto);
    }

    @Override
    public MaterialDto selectMaterialOne(int id) {
        return materialRepository.selectMaterialOne(id);
    }

    @Override
    public int updateMaterial(MaterialDto dto) {
        return materialRepository.updateMaterial(dto);
    }

    @Override
    public int deleteMaterial(int id) {
        return materialRepository.deleteMaterial(id);
    }

	@Override
	public int insertMaterialFiles(List<MaterialFileDto> list) {
		return materialFileRepository.insertMaterialFiles(list);
	}

	@Override
	public int deleteMaterialFileOne(String id) {
		return materialFileRepository.deleteMaterialFileOne(id);
	}
	
	@Override
	public List<Integer> selectMaterialCategoryIdsIncludingChildren(List<Integer> materialCategoryIdList){
		return materialRepository.selectMaterialCategoryIdsIncludingChildren(materialCategoryIdList);
    }
}
