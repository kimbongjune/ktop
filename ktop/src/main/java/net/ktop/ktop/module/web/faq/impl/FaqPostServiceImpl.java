package net.ktop.ktop.module.web.faq.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.board.BoardPostSearchDto;
import net.ktop.ktop.module.web.faq.FaqPostDto;
import net.ktop.ktop.module.web.faq.FaqPostRepository;
import net.ktop.ktop.module.web.faq.FaqPostService;

@Service
public class FaqPostServiceImpl implements FaqPostService{

	private final FaqPostRepository faqPostRepository;

	@Autowired
	public FaqPostServiceImpl(FaqPostRepository faqPostRepository) {
		this.faqPostRepository = faqPostRepository;
	}

		@Override
	public List<FaqPostDto> selectFaqPostList(BoardPostSearchDto dto) {
		return faqPostRepository.selectFaqPostList(dto);
	}

	@Override
	public int selectFaqPostCount(BoardPostSearchDto dto) {
		return faqPostRepository.selectFaqPostCount(dto);
	}

	@Override
	public FaqPostDto selectFaqPostOne(int id) {
		return faqPostRepository.selectFaqPostOne(id);
	}

	@Override
	public int insertFaqPost(FaqPostDto dto) {
		return faqPostRepository.insertFaqPost(dto);
	}

	@Override
	public int updateFaqPost(FaqPostDto dto) {
		return faqPostRepository.updateFaqPost(dto);
	}

	@Override
	public int deleteFaqPost(int id) {
		return faqPostRepository.deleteFaqPost(id);
	}
	
}
