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
    <script src="${contextPath}/resources/javascript/review.js"></script>
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
		                <div class="reviewButtonSet">
                    		<div class="modifyReviewWrapper">
                        		<a href="javascript:void(0)" class="modifyReview">
                            		<svg enable-background="new 0 0 48 48" height="48px" id="Layer_1" version="1.1" viewBox="0 0 48 48" width="48px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="Layer_3"><polygon fill="#241F20" points="43.736,6.545 32.562,17.721 32.579,17.739 17.342,32.977 4.248,19.882 0.002,24.128 15.013,39.139    14.998,39.152 17.301,41.455 17.314,41.441 17.328,41.455 18.354,40.43 18.364,40.438 36.822,21.981 36.822,21.981 47.998,10.806     "/></g></svg>
                        		</a>
                    		</div>
                    		<div class="delReviewWrapper">
                        		<a href="javascript:void(0)" class="delReview">
                            		<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title/><path d="M19.5,8.99H4.5a.5.5,0,0,0-.5.5v12.5a2,2,0,0,0,2,2H18a2,2,0,0,0,2-2V9.49A.5.5,0,0,0,19.5,8.99Zm-9.25,11.5a.75.75,0,0,1-1.5,0V11.865a.75.75,0,0,1,1.5,0Zm5,0a.75.75,0,0,1-1.5,0V11.865a.75.75,0,0,1,1.5,0Z"/><path d="M20.922,4.851a11.806,11.806,0,0,0-4.12-1.07,4.945,4.945,0,0,0-9.607,0A12.157,12.157,0,0,0,3.18,4.805,1.943,1.943,0,0,0,2,6.476,1,1,0,0,0,3,7.49H21a1,1,0,0,0,1-.985A1.874,1.874,0,0,0,20.922,4.851ZM11.976,2.01A2.886,2.886,0,0,1,14.6,3.579a44.676,44.676,0,0,0-5.2,0A2.834,2.834,0,0,1,11.976,2.01Z"/></svg>
                        		</a>
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
<%-- 		            <c:forEach items="" var="reply"> --%>
			            <div class="replys">
	                		<div class="replyWrapper">
	                    		<div class="replyUserInfo">
	                        		Blacksocks199304
								<%-- ${reply.info} --%>
	                    		</div>
	                    		<div class="reply">
	                        		Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eius obcaecati vero a perspiciatis illo exercitationem ratione explicabo, autem, repellat, ducimus labore sint in numquam fugiat quas ipsum quos eum quam?
								<%-- ${reply.replyContent} --%>
	                    		</div>
	                    		<div class="replyDate">
	                        		2022. 05. 26.
	                        	<%-- ${replys.date} --%>
	                    		</div>
	                    		<div class="replyButtonSet">
	                        		<div class="modifyreply">
	                            		<svg enable-background="new 0 0 48 48" height="48px" id="Layer_4" version="1.1" viewBox="0 0 48 48" width="48px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g><rect height="10.373" transform="matrix(-0.7073 0.707 -0.707 -0.7073 76.2081 -18.93)" width="6.526" x="38.761" y="1.127"/><polygon points="33.942,7.09 10.721,30.311 10.659,30.311 0.003,40.965 0.003,41.025 0.003,47.66 8.03,47.66 17.354,38.336    17.354,38.309 41.258,14.405  "/></g></svg>
	                        		</div>
	                        		<div class="delreply">
	                            		<svg enable-background="new 0 0 48 48" height="48px" id="Layer_1" version="1.1" viewBox="0 0 48 48" width="48px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="Layer_3"><polygon fill="#241F20" points="47.998,4.247 43.758,0.002 24.001,19.758 4.245,0.002 0.004,4.247 19.758,24.001 0.004,43.755    4.25,47.995 24.001,28.244 43.752,47.995 47.998,43.755 28.244,24.001  "/></g></svg>
	                        		</div>
	                    		</div>
	                		</div>
	                		<div class="replyWrapper">
		                    	<div class="replyUserInfo">
		                      	       Blacksocks199304
									<%-- ${user.info} --%>
		                    	</div>
		                   		<div class="reply">
		                        	<textarea name="modifyForm" class="modifyForm"></textarea>
		                    	</div>
		                    	<div class="replyDate">
		                        	2022. 05. 26.
		                    	</div>
		                    	<div class="replyButtonSet">
		                        	<div class="modifyreply">
		                            	<svg enable-background="new 0 0 48 48" height="48px" id="Layer_1" version="1.1" viewBox="0 0 48 48" width="48px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="Layer_3"><polygon fill="#241F20" points="43.736,6.545 32.562,17.721 32.579,17.739 17.342,32.977 4.248,19.882 0.002,24.128 15.013,39.139    14.998,39.152 17.301,41.455 17.314,41.441 17.328,41.455 18.354,40.43 18.364,40.438 36.822,21.981 36.822,21.981 47.998,10.806     "/></g></svg>
		                        	</div>
		                        	<div class="delreply">
		                            	<svg enable-background="new 0 0 48 48" height="48px" id="Layer_1" version="1.1" viewBox="0 0 48 48" width="48px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="Layer_3"><polygon fill="#241F20" points="47.998,4.247 43.758,0.002 24.001,19.758 4.245,0.002 0.004,4.247 19.758,24.001 0.004,43.755    4.25,47.995 24.001,28.244 43.752,47.995 47.998,43.755 28.244,24.001  "/></g></svg>
		                        	</div>
		                    	</div>
		                	</div>
	            		</div>
<%-- 	            	</c:forEach> --%>
            		
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