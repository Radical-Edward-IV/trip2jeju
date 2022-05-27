<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${ pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login | T2J</title>

    <link rel="stylesheet" href="${contextPath}/resources/css/login.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>

<body>
    <div id="loginWrapper">
        <div id="logo">
            <a href="./index.html">
                <img src="${contextPath}/resources/img/T2JLogo.png" alt="Logo">
            </a>
        </div>
        <div>
            <form action="">
                <input id="user_Id" type="text" placeholder="아이디를 입력하세요."><br>
                <input id="user_Pw" type="password" placeholder="비밀번호를 입력하세요."><br>
                <input id="login" type="button" value="로그인">
            </form>
            <button id="join" type="button" onclick="location.href='./join.html'">회원가입</button>
            <button id="fineMemInfo" type="button" onclick="location.href='#'">회원정보 찾기</button>
        </div>
    </div>
</body>

</html>