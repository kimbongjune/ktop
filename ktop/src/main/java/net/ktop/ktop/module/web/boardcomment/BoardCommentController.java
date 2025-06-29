package net.ktop.ktop.module.web.boardcomment;


import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.security.CustomUserDetails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@RestController
@RequestMapping("/comment")
public class BoardCommentController {

    private final BoardCommentRepository commentRepository;
    private final BoardCommentService commentService;

    public BoardCommentController(BoardCommentRepository commentRepository, BoardCommentService commentService) {
        this.commentRepository = commentRepository;
        this.commentService = commentService;
    }

    // 댓글 등록 (JSON 입력, JSON 반환)
    @RequestMapping(value = "/add", method = {RequestMethod.POST})
    public BoardCommentDto addComment(@RequestBody BoardCommentDto dto, @AuthenticationPrincipal CustomUserDetails user) {
        // 세션에서 로그인 사용자 ID와 이름 가져오기
        String userId = user.getUsername();
        String userName = user.getName();

        dto.setUserId(userId);
        dto.setUserName(userName);

        commentRepository.insertComment(dto);  // 등록 + PK 설정됨

        // createdAt 값도 세팅
        dto.setCreatedAt(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")));

        return dto;
    }

    // 댓글 삭제 (Soft delete)
    @RequestMapping(value = "/delete/{id}", method = {RequestMethod.POST})
    public String deleteComment(@PathVariable("id") int id, @AuthenticationPrincipal CustomUserDetails user) {
        // 권한 체크: 댓글 조회 후 작성자 확인
        BoardCommentDto existingComment = commentService.selectCommentById(id);
        if(existingComment == null) {
            return "error";
        }
        if(user == null || !existingComment.getUserId().equals(user.getUsername())) {
            return "error";
        }
        
        commentRepository.deleteComment(id);
        return "success";
    }
}
