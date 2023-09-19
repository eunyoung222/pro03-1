package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.EdumagComment;
import kr.co.teaspoon.service.EdumagCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/edumagComment/*")
public class EdumagCommentController {

    @Autowired
    private EdumagCommentService edumagCommentService;

    @PostMapping("insert.do")
    public String edumagCommentInsert(HttpServletRequest request, Model model) throws Exception {
        EdumagComment dto = new EdumagComment();

        dto.setBno(Integer.parseInt(request.getParameter("bno")));
        // dto.setId(request.getParameter("id"));
        dto.setContent(request.getParameter("content"));
        edumagCommentService.edumagCommentInsert(dto);
        return "redirect:list.do";
    }

    @GetMapping("delete.do")
    public String edumagCommentDelete(HttpServletRequest request, Model model) throws Exception {
        int no = Integer.parseInt(request.getParameter("no"));
        edumagCommentService.edumagCommentDelete(no);
        return "redirect:list.do";
    }

}
