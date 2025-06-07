package net.ktop.ktop.module.web.board.view;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BoardPostViewRepository {

	private final SqlSessionTemplate template;
    private static final String MAPPER_NAME = "boardViewMapper.";

    public BoardPostViewRepository(SqlSessionTemplate template) {
        this.template = template;
    }
    
    public int insertBoardPostView(BoardPostViewDto dto) {
    	return template.insert(MAPPER_NAME + "insertBoardPostView", dto);
    }
}