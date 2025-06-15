package net.ktop.ktop.module.web.boardcomment.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.boardcomment.BoardCommentDto;
import net.ktop.ktop.module.web.boardcomment.BoardCommentRepository;
import net.ktop.ktop.module.web.boardcomment.BoardCommentService;

@Service
public class BoardCommentServiceImpl implements BoardCommentService {
	
	private final BoardCommentRepository boardCommentRepository;
	
	@Autowired
	public BoardCommentServiceImpl(BoardCommentRepository boardCommentRepository) {
		this.boardCommentRepository = boardCommentRepository;
	}

	@Override
	public List<BoardCommentDto> selectCommentsByPostId(int postId) {
		return boardCommentRepository.selectCommentsByPostId(postId);
	}

	@Override
	public int insertComment(BoardCommentDto dto) {
		return boardCommentRepository.insertComment(dto);
	}

	@Override
	public int deleteComment(int id) {
		return boardCommentRepository.deleteComment(id);
	}

}
