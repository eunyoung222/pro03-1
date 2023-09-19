package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Edumag;
import kr.co.teaspoon.dto.EdumagComment;

import java.util.List;

public interface EdumagCommentDAO {
    public List<EdumagComment> edumagCommentList(int no) throws Exception;
    public void edumagCommentInsert(EdumagComment dto) throws Exception;
    public void edumagCommentDelete(int no) throws Exception;
}
