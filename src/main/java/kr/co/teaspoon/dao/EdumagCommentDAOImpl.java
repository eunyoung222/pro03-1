package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Edumag;
import kr.co.teaspoon.dto.EdumagComment;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EdumagCommentDAOImpl implements EdumagCommentDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<EdumagComment> edumagCommentList(int no) throws Exception {
        return sqlSession.selectList("edumagComment.edumagCommentList", no);
    }

    @Override
    public void edumagCommentInsert(EdumagComment dto) throws Exception {
        sqlSession.insert("edumagComment.edumagCommentInsert", dto);
    }

    @Override
    public void edumagCommentDelete(int no) throws Exception {
        sqlSession.delete("edumagComment.edumagCommentDelete", no);
    }

}

