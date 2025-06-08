package net.ktop.ktop.module.web.board;

import java.util.List;

import net.ktop.ktop.module.web.board.file.BoardPostFileDto;
import net.ktop.ktop.module.web.board.view.BoardPostViewDto;

public interface BoardPostService {
	List<BoardPostDto> selectBoardPostList(BoardPostSearchDto dto);
	
	BoardPostDto selectBoardPostById(int id);
	
	int insertBoardPost(BoardPostDto dto);
	
	int insertBoardFiles(List<BoardPostFileDto> dto);
	
	int deleteBoardFileOne(String id);
	
	int insertBoardPostView(BoardPostViewDto dto);
	
	int deleteBoardFileInList(List<Integer> ids);
	
	int updateBoardPost(BoardPostDto dto);
	
	int deleteBoardPost(int id);
}
