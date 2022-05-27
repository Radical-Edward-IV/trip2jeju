<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login | T2J</title>

    <link rel="stylesheet" href="${contextPath}/resources/css/join.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>

<body>
    <div id="loginWrapper">
        <div id="logo">
            <a href="./index.html">
                <img src="${contextPath}/resources/img/T2JLogo.png" alt="Logo">
            </a>
        </div>
        <div id="joinForm">
            <form action="">
                <input id="user_Id" type="text" placeholder="아이디를 입력하세요."><br>
                <input id="user_Pw" type="password" placeholder="비밀번호를 입력하세요."><br>
                <input id="user_Name" type="text" placeholder="이름을 입력하세요."><br>
                <div id="tel">
                    <span>연락처:</span>
                    <input id="user_Tel" type="text" placeholder="000"> -
                    <input id="user_Tel" type="text" placeholder="0000"> -
                    <input id="user_Tel" type="text" placeholder="0000">
                </div>
                <div id="gender">
                    <span>성별:
                    <input type="radio" name="gender" value="male"> male
                    <input type="radio" name="gender" value="female"> female
                    <input type="radio" name="gender" value="etc."> etc.<br>
                </div>
                <div id="age">
                    <span>나이:
                    <input type="number" name="age" min="1" max="90" value="20">
                </div>
                <input id="join" type="button" value="회원가입">
            </form>
        </div>
    </div>
</body>

</html>