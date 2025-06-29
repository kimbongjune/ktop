package net.ktop.ktop.module.web.boardcomment;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardCommentRepository {

    private final SqlSession sqlSession;
    private static final String NAMESPACE = "boardCommentMapper.";

    public BoardCommentRepository(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    public List<BoardCommentDto> selectCommentsByPostId(int postId) {
        return sqlSession.selectList(NAMESPACE + "selectCommentsByPostId", postId);
    }

    public BoardCommentDto selectCommentById(int id) {
        return sqlSession.selectOne(NAMESPACE + "selectCommentById", id);
    }

    public int insertComment(BoardCommentDto dto) {
        return sqlSession.insert(NAMESPACE + "insertComment", dto);
    }

    public int deleteComment(int id) {
        return sqlSession.update(NAMESPACE + "deleteComment", id);
    }
}
