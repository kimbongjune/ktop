package net.ktop.ktop.module.web.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardPostRepository {
	
	private final SqlSessionTemplate template;
	private final static String MAPPER_NAME = "boardMapper.";
	
	@Autowired
	public BoardPostRepository(SqlSessionTemplate template) {
		this.template = template;
	}

	public List<BoardPostDto> selectBoardPostList(BoardPostSearchDto dto){
		return template.selectList(MAPPER_NAME + "selectBoardPostList", dto);
	}
	
	public int insertBoardPost(BoardPostDto dto) {
		return template.insert(MAPPER_NAME + "insertBoardPost", dto);
	}
	
	public BoardPostDto selectBoardPostById(int id) {
		return template.selectOne(MAPPER_NAME + "selectBoardPostById", id);
	}
}
