package net.ktop.ktop.module.web.material;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MaterialRepository {

    private final SqlSessionTemplate template;

    private static final String MAPPER_NAME = "materialMapper.";

    @Autowired
    public MaterialRepository(SqlSessionTemplate template) {
        this.template = template;
    }

    public int insertMaterial(MaterialDto dto) {
        return template.insert(MAPPER_NAME + "insertMaterial", dto);
    }

    public List<MaterialDto> selectMaterialList(MaterialDto dto) {
        return template.selectList(MAPPER_NAME + "selectMaterialList", dto);
    }

    public MaterialDto selectMaterialOne(int id) {
        return template.selectOne(MAPPER_NAME + "selectMaterialOne", id);
    }

    public int updateMaterial(MaterialDto dto) {
        return template.update(MAPPER_NAME + "updateMaterial", dto);
    }

    public int deleteMaterial(int id) {
        return template.update(MAPPER_NAME + "deleteMaterial", id);
    }
}
