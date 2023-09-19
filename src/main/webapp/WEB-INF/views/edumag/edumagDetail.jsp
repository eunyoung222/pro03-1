<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>교육메거진 글 보기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>

<style>
    .content h2 {
        height: 80px;
        margin-top: 45px;
        text-align: center;
        font-size: 30px;
        margin-bottom: 0.5714em;
        color: #363636;
        font-weight: 540;
        line-height: 40px;
    }

    .column1 {
        text-align: center;
        display: block;
        flex-basis: 0;
        flex-grow: 1;
        flex-shrink: 1;
        padding: 0.75rem;
    }

    .p {
        line-height: 35px;
    }

    .button {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #1D7151;
        border-color: #1D7151;
        color: #ffffff;
    }

    .button2 {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #FFA500;
        border-color: #FFA500;
        color: #ffffff;
    }

</style>

<body>
<div class="container is-fullhd">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/hd.jsp"></jsp:include>
    <div class="content" id="contents">
        <div class="row column1 text-center" style="margin-bottom: 80px;">
            <h2 class="h2">${dto.title}</h2>
            <hr>
            <div class="container">
                <table id="table1">
                    <tbody>
                    <tr>
                        <th style="background-color:#dcdcdc"></th>
                        <td><img src="${pageContext.request.contextPath}/resources/img/${dto.img}"></td>
                    </tr>
                    <tr>
                        <th style="background-color:#dcdcdc"></th>
                        <!-- youtube -->
                        <td class="video">
                            <iframe width="640" height="360"
                                    src="${dto.link}"
                                    title="YouTube video player" frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                    allowfullscreen>

                            </iframe>
                        </td>
                    </tr>
                    <tr>
                        <th style="background-color:#dcdcdc">내용</th>
                        <td class="p"><p>${dto.content }</p></td>
                    </tr>

                    <tr>
                        <th style="background-color:#dcdcdc">작성일</th>
                        <td>${dto.resdate }</td>
                    </tr>
                    <tr>
                        <th style="background-color:#dcdcdc">조회수</th>
                        <td>${dto.visited }</td>
                    </tr>

                    <%-- 댓글창 --%>
                    <div class="container">
                        <div class="form-group">
                            <form method="post" action="<%=request.getContextPath()%>/edumagComment/insert.do">
                                <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                                    <input type="hidden" name="bno" value="${dto.no}">

                                    <input type="text" style="width: 800px; height: 70px;" class="form-control" placeholder="댓글을 남겨주세요!" name="content">
                                    <br><br><input type="submit" class="button2" value="등록">

                                    <%-- 댓글 --%>

                                    <c:forEach items="${edumagCommentList}" var="edumagComment" varStatus="status">
                                        <tr>
                                            <td>
                                                    ${edumagComment.no}
                                            </td>
                                            <td>
                                                    ${edumagComment.id}
                                            </td>
                                            <td>
                                                    ${edumagComment.content}
                                            </td>
                                            <td>
                                                    ${edumagComment.resdate}
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </table>
                                <c:if test= "${sid.equals('admin')}">
                                    <div class="button-group">
                                        <a class="button" href="${path1 }/edumag/list.do">목록으로</a>
                                        <a class="button2" href="${path1 }/edumag/delete.do?no=${dto.no}">삭제</a>
                                        <a class="button2" href="${path1 }/edumag/edit.do?no=${dto.no}">수정</a>
                                    </div>
                                </c:if>
                            </form>
                        </div>
                    </div>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/ft.jsp"></jsp:include>
</div>
</body>
</html>
