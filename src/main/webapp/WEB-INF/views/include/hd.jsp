<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />

<!-- 헤더 내용 기술 -->
<div class="hero-head">
    <div class="first_nav">
        <div class="container">
            <nav class="navbar">
                <div class="navbar-brand">
                    <a class="navbar-item" href="http://aldi.github.io/awesome-bulma-templates">
                        <img src="https://bulma.io/images/bulma-logo.png" alt="Bulma Hotel" width="112" height="28" />
                    </a>
                    <a class="navbar-item is-hidden-desktop" href="tel:+302109849583">
                  <span class="icon" style="color: #333;">
                    <i class="fa fa-lg fa-phone-alt"></i>
                  </span>
                    </a>
                    <a class="navbar-item is-hidden-desktop" href="mailto:reservations@bulmahotels.com">
                  <span class="icon" style="color: #333;">
                    <i class="fa fa-lg fa-envelope"></i>
                  </span>
                    </a>
                    <a class="navbar-item is-hidden-desktop" href="#" target="_blank">
                  <span class="icon">
                    <i class="fab fa-lg fa-facebook-f"></i>
                  </span>
                    </a>
                    <!-- Mobile Menu -->
                    <div class="navbar-burger burger" data-target="navMenuBlogHero">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <div id="navbarBasicExample" class="navbar-menu">
                    <div class="navbar-start"></div>

                    <div class="navbar-end">
                        <div class="navbar-item">
                            <a class="navbar-item is-active" href="${path1}/main">Home</a>
                            <a class="navbar-item">
                                Documentation
                            </a>

                            <div class="navbar-item has-dropdown is-hoverable">
                                <a class="navbar-link">
                                    Community
                                </a>

                                <div class="navbar-dropdown">
                                    <a class="navbar-item is-active">Home</a>
                                    <a class="navbar-item" href="${path1}/edumag/list.do">교육매거진</a>
                                    <a class="navbar-item" href="${path1}/board/list.do">커뮤니티</a>
                                    <a class="navbar-item" href="${path1}/board/list.do">이벤트</a>
                                    <a class="navbar-item" href="${path1}/board/list.do">고객센터</a>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-end">
                            <div class="navbar-item">
                                <div class="buttons">
                                    <c:if test="${!empty sid}">
                                        <a href="${path1}/member/mypage.do" class="button is-primary">
                                            <strong>MyPage</strong>
                                        </a>
                                        <a href="${path1}/member/logout.do" class="button is-light">
                                            LogOut
                                        </a>
                                    </c:if>
                                    <c:if test="${empty sid}">
                                        <a href="${path1}/member/term.do" class="button is-primary">
                                            <strong>Sign up</strong>
                                        </a>
                                        <a href="${path1}/member/login.do" class="button is-light">
                                            Log in
                                        </a>
                                    </c:if>
                                    <c:if test="${sid.equals('admin')}">
                                        <a href="${path1}/member/list.do" class="button is-light">
                                            MemberList
                                        </a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>


<%--<div class="container" id="navbar-container">--%>
<%--    <nav class="navbar" role="navigation" aria-label="main navigation">--%>
<%--        <div class="navbar-brand">--%>
<%--            <a class="navbar-item" href="https://bulma.io">--%>
<%--                <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28" />--%>
<%--            </a>--%>

<%--            <a--%>
<%--                    role="button"--%>
<%--                    class="navbar-burger"--%>
<%--                    aria-label="menu"--%>
<%--                    aria-expanded="false"--%>
<%--                    data-target="navbarBasicExample"--%>
<%--            >--%>
<%--                <span aria-hidden="true"></span>--%>
<%--                <span aria-hidden="true"></span>--%>
<%--                <span aria-hidden="true"></span>--%>
<%--            </a>--%>
<%--        </div>--%>

<%--        <div id="navbarBasicExample" class="navbar-menu">--%>
<%--            <div class="navbar-start"></div>--%>

<%--            <div class="navbar-end">--%>
<%--                <div class="navbar-item">--%>
<%--                    <a class="navbar-item is-active" href="${path1}/main">Home</a>--%>
<%--                    <a class="navbar-item">--%>
<%--                        Documentation--%>
<%--                    </a>--%>

<%--                    <div class="navbar-item has-dropdown is-hoverable">--%>
<%--                        <a class="navbar-link">--%>
<%--                            Community--%>
<%--                        </a>--%>

<%--                        <div class="navbar-dropdown">--%>
<%--                            <a class="navbar-item is-active">Home</a>--%>
<%--                            <a class="navbar-item" href="${path1}/board/list.do">교육매거진</a>--%>
<%--                            <a class="navbar-item" href="${path1}/board/list.do">커뮤니티</a>--%>
<%--                            <a class="navbar-item" href="${path1}/board/list.do">이벤트</a>--%>
<%--                            <a class="navbar-item" href="${path1}/board/list.do">고객센터</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="navbar-end">--%>
<%--                    <div class="navbar-item">--%>
<%--                        <div class="buttons">--%>
<%--                            <c:if test="${!empty sid}">--%>
<%--                                <a href="${path1}/member/mypage.do" class="button is-primary">--%>
<%--                                    <strong>MyPage</strong>--%>
<%--                                </a>--%>
<%--                                <a href="${path1}/member/logout.do" class="button is-light">--%>
<%--                                    LogOut--%>
<%--                                </a>--%>
<%--                            </c:if>--%>
<%--                            <c:if test="${empty sid}">--%>
<%--                                <a href="${path1}/member/term.do" class="button is-primary">--%>
<%--                                    <strong>Sign up</strong>--%>
<%--                                </a>--%>
<%--                                <a href="${path1}/member/login.do" class="button is-light">--%>
<%--                                    Log in--%>
<%--                                </a>--%>
<%--                            </c:if>--%>
<%--                            <c:if test="${sid.equals('admin')}">--%>
<%--                                <a href="${path1}/member/list.do" class="button is-light">--%>
<%--                                    MemberList--%>
<%--                                </a>--%>
<%--                            </c:if>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </nav>--%>
<%--</div>--%>
