package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.EdumagCommentDAO;
import kr.co.teaspoon.dto.Edumag;
import kr.co.teaspoon.dto.EdumagComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EdumagCommentServiceImpl implements EdumagCommentService{

    @Autowired
    private EdumagCommentDAO edumagCommentDAO;

    @Override
    public List<EdumagComment> edumagCommentList(int no) throws Exception {
        return edumagCommentDAO.edumagCommentList(no);
    }

    @Override
    public void edumagCommentInsert(EdumagComment dto) throws Exception {
        edumagCommentDAO.edumagCommentInsert(dto);
    }

    @Override
    public void edumagCommentDelete(int no) throws Exception {
        edumagCommentDAO.edumagCommentDelete(no);
    }

}
