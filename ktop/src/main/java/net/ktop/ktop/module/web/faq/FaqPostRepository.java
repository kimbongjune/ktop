package net.ktop.ktop.module.web.faq;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.ktop.ktop.module.web.board.BoardPostSearchDto;

@Repository
public class FaqPostRepository {
	
	private final SqlSessionTemplate template;
	private final static String MAPPER_NAME = "faqPostMapper.";
	
	@Autowired
	public FaqPostRepository(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public List<FaqPostDto> selectFaqPostList(BoardPostSearchDto dto){
		return template.selectList(MAPPER_NAME + "selectFaqPostList", dto);
	}
	
	public FaqPostDto selectFaqPostOne(int id) {
		return template.selectOne(MAPPER_NAME + "selectFaqPostOne", id);
	}
	
	public int insertFaqPost(FaqPostDto dto) {
		return template.insert(MAPPER_NAME + "insertFaqPost", dto);
	}
	
	public int updateFaqPost(FaqPostDto dto) {
		return template.update(MAPPER_NAME + "updateFaqPost", dto);
	}
	
	public int deleteFaqPost(int id) {
		return template.update(MAPPER_NAME + "deleteFaqPost", id);
	}
}
