package net.ktop.ktop.module.web.board.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BoardFileRepository {

	private final SqlSessionTemplate template;
    private static final String MAPPER_NAME = "boardFileMapper.";

    public BoardFileRepository(SqlSessionTemplate template) {
        this.template = template;
    }

    public int insertBoardFiles(List<BoardPostFileDto> dto) {
        return template.insert(MAPPER_NAME + "insertBoardFiles", dto);
    }
    
	public int deleteBoardFileOne(String id) {
		return template.delete(MAPPER_NAME + "deleteBoardFileOne", id);
	}
	
	public int deleteBoardFileInList(List<Integer> ids) {
		return template.delete(MAPPER_NAME + "deleteBoardFileInList", ids);
	}
}