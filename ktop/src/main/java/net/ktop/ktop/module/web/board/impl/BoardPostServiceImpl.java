package net.ktop.ktop.module.web.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.board.BoardPostDto;
import net.ktop.ktop.module.web.board.BoardPostRepository;
import net.ktop.ktop.module.web.board.BoardPostSearchDto;
import net.ktop.ktop.module.web.board.BoardPostService;
import net.ktop.ktop.module.web.board.file.BoardFileRepository;
import net.ktop.ktop.module.web.board.file.BoardPostFileDto;
import net.ktop.ktop.module.web.board.view.BoardPostViewDto;
import net.ktop.ktop.module.web.board.view.BoardPostViewRepository;

@Service
public class BoardPostServiceImpl implements BoardPostService {

	private final BoardPostRepository boardPostRepository;
	private final BoardFileRepository boardFileRepository;
	private final BoardPostViewRepository boardPostViewRepository;
	
	@Autowired
	public BoardPostServiceImpl(BoardPostRepository boardPostRepository, BoardFileRepository boardFileRepository, BoardPostViewRepository boardPostViewRepository) {
		this.boardPostRepository = boardPostRepository;
		this.boardFileRepository = boardFileRepository;
		this.boardPostViewRepository = boardPostViewRepository;
	}

	@Override
	public List<BoardPostDto> selectBoardPostList(BoardPostSearchDto dto) {
		return boardPostRepository.selectBoardPostList(dto);
	}

	@Override
	public int insertBoardPost(BoardPostDto dto) {
		return boardPostRepository.insertBoardPost(dto);
	}

	@Override
	public int insertBoardFiles(List<BoardPostFileDto> dto) {
		return boardFileRepository.insertBoardFiles(dto);
	}

	@Override
	public int deleteBoardFileOne(String id) {
		return boardFileRepository.deleteBoardFileOne(id);
	}

	@Override
	public BoardPostDto selectBoardPostById(int id) {
		return boardPostRepository.selectBoardPostById(id);
	}

	@Override
	public int insertBoardPostView(BoardPostViewDto dto) {
		return boardPostViewRepository.insertBoardPostView(dto);
	}

}
