package net.ktop.ktop.module.web.boardcomment;

import java.util.List;

public interface BoardCommentService {
	List<BoardCommentDto> selectCommentsByPostId(int postId);
	int insertComment(BoardCommentDto dto);
	int deleteComment(int id);
}
