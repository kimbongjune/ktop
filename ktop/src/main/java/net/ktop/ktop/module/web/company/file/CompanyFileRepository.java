package net.ktop.ktop.module.web.company.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyFileRepository {

	private final SqlSessionTemplate template;
    private static final String MAPPER_NAME = "companyFileMapper.";

    public CompanyFileRepository(SqlSessionTemplate template) {
        this.template = template;
    }

    public int insertCompanyFiles(List<CompanyFileDto> dto) {
        return template.insert(MAPPER_NAME + "insertCompanyFiles", dto);
    }
    

	public int deleteCompanyFileOne(String id) {
		return template.delete(MAPPER_NAME + "deleteCompanyFileOne", id);
	}
}