<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   
</head>
<body>

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
                  <%
                        
                  %>
                  <%
                     
                  %>
               </div>
               <div class="date-area">
                  <div class="wrap"
                     style="position: relative; width: 2100px; border: none; left: -70px;">
                     
                     <!-- button class, tabindex 수정 필요..... -->
                     <c:forEach items="${calendarList}" var="dto" varStatus="status">
                        <button class='<c:if test="${dto.weekday eq '토'}">sat</c:if><c:if test="${dto.weekday eq '일'}">holi</c:if><c:if test="${status.index eq 1}">  on</c:if>' 
                         type="button" date-data="${dto.calendar}"
                        month="${fn:substring(dto.calendar, 6, 7)-1}" 
                        tabindex="<c:if test='${status.first || status.count == 15}'>-1</c:if>" 
                        onclick="btn_onOff(this)">
                           <span class="ir">${fn:substring(dto.calendar, 0, 4)}년 ${fn:substring(dto.calendar, 6, 7)}월</span>
                           <em   style="pointer-events: none;">${fn:substring(dto.calendar, 8,10)}<span
                              style="pointer-events: none;" class="ir">일</span></em>
                              <span class="day-kr"   style="pointer-events: none; display: inline-block">
                     
                     <!-- by태호, 상영시간표에서 날짜 선택할 때 Class에 on, 토, 일 입력    2020.07.26-->            
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
                           
                           var calendarSplit = $(obj).attr('date-data').split('.');      //   2020.07.27
                           var calendar = calendarSplit[0].substring(2,4)+calendarSplit[1]+calendarSplit[2];
                           var branchSeq = <%=branchSeq%>;
                              $.ajax({
                                 type:"GET",
                                 url:"<%=path%>/theater/theaterTimeTable.ajax",
                                 dataType: 'json',
                                 data:{"calendar":calendar,
                                       "branchSeq":branchSeq},    //   파라미터
                                 success: function(data){
                                    console.log("success");
                                    console.log(data);
                                    showTheaterTable(data);
                                    
                                 },
                                 error: function(e){
                                    console.log(e);
                                 }
                              })   
                              
                        function showTheaterTable(data){
                           let html = "";
                           for (var i = 0; i < data.screenMovieList.length; i++) {
                              html += "<div class='tab-block tab-layer mb30' style='display: none;'><ul></ul></div>";
                              html += "<div class='theater-list' value='1'>"; 
                              html += "<div class='theater-tit'>";
                              html += "<p class='movie-grade age-15'></p>";
                              html += "<p>"+data.screenMovieList[i].movie_name+"</p>";
                              html += "<p class='infomation'><span>상영중</span>/상영시간 "+data.screenMovieList[i].runTime+"분</p></div>";
                              for (var j = 0; j < data.screenTheaterList.length; j++) {
                                 if (data.screenTheaterList[j].seq_movie == data.screenMovieList[i].seq_movie) {
                                    html += "<div class='theater-type-box'>";
                                    html += "<div class='theater-type'>";
                                    html += "<p class='theater-name'>"+data.screenTheaterList[j].theater+"</p>";
                                    html += "<p class='chair'>총 "+data.screenTheaterList[j].seats+ "석</p></div>";
                                    html += "<div class='theater-time'>";
                                    html += "<div class='theater-type-area'>2D</div>";
                                    html += "<div class='theater-time-box'>";
                                    html += "<table class='time-list-table'>";
                                    html += "<caption>상영시간을 보여주는 표 입니다.</caption>";
                                    html += "<colgroup>";
                                    html += "<col style='width: 99px;'>";
                                    html += "<col style='width: 99px;'>";
                                    html += "<col style='width: 99px;'>";
                                    html += "<col style='width: 99px;'>";
                                    html += "<col style='width: 99px;'>";
                                    html += "<col style='width: 99px;'>";
                                    html += "<col style='width: 99px;'>";
                                    html += "<col style='width: 99px;'>";
                                    html += "</colgroup>";
                                    html += "<tbody>";
                                    html += "<tr>";
                                    
                                    for (var k = 0; k < data.screenTableList.length; k++) {
                                       if (data.screenMovieList[i].seq_movie == data.screenTableList[k].seq_movie 
                                             && data.screenMovieList[i].seq_movie == data.screenTableList[k].seq_movie) {
                                          html += '<td class="" brch-no="'+data.screenTableList[k].seq_branch+ '" play-schdl-no="2007231581003"';
                                          html += ' rpst-movie-no="20021300" theab-no="01" play-de="'+data.screenTableList[k].screen_date.substring(0,4)+data.screenTableList[k].screen_date.substring(0, 4)+data.screenTableList[k].screen_date.substring(5, 7)+data.screenTableList[k].screen_date.substring(8, 10)+' play-seq="3">';
                                          html += '<div class="td-ab">';
                                          html += '<div class="txt-center">';
                                          html += '<a href="" title="영화예매하기">';
                                          html += '<div class="ico-box">';
                                          html += '<i class="iconset ico-off"></i>';
                                          html += '</div>';
                                          html += '<p class="time">'+data.screenTableList[k].screen_time+'</p>';
                                          html += '<p class="chair">'+data.screenTableList[k].seat+' 석</p>';
                                          html += '<div class="play-time">';
                                          html += '<p>';
                                             var screen_date_y = data.screenTableList[k].screen_date.substring(0,4);
                                             var screen_date_m = data.screenTableList[k].screen_date.substring(5, 7);
                                             var screen_date_d = data.screenTableList[k].screen_date.substring(8,10);
                                             var screen_time_h = data.screenTableList[k].screen_time.substring(0,2);
                                             var screen_time_m = data.screenTableList[k].screen_time.substring(3,5);
                                             var date = new Date(screen_date_y, screen_date_m-1, screen_date_d, screen_time_h, screen_time_m);
                                             date.setMinutes(date.getMinutes()+ data.screenTableList[k].runTime);
                                             var endTime = moment(date).format("HH:mm");
                                          html += data.screenTableList[k].screen_time+"~"+endTime;
                                          html += '</p>';
                                          html += '<p>3회차</p>';      
                                          html += '</div>';
                                          html += '</a>';
                                          html += '</div>';
                                          html += '</div>';
                                          html += '</td>';
                                       }   //   if - data.screenTableList
                                    }   //   for - data.screenTableList
                                                      
                                    html += '</tr>';
                                    html += '</tbody>';
                                    html += '</table>';
                                    html += '</div>';
                                    html += '</div>';
                                                                        
                                 }   // if - data.screenTheaterList
                              }   // for - data.screenTheaterList
                              
                              html += '</div>';
                              html += '</div>';
                           }// for - data.screenMovieList
                           
                           html += '</div>';
                           html += '</div>';
                           
                        
                           
                           $(".reserve.theater-list-box").empty();
                           $(".reserve.theater-list-box").html(html);
                           
                           
                           }   // function showTheaterTable(data)
                           
                           
                        }   // function btn_onOff(obj)
                        
                        
                        //$(function(){
                        //   $('.wrap').children('.on').removeClass('on');
                        //   var children = $('.theater-list').val();
                        //   if (typeof children == "undefined") {
                        //      $(obj).addClass('disabled');
                        //   }
                        //})
                        
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
                        
                        <c:if test="${fn:substring(dto.calendar, 6, 7) }">
                           <script>
                              
                           </script>
                        </c:if>
                     </c:forEach>
                  
                     
                  </div>
               </div>
            </div>



     <div class="date-list">
                     <div class="year-area">
                        <div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.07</div>
                        <div class="year" style="left: 310px; z-index: 1; opacity: 1;">2020.08</div>
                     </div>
                     <div class="date-area" id="formDeList">
                        <div class="wrap" style="position: relative; width: 2100px; border: none; left: -70px;">
                           <button class="disabled" type="button" date-data="2020.07.27" month="6" tabindex="-1">
                              <span class="ir">2020년 7월</span>
                              <em style="pointer-events: none;">27<span style="pointer-events: none;" class="ir">일</span></em>
                              <span class="day-kr" style="pointer-events: none; display: inline-block">월</span>
                              <span class="day-en" style="pointer-events: none; display: none">Mon</span>
                           </button>
                           <button class="on" type="button" date-data="2020.07.28" month="6">
                              <span class="ir">2020년 7월</span><em
                                 style="pointer-events: none;">28<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">오늘</span><span
                                 class="day-en" style="pointer-events: none; display: none">Tue</span>
                           </button>
                           <button class="" type="button" date-data="2020.07.29" month="6">
                              <span class="ir">2020년 7월</span><em
                                 style="pointer-events: none;">29<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">내일</span><span
                                 class="day-en" style="pointer-events: none; display: none">Wed</span>
                           </button>
                           <button class="" type="button" date-data="2020.07.30" month="6">
                              <span class="ir">2020년 7월</span><em
                                 style="pointer-events: none;">30<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">목</span><span
                                 class="day-en" style="pointer-events: none; display: none">Thu</span>
                           </button>
                           <button class="" type="button" date-data="2020.07.31" month="6">
                              <span class="ir">2020년 7월</span><em
                                 style="pointer-events: none;">31<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">금</span><span
                                 class="day-en" style="pointer-events: none; display: none">Fri</span>
                           </button>
                           <button class="sat" type="button" date-data="2020.08.01" month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">1<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">토</span><span
                                 class="day-en" style="pointer-events: none; display: none">Sat</span>
                           </button>
                           <button class="holi" type="button" date-data="2020.08.02" month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">2<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">일</span><span
                                 class="day-en" style="pointer-events: none; display: none">Sun</span>
                           </button>
                           <button class="" type="button" date-data="2020.08.03" month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">3<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">월</span><span
                                 class="day-en" style="pointer-events: none; display: none">Mon</span>
                           </button>
                           <button class="" type="button" date-data="2020.08.04" month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">4<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">화</span><span
                                 class="day-en" style="pointer-events: none; display: none">Tue</span>
                           </button>
                           <button class="" type="button" date-data="2020.08.05" month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">5<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">수</span><span
                                 class="day-en" style="pointer-events: none; display: none">Wed</span>
                           </button>
                           <button class="" type="button" date-data="2020.08.06" month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">6<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">목</span><span
                                 class="day-en" style="pointer-events: none; display: none">Thu</span>
                           </button>
                           <button class="" type="button" date-data="2020.08.07" month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">7<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">금</span><span
                                 class="day-en" style="pointer-events: none; display: none">Fri</span>
                           </button>
                           <button class="sat" type="button" date-data="2020.08.08"
                              month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">8<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">토</span><span
                                 class="day-en" style="pointer-events: none; display: none">Sat</span>
                           </button>
                           <button class="holi" type="button" date-data="2020.08.09"
                              month="7">
                              <span class="ir">2020년 8월</span><em
                                 style="pointer-events: none;">9<span
                                 style="pointer-events: none;" class="ir">일</span></em><span
                                 class="day-kr"
                                 style="pointer-events: none; display: inline-block">일</span><span
                                 class="day-en" style="pointer-events: none; display: none">Sun</span>
                           </button>
                           <button class="" type="button" date-data="2020.08.10" month="7">
                              <span class="ir">2020년 8월</span>
                              <em style="pointer-events: none;">10<span style="pointer-events: none;" class="ir">일</span></em>
                              <span class="day-kr" style="pointer-events: none; display: inline-block">월</span><span class="day-en" style="pointer-events: none; display: none">Mon</span>
                           </button>
                           <button class="" type="button" date-data="2020.08.11" month="7" tabindex="-1">
                              <span class="ir">2020년 8월</span>
                              <em style="pointer-events: none;">11<span style="pointer-events: none;" class="ir">일</span></em>
                              <span class="day-kr" style="pointer-events: none; display: inline-block">화</span>
                                 <span class="day-en" style="pointer-events: none; display: none">Tue</span>
                           </button>
                        </div>
                     </div>
                  </div>
    
    
    
</body>
</html></html>