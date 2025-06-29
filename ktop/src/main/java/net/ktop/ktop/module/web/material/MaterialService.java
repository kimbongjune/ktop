package net.ktop.ktop.module.web.material;

import java.util.List;

import net.ktop.ktop.module.web.material.file.MaterialFileDto;

public interface MaterialService {

    int insertMaterial(MaterialDto dto);

    List<MaterialDto> selectMaterialList(MaterialDto dto);
    
    int selectMaterialCount(MaterialDto dto);

    MaterialDto selectMaterialOne(int id);

    int updateMaterial(MaterialDto dto);

    int deleteMaterial(int id);
    
    int insertMaterialFiles(List<MaterialFileDto> list);
    
    int deleteMaterialFileOne(String id);
    
    List<Integer> selectMaterialCategoryIdsIncludingChildren(List<Integer> materialCategoryIdList);
}