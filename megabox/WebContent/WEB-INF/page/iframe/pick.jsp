<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% 
   SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy.MM.dd");
   SimpleDateFormat format2 = new SimpleDateFormat ( "HH:mm");
   SimpleDateFormat format3 = new SimpleDateFormat ( "yyMMdd");
   Calendar cal = Calendar.getInstance();
   
   String nowTime = format1.format(cal.getTime());
   String screenDay = format3.format(cal.getTime());
   
   String path = request.getContextPath();
   
   

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=path%>/css/megabox.min.css" />
<script>
$(function() { // 영화 전체, 큐레이션 버튼 on 
	$('.movie-choice .list-area div button.btn-tab').click(function() {
		$('.movie-choice .list-area div').children('button.on').removeClass('on');
		$(this).addClass('on');
		if ($(this).attr('id')=='movieAll') {
			$('.movie-choice .all-list .list').css('display','block');
			$('.movie-choice .other-list .list').css('display','none');
		}else {
			$('.movie-choice .other-list .list').css('display','block');
			$('.movie-choice .all-list .list').css('display','none');
		}
	})
})
$(function() { // 극장 전체, 특별관 버튼 on
	$('.theater-choice .list-area div button.btn-tab').click(function() {
		$('.theater-choice .list-area div').children('button.on').removeClass('on');
		$(this).addClass('on');
		if ($(this).attr('id')=='theather') {
			$('.theater-choice .all-list .list').css('display','block');
			$('.theater-choice .other-list .list').css('display','none');
		}else {
			$('.theater-choice .other-list .list').css('display','block');
			$('.theater-choice .all-list .list').css('display','none');
		}
	})
})
$(function() { 
	$('#brchList .theaterList li button').click(function() {
		$('.theaterList div.depth').removeClass('on');
		$(this).next().addClass('on');
	})
})
</script>

</head>
<body class="body-iframe">
	<div class="inner-wrap"
		style="padding-top: 40px; padding-bottom: 100px;">
		<input type="hidden" id="playDe" name="playDe" value="2020.07.28">
		<input type="hidden" id="crtDe" name="crtDe" value="2020.07.28">
		<div class="quick-reserve">
			<div class="tit-util">
				<h2 class="tit">빠른예매</h2>
			</div>
			
			<div class="mege-quick-reserve-inculde">
				<div class="time-schedule quick">
					<div class="wrap">
					
						
