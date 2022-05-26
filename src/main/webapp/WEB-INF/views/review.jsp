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
    <title>main | T2J</title>

    <link rel="stylesheet" href="${contextPath}/resources/css/review.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/css/review.js"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp"/>

    <section id="mainSection">
        <div id="writingFormBntWrapper">
            <button type="button" id="writingFormBnt">글쓰기</button>
        </div>
<%--        <c:forEach items="" var=""> --%>
		        <div class="article">
		            <div class="articleTitle">
		                <p><%-- ${.title} --%></p>
		            </div>
		            <div class="userInfoWrapper">
		                <div class="userInfo">
		                    <div class="avatar">
		                        <img src="http://plztrip.com/common/img/default_profile.png" alt="">
		                    </div>
		                    <div class="userNameAndhits">
		                        <div class="writer"><%--{.writer}--%></div>
		                        <div class="hits">
		                            <%--{.hits}--%>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="boardPhotoAndTxtArea">
		                <p class="photo">
		                    <img src="https://images.unsplash.com/photo-1537519646099-335112f03225?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170" alt="">
		                </p>
		                <p class="txt">
		                   <%--	${.txtTitle } --%>
		                </p>
		                <p class="txt">
		                   <%-- ${.txt } --%>
		                </p>
		            </div>
		            <div class="textAreaBlock">
		                <textarea title="댓글을 남겨주세요" placeholder="댓글을 남겨주세요" rows="1" style="overflow: hidden visible; overflow-wrap: break-word; height: 62px;"></textarea>
		                <button class="replySubmit" onclick="">작성</button>
		            </div>
		        </div>
<%-- 		</c:forEach> --%>
    </section>

    <section id="writingForm" style="display: none;">
        <div class="writing_wrapper">
            <form action="">
                <input type="text" placeholder="제목을 입력하세요">
                <div class="textAreaBlock">
                    <textarea title="댓글을 남겨주세요" placeholder="댓글을 남겨주세요" rows="1" style="overflow: hidden visible; overflow-wrap: break-word; height: 300px;"></textarea>
                    <i id="icon">
                        <svg style="enable-background:new 0 0 100 100;" version="1.1" viewBox="0 0 100 100" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><style type="text/css">
                            .st0{display:none;}
                            .st1{display:inline;fill:#F28888;}
                            .st2{display:inline;}
                            .st3{display:none;fill:#848484;}
                        </style><g class="st0" id="Back"><rect class="st1" height="640" width="1962" x="-1175" y="-107"/></g><g id="Layer_1"><g><path d="M92,0H8C3.582,0,0,3.582,0,8v84c0,4.418,3.582,8,8,8h84c4.418,0,8-3.582,8-8V8C100,3.582,96.418,0,92,0z M98,92    c0,3.308-2.692,6-6,6H8c-3.308,0-6-2.692-6-6V8c0-3.308,2.692-6,6-6h84c3.308,0,6,2.692,6,6V92z"/><path d="M50,20c-16.569,0-30,13.431-30,30s13.431,30,30,30s30-13.431,30-30S66.569,20,50,20z M50,78c-15.439,0-28-12.561-28-28    c0-15.439,12.561-28,28-28s28,12.561,28,28C78,65.439,65.439,78,50,78z"/><path d="M50,27c-12.703,0-23,10.297-23,23c0,12.703,10.297,23,23,23s23-10.297,23-23C73,37.297,62.703,27,50,27z M50,71    c-11.579,0-21-9.421-21-21c0-11.579,9.421-21,21-21s21,9.421,21,21C71,61.579,61.579,71,50,71z"/><path d="M85,9c-3.314,0-6,2.686-6,6s2.686,6,6,6s6-2.686,6-6S88.314,9,85,9z M85,19c-2.206,0-4-1.794-4-4c0-2.206,1.794-4,4-4    s4,1.794,4,4C89,17.206,87.206,19,85,19z"/></g></g></svg>
                    </i>
                </div>
                <div class="bnt_set">
                    <input type="submit" value="제출">
                    <button id="closePop">취소</button>
                </div>
            </form>
        </div>
    </section>

    <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
    
</body>
</html>