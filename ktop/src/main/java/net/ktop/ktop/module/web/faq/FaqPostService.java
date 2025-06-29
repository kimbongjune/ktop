package net.ktop.ktop.module.web.faq;

import java.util.List;

import net.ktop.ktop.module.web.board.BoardPostSearchDto;

public interface FaqPostService {
	List<FaqPostDto> selectFaqPostList(BoardPostSearchDto dto);
	int selectFaqPostCount(BoardPostSearchDto dto);
	FaqPostDto selectFaqPostOne(int id);
	int insertFaqPost(FaqPostDto dto);
	int updateFaqPost(FaqPostDto dto);
	int deleteFaqPost(int id);
}
