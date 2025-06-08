package net.ktop.ktop.module.web.notice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.util.file.FileDto;
import net.ktop.ktop.module.util.file.FileService;
import net.ktop.ktop.module.web.board.BoardPostDto;
import net.ktop.ktop.module.web.board.BoardPostSearchDto;
import net.ktop.ktop.module.web.board.BoardPostService;
import net.ktop.ktop.module.web.board.file.BoardPostFileDto;
import net.ktop.ktop.module.web.board.view.BoardPostViewDto;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	private final BoardPostService boardPostService;
	private final FileService fileService;

	@Autowired
	public NoticeController(BoardPostService boardPostService, FileService fileService) {
		this.boardPostService = boardPostService;
		this.fileService = fileService;
	}

	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String notice(Model model, BoardPostSearchDto dto) {
		dto.setBoardType(1);
		List<BoardPostDto> boards = boardPostService.selectBoardPostList(dto);
		
		model.addAttribute("boards", boards);
		return "notice/notice/notices";
	}
	
	@RequestMapping(value = "/{id}", method = {RequestMethod.GET})
	public String notice(@PathVariable("id") int id, Model model, @AuthenticationPrincipal CustomUserDetails user) {
		if(user != null) {
			boardPostService.insertBoardPostView(new BoardPostViewDto(id, user.getUsername()));
		}
		BoardPostDto board = boardPostService.selectBoardPostById(id);
		if(board == null) {
			return "redirect:/notice";
		}
		
		model.addAttribute("board", board);
		return "notice/notice/notice";
	}
	
	@RequestMapping(value = "/write", method = {RequestMethod.GET})
	public String noticeWrite() {
		return "notice/notice/write";
	}
	
	@RequestMapping(value = "/write", method = {RequestMethod.POST})
	public String noticeWrite( 
			@ModelAttribute BoardPostDto postDto,
	        @RequestParam(value = "file", required = false) List<MultipartFile> files,
	        @AuthenticationPrincipal CustomUserDetails user) throws IOException {
		
		postDto.setUserId(user.getUsername());
		postDto.setBoardType(1);
		boardPostService.insertBoardPost(postDto);
		
		List<BoardPostFileDto> boardFileList = new ArrayList<>();
		
		if(files != null && files.size() > 0) {
			for(MultipartFile file: files) {
				FileDto fileDto = fileService.saveUploadedFile(file);
				boardFileList.add(new BoardPostFileDto(postDto.getId(), fileDto.getId()));
			}
		}
		
		if(boardFileList != null && !boardFileList.isEmpty()) {
			boardPostService.insertBoardFiles(boardFileList);
   		}
		
		System.out.println(postDto);
		System.out.println(files.size());
		
		return "redirect:/notice/"+postDto.getId();
	}
	
	@RequestMapping(value = "/edit/{id}", method = {RequestMethod.GET})
	public String noticeEdit(@PathVariable("id") int id, Model model, @AuthenticationPrincipal CustomUserDetails user) {
		if(user != null) {
			boardPostService.insertBoardPostView(new BoardPostViewDto(id, user.getUsername()));
		}
		BoardPostDto board = boardPostService.selectBoardPostById(id);
		
		model.addAttribute("board", board);
		return "notice/notice/edit";
	}
	
	@RequestMapping(value = "/edit/{id}", method = {RequestMethod.POST})
	public String noticeEdit(@PathVariable("id") int id, 
			Model model, 
			@AuthenticationPrincipal CustomUserDetails user,
			@ModelAttribute BoardPostDto postDto,
	        @RequestParam(value = "file", required = false) List<MultipartFile> files,
	        @RequestParam(value = "deletedFileIds", required = false) List<Integer> deletedFileIds) throws IOException {
		System.out.println(postDto);
		System.out.println("추가 파일 : "+files.size());
		System.out.println("삭제 파일 : "+deletedFileIds);
		
		if(deletedFileIds != null && !deletedFileIds.isEmpty()) {
			boardPostService.deleteBoardFileInList(deletedFileIds);
		}
		
		postDto.setId(id);
		boardPostService.updateBoardPost(postDto);
		
		List<BoardPostFileDto> boardFileList = new ArrayList<>();
		
		if(files != null && files.size() > 0) {
			for(MultipartFile file: files) {
				FileDto fileDto = fileService.saveUploadedFile(file);
				boardFileList.add(new BoardPostFileDto(postDto.getId(), fileDto.getId()));
			}
		}
		
		if(boardFileList != null && !boardFileList.isEmpty()) {
			boardPostService.insertBoardFiles(boardFileList);
   		}
		
		return "redirect:/notice/"+id;
	}
	
	@RequestMapping(value = "/delete/{id}", method = {RequestMethod.POST})
	public String noticeDelete(@PathVariable("id") int id, @RequestParam(value = "userId", required = true) String userId, @AuthenticationPrincipal CustomUserDetails user) {
		if(user != null && userId.equals(user.getUsername())) {
			boardPostService.deleteBoardPost(id);
		}
		return "redirect:/notice";
	}
}
