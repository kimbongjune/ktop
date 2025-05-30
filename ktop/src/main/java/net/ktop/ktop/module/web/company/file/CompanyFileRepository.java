package net.ktop.ktop.module.web.company.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyFileRepository {

    private final SqlSession sqlSession;
    private static final String NAMESPACE = "companyFileMapper.";

    public CompanyFileRepository(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    public int insertCompanyFiles(List<CompanyFileDto> dto) {
        return sqlSession.insert(NAMESPACE + "insertCompanyFiles", dto);
    }
}