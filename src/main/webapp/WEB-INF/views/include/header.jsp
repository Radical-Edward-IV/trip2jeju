<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath}" />

<header>
    <div id="header">
        <div id="logo">
            <a href="./index.html">
                <img src="${contextPath}/resources/img/T2JLogo.png" alt="Logo">
            </a>
        </div>
        <div id="headerCategoryAndUser">
            <div id="categoryList">
                <nav>
                    <ul>
                        <li>
                            <a href="./index.html">주간예보</a>
                        </li>
                        <li>
                            <a href="./review.html">제주후기</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div id="user">
                <a href="./login.html">로그인</a>
            </div>
        </div>
    </div>
</header>