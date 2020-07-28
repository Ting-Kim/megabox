<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>슬라이드 무한 슬라이드</title>
    <style src=></style>
    <style>
       body * {
         height: 50px;
        }
        .slide_box{
            width: 200px;
           position: relative;
           left: 50%;
           margin-left: -100px;
           top: 400px;
           border: 5px blue solid;
           z-index: 100;
        }
        .slide_wrap{
            background: red;
            width: 1000px;
            margin: 0;
            padding: 0;
        }
        .slide_item{
            background: green;
            width: 200px;
            list-style: none;
            float: left;
            text-align: center;
            line-height: 50px;
        }
        .slide_item a{
            text-decoration: none;
            color : black;
        }
    </style>
</head>
<body>
    <div class="slide_box"> 
        <ul class="slide_wrap">
            <li class="slide_item"><a href="#">1</a></li>
            <li class="slide_item"><a href="#">2</a></li>
            <li class="slide_item"><a href="#">3</a></li>
            <li class="slide_item"><a href="#">4</a></li>
            <li class="slide_item"><a href="#">5</a></li>
        </ul>
    </div>
    <script>
        var ul = document.querySelector('.slide_wrap');
 
        function move(){
 
            var curIndex = 0;
 
            setInterval(function(){
                ul.style.transition = '0.2s';
                ul.style.transform = "translate3d(-"+200*(curIndex+1)+"px, 0px, 0px)";
 
                curIndex++;
 
                if(curIndex === 4){
                    curIndex = -1;
                }
 
            },1000);
        }
        
        document.addEventListener("DOMContentLoaded",function(){
            move();
        });
    </script>
    
    <div class="reserve theater-list-box">
			<div class="tab-block tab-layer mb30" style="display: none;">
				<ul></ul>
			</div>
	
			<!-- By 태호, 선택한 지점과 해당 날짜에 상영하는 영화 종류만큼 반복    2020.07.23-->
			
			
			<c:forEach items="${screenMovieList}" var="screenMovieDTO">
				<div class="theater-list" value='1'>
			
					<div class="theater-tit">
						<p class="movie-grade age-15"></p>
						<p>${screenMovieDTO.movie_name}</p>
						<p class="infomation">
							<span>상영중</span>/상영시간 ${screenMovieDTO.runTime}분
						</p>
					</div>
					
			<!-- 어떤 영화 내 상영관마다 반복. . . . -->
			<c:forEach items="${screenTheaterList}" var = "screenTheaterDTO">
			<c:if test="${screenTheaterDTO.seq_movie eq screenMovieDTO.seq_movie}">
					<div class="theater-type-box">
					<div class="theater-type">
						<p class="theater-name">${screenTheaterDTO.theater}</p>
						<p class="chair">총 ${screenTheaterDTO.seats} 석</p>
					</div>
					<div class="theater-time">
						<div class="theater-type-area">2D</div>
						<div class="theater-time-box">
							<table class="time-list-table">
								<caption>상영시간을 보여주는 표 입니다.</caption>
								<colgroup>
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
								</colgroup>
								<tbody>
									<tr>
			<!-- screenMovieDTO.seq_movie eq tableDTO.seq_movie && screenMovieDTO.seq_movie eq tableDTO.seq_movie 
			format1.format(time.getTime());
			-->
			<!-- 어떤 영화, 상영관 내 정보마다 반복.. -->
			<c:forEach items="${screenTableList}" var="tableDTO" >
			<c:if test="${screenMovieDTO.seq_movie eq tableDTO.seq_movie && screenMovieDTO.seq_movie eq tableDTO.seq_movie}">
										<td class="" brch-no="${tableDTO.seq_branch}" play-schdl-no="2007231581003"
											rpst-movie-no="20021300" theab-no="01" play-de="${fn:substring(tableDTO.screen_date, 0, 4)}${fn:substring(tableDTO.screen_date, 5, 7)}${fn:substring(tableDTO.screen_date, 8, 10)}"
											play-seq="3">
											<div class="td-ab">
												<div class="txt-center">
													<a href="" title="영화예매하기">
														<div class="ico-box">
															<i class="iconset ico-off"></i>
														</div>
														<p class="time">${tableDTO.screen_time}</p>
														<p class="chair">${tableDTO.seat}석</p>
														<div class="play-time">
															<p>
															<c:set var="screen_time" value="${tableDTO.screen_time}"></c:set>
															<c:set var="run_time" value="${tableDTO.runTime}"></c:set>
															<!-- java 라이브러리 Date, Calendar 이용-->
															<%
																String screenTime = (String)pageContext.getAttribute("screen_time");
																int runTime = (int)pageContext.getAttribute("run_time")+10;	//	런타임 + 광고 10분
																Date day1 = null;
																day1 = format2.parse(screenTime);
																cal.setTime(day1);
																cal.add(Calendar.MINUTE, runTime);
																String endTime = format2.format(cal.getTime());
															%>
															${tableDTO.screen_time}~<%=endTime%>
															
															</p>
															<%-- 회차 계산 기능 추가..? --%>
															<p>3회차</p>		
														</div>
													</a>
												</div>
											</div>
										</td>
			</c:if>
			</c:forEach>
			<!-- c:forEach tableList -->
									</tr>
								</tbody>
							</table>
						</div>
				</div>
			</c:if>
			</c:forEach>
			<!-- c:forEach screenTheaterList -->
			</div>
		</div>
			</c:forEach>
			<!-- c:forEach screenMovieList -->
			
		
			
			
		</div>
		<div class="box-border v1 mt30">
			<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
			<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
		</div>
	</div>
</body>
</html></html>