<% 
      Date todayParse = new Date();
      cal.setTime(todayParse);
      String today = format1.format(todayParse);
      String nowMonth = today.substring(0,7);
      Calendar cal2 = Calendar.getInstance();
      Calendar cal3 = Calendar.getInstance();
      cal2.setTime(todayParse);
      cal3.setTime(todayParse);
      cal3.add(Calendar.MONTH, 1);
      Date whatNextMonth = cal3.getTime();
      String whatMonth = format1.format(whatNextMonth);
      Date whatDayParse = null; 
      String whatDay = "";
   %>
			
					
						<!-- 이전날짜 -->
						<button type="button" title="이전 날짜 보기" class="btn-pre" disabled="true">
							<i class="iconset ico-cld-pre"></i> <em>이전</em>
						</button>
						
						<div class="date-list">
						
							   <div class="year-area">
                  <div class="year" style="left: 30px; z-index: 1; opacity: 1;">
                  <!-- 2020.07 -->
                  <%=nowMonth %></div>
                  <div class="year" style="left:
                  <% 
                     int i = 0;
                     do{
                        whatDayParse = cal2.getTime();
                        cal2.add(Calendar.DATE, 1);
                        whatDay = format1.format(whatDayParse);
                        i++;
                     }while(!whatDay.substring(5, 7).equalsIgnoreCase(whatMonth.substring(5,7)));
                     if(i >= 13){
                  %>
                  <%=30+13*70%>px; z-index: 1; opacity: 1;">                  
                  <%
                     } else{   
                  %>
                     <%=30+(i-1)*70%>px; z-index: 1; opacity: 1;">      
                  <%
                     }
                  %>
                  <!-- 2020.08 -->
                  <%=whatMonth.substring(0, 7)%>
                  </div>
               </div>
               
                     
                     <div class="date-area" id="formDeList">
                        <div class="wrap" style="position: relative; width: 2100px; border: none; left: -70px;">
                       <c:forEach items="${calendarList}" var="dto" varStatus="status">
                           <button  id="a" value ="${dto.calendar}" class='<c:if test="${dto.weekday eq '토'}">sat</c:if><c:if test="${dto.weekday eq '일'}">holi</c:if><c:if test="${status.index eq 1}">  on</c:if>' 
                            type="button" date-data="${dto.calendar}" month="${fn:substring(dto.calendar, 6, 7)-1}" tabindex="<c:if test='${status.first || status.count == 15}'>-1</c:if>" 
                            onclick="btn_onOff(this)">
                              <span class="ir">${fn:substring(dto.calendar, 0, 4)}년 ${fn:substring(dto.calendar, 6, 7)}월</span>
                              <em style="pointer-events: none;">${fn:substring(dto.calendar, 8,10)}<span style="pointer-events: none;" class="ir">일</span></em>
                              <span class="day-kr" style="pointer-events: none; display: inline-block">
                              
                              <c:set value="${dto.calendar}" var="calendarDate"/>
                     
                     <%
                        String calendarString = (String)pageContext.getAttribute("calendarDate");
                        Date calendarDateParse = format1.parse(calendarString);
                        Date tomarrowParse = null;
                        cal.add(Calendar.DATE, +1);
                        tomarrowParse = cal.getTime();
                        String calendarDate = format1.format(calendarDateParse);
                        String tomarrow = format1.format(tomarrowParse);
                        String timeTableCalendarDate = format3.format(calendarDateParse);
                     %>
                     
                     <script type="text/javascript">
                        function btn_onOff(obj){
                           $('.wrap').children('.on').removeClass('on');
                           $(obj).addClass('on');
                         
                           var val = $(obj).val();
                          
                          
                           $('#hidden').attr("value" , val);
                           parent.$('#date').val(val);
                        }   // function btn_onOff(obj)
                     
                     </script>
                     
                        <% if(calendarDate.equals(today)){
                        %>
                           오늘
                        <% 
                           } else if(calendarDate.equals(tomarrow)){
                        %>
                           내일
                        <%
                           } else{
                        %>
                           ${dto.weekday}
                        <%
                           }
                        %>
                                 
                     </span>
                     <span class="day-en" style="pointer-events: none; display: none">
                              <c:if test="${dto.weekday} eq '수'">Wed</c:if>
                              <c:if test="${dto.weekday} eq '목'">Thu</c:if>
                              <c:if test="${dto.weekday} eq '금'">Fri</c:if>
                              <c:if test="${dto.weekday} eq '토'">Sat</c:if>
                              <c:if test="${dto.weekday} eq '일'">Sun</c:if>
                              <c:if test="${dto.weekday} eq '월'">Mon</c:if>
                              <c:if test="${dto.weekday} eq '화'">Tue</c:if>
                              </span>
                     </button>
                     </c:forEach>
                  </div>
               </div>
            </div>
						

						
						<!-- YG -->
						
						
						
						
						
						
						<input type="hidden"  id="hidden" value=""/>
						
						
						<!-- 다음날짜 -->
						<button type="button" title="다음 날짜 보기" class="btn-next">
							<i class="iconset ico-cld-next"></i> <em>다음</em>
						</button>
						<!--// 다음날짜 -->
						<!-- 달력보기 -->
						<div class="bg-line">
							<input type="hidden" id="datePicker" value="2020.07.28"
								class="hasDatepicker">
							<button type="button" id="calendar" class="btn-calendar-large"
								title="달력보기">달력보기</button>
						</div>
						<!--// 달력보기 -->
					</div>
				</div>
				<!--// time-schedule -->

				<!-- quick-reserve-area -->
				<div class="quick-reserve-area">
					<!-- movie-choice : 영화 선택  -->
					<div class="movie-choice">
						<p class="tit">영화</p>
						<!-- list-area -->
						<div class="list-area">
							<!-- all : 전체 -->
							<div class="all-list">
								<button type="button" class="btn-tab on" id="movieAll">전체</button>
								<div class="list a">
									<div class="scroll m-scroll mCustomScrollbar _mCS_1" id="movieList">
										<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
											<div id="mCSB_1_container" class="mCSB_container" style="position: relative; top: 0; left: 0;" dir="ltr">
												<ul class="List">
												<c:if test="${not empty list}">
													<c:forEach items="${list}" var="dto">
													<li>
														<button type="button" class="btn" onclick="fn_movieClick(${dto.num});" >
															<span class="movie-grade small age-${dto.agen}">${dto.age}</span>
															<i class="iconset ico-heart-small">보고싶어 설정안함</i>
															<span class="txt">${dto.name}</span>
														</button>
													</li>
													</c:forEach>
												</c:if>
												</ul>
											</div>
										
											<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;">
												<div class="mCSB_draggerContainer">
													<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; max-height: 310px; top: 0px; height: 33px;">
														<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--// all : 전체 -->

							<!-- other-list  : 큐레이션 -->
							<div class="other-list">
								<button type="button" class="btn-tab" id="movieCrtn">큐레이션</button>
								<div class="list b">
									<div class="scroll m-scroll mCustomScrollbar _mCS_2 mCS_no_scrollbar" id="crtnMovieList">
										<div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
											<div id="mCSB_2_container" class="mCSB_container mCS_no_scrollbar_y" style="position: relative; top: 0; left: 0;" dir="ltr">
												<ul class="List">
												<c:if test="${not empty list}">
													<c:forEach items="${list}" var="dto">
														<c:if test="${dto.type ne '일반'}">
															<li>
															<button type="button" class="btn" onclick="fn_movieClick(${dto.num});">
																<span class="movie-grade small age-${dto.agen}">전체관람가</span>
																<i class="iconset ico-heart-small">보고싶어 설정안함</i>
																<span class="txt">${dto.name}</span>
															</button>
															</li>
														</c:if>
													</c:forEach>
													
													</c:if>
												</ul>
											</div>
													<script>
														$(function() { //영화 클릭했을때 체크표시 
															$('ul.List li button').click(function() {
																$('ul.List li').children('button.on').removeClass('on');
																$(this).addClass('on');
															})
														})
													</script>
													
											<div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical">
												<div class="mCSB_draggerContainer">
													<div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;">
														<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--// other-list  : 큐레이션 -->
						</div>
						<!--// list-area -->

						<!-- view-area -->
						<div class="view-area">
							<div class="choice-all" id="choiceMovieNone">
								<strong>모든영화</strong> <span>목록에서 영화를 선택하세요.</span>
							</div>
						</div>
					</div>
					<div class="theater-choice">
						<div class="tit-area">
							<p class="tit">극장</p>
						</div>


						<div class="list-area" id="brchTab">
							<div class="all-list">
								<button type="button" class="btn-tab on" id="theather">전체</button>
								<div class="list ">
									<div class="scroll" id="brchList">
										<ul class="theaterList">
										<c:if test="${not empty location}">
										<c:forEach items="${location}" var="dto" varStatus="status">
											<li><button type="button" class="btn" id="${dto.seq_loc}"> <span calss="txt">${dto.loc}</span> </button>
												<div class="depth">
												</div>
												</li>
											</c:forEach>
											</c:if>
										</ul>
									</div>
								</div>
							</div>
							<!--// all-list : 전체 -->
 							<script>   
                              $('#brchList .theaterList li button.btn').on('click', function() {
                                 var loc = $(this).attr('id');
                                    $('.depth').empty();
                                 $.get('<%=path%>/book/loc.aj?loc='+loc  , function (data) {            
                                     $.each(data , function(index, datas){                
                                 var str = '<li><button id="btnBranch" type="button"  class = "'+datas.seq_branch+'" onclick="fn_theaterClick('+datas.seq_location+','+datas.seq_branch+');fn_Click();">'+datas.branch+'</button>';
                                  str +=    '</li>  </div> ';
                                  $('.depth').append(str);
                                     })    
                                 }, "json");      
                                 }) 
                              </script>
							</div>
													<script>
														$(function() { //지역  클릭했을때 체크
															$('ul.theaterList li button').click(function() {
																$('ul.theaterList li').children('button.on').removeClass('on');
																$(this).addClass('on');
															})
														})
													</script>


						<!-- view-area -->
						<div class="view-area">
							<!-- 영화관 선택 하지 않았을 때 -->
							<div class="choice-all" id="choiceBrchNone">
								<strong>전체극장</strong> <span>목록에서 극장을 선택하세요.</span>
							</div>

							<!-- 영화관을 한개라도 선택 했을때 -->
							<div class="choice-list" id="choiceBrchList"
								style="display: none;">
								<div class="bg"></div>
								<div class="bg"></div>
								<div class="bg"></div>
							</div>
						</div>
						<!--// view-area -->
					</div>
					<!--// theater-choice : 영화관 선택  -->
					<!-- time-choice : 상영시간표 선택 -->
					<div class="time-choice">
						<div class="tit-area">
							<p class="tit">시간</p>
							<div class="right legend">
								<i class="iconset ico-sun" title="조조"></i> 조조 
								<i class="iconset ico-brunch" title="브런치"></i> 브런치 
								<i class="iconset ico-moon" title="심야"></i> 심야
							</div>
						</div>

						<!-- hour-schedule : 시간 선택  : 00~30 시-->
						<div class="hour-schedule">
							<button type="button" class="btn-prev-time">이전 시간 보기</button>

							<div class="wrap">
								<div class="view" style="position: absolute; width: 1015px;">
								<!--  00시부터 28시까지 존재함  -->
									<button type="button" class="hour" disabled="true" style="opacity: 0.5">00</button>
								<!--  00시부터 28시까지 존재함  -->
								</div>
							</div>
							<button type="button" class="btn-next-time">다음 시간 보기</button>
						</div>
						<!--// hour-schedule : 시간 선택  : 00~30 시-->

						<!-- movie-schedule-area : 시간표 출력 영역-->
						<div class="movie-schedule-area">
							<div class="result">
								<div class="scroll m-scroll mCustomScrollbar _mCS_3 mCS_no_scrollbar" id="playScheduleList" style="display: block;">
									<div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
										<div id="MovieScreen" class="mCSB_container mCS_no_scrollbar_y" style="position: relative; top: 0; left: 0;" dir="ltr">
											<ul></ul>
										</div>
										<div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).on('click','#btnBranch' ,function(e){
			var branch = $(this).text();
		
													 
		var	dateScreen =$("#hidden").val();
			console.log(dateScreen);

			var MovieScreen = $('#MovieScreen').children('ul');
			console.log("출력"+  MovieScreen.val());
			
			MovieScreen.empty();
			
		
			//movie_name, screen_time,  runtime ,theater , branch , theater_grade,seat
			$.get('<%=path%>/book/screen.aj?branch='+branch+'&dateScreen='+dateScreen  , function (data) {				
				console.log(data);
				console.log("성공");
				var size = data.length;
				console.log(size);
				
				if (size==0) {
					
					var str = '<i class="iconset ico-movie-time"></i> <p > ';
					
					str+=  '		해당 요일에<br> 상영중인 영화가 없습니다	</p> ';
					
					   MovieScreen.append(str);
	
					
				}else if(size!=0){
			
				 $.each(data , function(index, datas){					 

				         
var str =       '<li> <button type="button" class="btn" id="'+datas.seq_screen+'" onclick="fn_timeClick('+datas.seq_screen+');fn_clickBtn()">  ';
str+='                                 <div class="legend"> </div>    ';
str+='                                 <span class="time"><strong>'+datas.screen_time+'</strong><em>'+datas.runtime+'분</em></span>   ';
str+='                                 <span class="title"><strong>'+datas.movie_name+'</strong><em>'+datas.theater_grade+'</em></span>   ';
str+='                              <div class="info"><span class="theater" title="극장">'+datas.branch+'<br>'+datas.theater+'</span>   ';
str+='                          <span class="seat"><strong class="now" title="잔여 좌석">몇석남았게!</strong>   ';
str+='                               <span>/</span><em class="all" title="전체 좌석">'+datas.seat+'</em></span>   ';
str+='                        </div> ';
str+='                         </button>  </li> ';
MovieScreen.append(str);
				 })	 
				}//else
			}, "json");		
			}) 
			
			
		function fn_movieClick(movie) {
			parent.$('#movieNum').val(movie);
		}
		function fn_theaterClick(Area,theaterName) {
			parent.$('#theaterArea').val(Area);
			parent.$('#theaterName').val(theaterName);
		}
		function fn_timeClick(time) { //수정해야됨 
			parent.$('#time').val(time);
		}
		function fn_Click() {
			$('div.depth li button#btnBranch').click(function() {
				$('div.depth li').children('button.on').removeClass('on');
				$(this).addClass('on');
			})
		}
	</script>

	<!--// inner-wrap -->
	<div class="normalStyle" style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle" style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
	<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
<script>
function fn_clickBtn() {
	if (parent.movie!== null||parent.movie!== '' && parent.area!==null || parent.area!=='' && parent.time!==null || parent.time!== '' && parent.name!==null || parent.name!=='' ) {
		parent.$('#frameBokdMBooking').attr('src','<%=path%>/iframe/seat.do?movie='+parent.$('#movieNum').val()+'&area='+parent.$('#theaterArea').val()+'&time='+parent.$('#time').val()+'&name='+parent.$('#theaterName').val()+'&date='+parent.$('#date').val());
	}
}
</script>
</body>
</html>