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

    <link rel="stylesheet" href="${contextPath}/resources/css/index.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/javascript/index.js"></script>
</head>

<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp"/>

    <section id="mainSection">
        <div id="subTitle">
            <h2>관광지 날씨 예보</h2>
            <p>제주 유명 여행지의 실시간 기상 컨디션!</p>
        </div>
        <div id="selectCity">
            <button type="button" class="jeju">제주시</button>
            <button type="button" class="seogwipo">서귀포시</button>
        </div>
        <div id="sightsWrapper">
	        <c:forEach var='jejusi' items="${ sightsInfo.jeju }">
	        	<div class='jejuContnet'>
		            <div class="sights btnOpen">
		                <div  class="sightsImg">
		                    <img src="${ jejusi.thumbnail }" alt="관광지 이미지">
		                </div>
		                <div class="sightsTitle">
		                   	${ jejusi.title }
		                </div>
		                <div class="weatherIcon">
		                    <div id="icon">
		                        <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
		                    </div>
		                    <div id="iconDesc">
		                        <div id="tciGrade">
		                            TCI Grade    
		                        </div>
		                        <div id="grade">
		                            ${ tciGradeInfo[0].tciGrade }
		                        </div>
		                    </div>
		                </div>
		                <div class="weatherInfo">
		                    야외 활동하기 좋아요!
		                </div>
		            </div>
		        </div>
	        </c:forEach>
	        <c:forEach var='seogwipo' items="${ sightsInfo.seogwipo }">
	        	<div class='jejuContnet'>
		            <div class="sights btnOpen">
		                <div  class="sightsImg">
		                    <img src="${ seogwipo.thumbnail }" alt="관광지 이미지">
		                </div>
		                <div class="sightsTitle">
		                   	${ seogwipo.title }
		                </div>
		                <div class="weatherIcon">
		                    <div id="icon">
		                        <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
		                    </div>
		                    <div id="iconDesc">
		                        <div id="tciGrade">
		                            TCI Grade    
		                        </div>
		                        <div id="grade">
		                            ${ tciGradeInfo[0].tciGrade }
		                        </div>
		                    </div>
		                </div>
		                <div class="weatherInfo">
		                    야외 활동하기 좋아요!
		                </div>
		            </div>
		        </div>
	        </c:forEach>
	    </div>
    </section>

    <jsp:include page="/WEB-INF/views/include/footer.jsp"/>

    <!-- Pop-up -->
    <div id="weeklyWeatherPop" style="display: none;">
        <div id="popContents">
            <div id="popSightsInfoWrapper">
                <p id="popSightsImg"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/201811/16/18e0e413-3599-49ef-9a15-dd1e8831c731.jpg" alt="관광지 이미지"></p>
                <p id="popSightsTitle">아름다운 섬 마라도에서 외치는 버리지 마라도!</p>
                <p id="addrTel"><span>제주특별자치도 제주시 한라대학로 79</span><span>/</span><span>064-712-1577</span></p>
                <p id="popSightsDesc">제주국제공항과 가까운 곳에 자리 잡고 있어 여행 전후로 많은 사람들이 찾는 꽃집 안나네꽃마을</p>
                <p id="sightsTags">
               		<span>#꽃</span><span>#꽃집</span><span>#기념품/소품</span><span>#꽃다발</span>
             	</p>
            </div>
            <div id="weatherInfoWrapper">
                <div id="d_0" class="weatherInfo">
                    <div class="week">월요일</div>
                    <div>
                        <div class="tciGrade">
                            <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
                        </div>
                        <div class="temp">(37.2˚C)</div>
                    </div>
                </div>
                <div id="d_0" class="weatherInfo">
                    <div class="week">화요일</div>
                    <div>
                        <div class="tciGrade">
                            <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
                        </div>
                        <div class="temp">(37.2˚C)</div>
                    </div>
                </div>
                <div id="d_0" class="weatherInfo">
                    <div class="week">수요일</div>
                    <div>
                        <div class="tciGrade">
                            <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
                        </div>
                        <div class="temp">(37.2˚C)</div>
                    </div>
                </div>
                <div id="d_0" class="weatherInfo">
                    <div class="week">목요일</div>
                    <div>
                        <div class="tciGrade">
                            <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
                        </div>
                        <div class="temp">(37.2˚C)</div>
                    </div>
                </div>
                <div id="d_0" class="weatherInfo">
                    <div class="week">금요일</div>
                    <div>
                        <div class="tciGrade">
                            <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
                        </div>
                        <div class="temp">(37.2˚C)</div>
                    </div>
                </div>
                <div id="d_0" class="weatherInfo">
                    <div class="week">토요일</div>
                    <div>
                        <div class="tciGrade">
                            <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
                        </div>
                        <div class="temp">(37.2˚C)</div>
                    </div>
                </div>
                <div id="d_0" class="weatherInfo">
                    <div class="week">일요일</div>
                    <div>
                        <div class="tciGrade">
                            <svg id="icone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><title/><path d="M369.14,256.14a105.1,105.1,0,0,0-7.34-23.33,64.4,64.4,0,0,0-12.66,3.33,105.64,105.64,0,0,0-19.9-44.46A106,106,0,0,0,159,276c0,2.72.11,5.41.31,8.08a50,50,0,0,0-58.23,71.83A49.78,49.78,0,0,0,125,362H372a65,65,0,0,0,54.85-99.85,65,65,0,0,0-57.71-6Z" fill="#b6c4cf"/><path d="M146.5,216.81c-.07.19-.15.37-.22.56s-.15.36-.22.55" fill="none" stroke="#02005c" stroke-linecap="round" stroke-linejoin="round" stroke-width="20"/><path d="M436.87,300.41c1.86-33.07-22.91-63.16-55.72-67.76a65.39,65.39,0,0,0-32,3.5c-6.45-34.08-30-62.91-61.32-77.47C244,137,187,154,158.85,194.24" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M416.65,344.24a64.67,64.67,0,0,0,13.64-18.62" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/><path d="M139.83,242.7a107.71,107.71,0,0,0-.53,21.39A50.48,50.48,0,0,0,80,290.22,48.32,48.32,0,0,0,80,334c3,5,6,11,11,15a83.42,83.42,0,0,0,12,8,120.9,120.9,0,0,0,18,5q129,1.5,258,0c5,0,11-3,15.92-4.16" fill="none" stroke="#02005c" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20"/></svg>
                        </div>
                        <div class="temp">(37.2˚C)</div>
                    </div>
                </div>
            </div>
            <button id="closePop">닫기</button>
        </div>
    </div>
</body>

</html>