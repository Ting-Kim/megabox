<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% 
	SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy.MM.dd");
	SimpleDateFormat format2 = new SimpleDateFormat ( "HH:mm");
	SimpleDateFormat format3 = new SimpleDateFormat ( "yyMMdd");
	Calendar cal = Calendar.getInstance();
	
	String nowTime = format1.format(cal.getTime());
	String screenDay = format3.format(cal.getTime());
	
	String path = request.getContextPath();
	int branchSeq = Integer.parseInt(request.getParameter("branchSeq"));
	
	String pageNum = "1";
	if(request.getParameter("pageNum") != null){
		pageNum = request.getParameter("pageNum");
	}
	try{
		Integer.parseInt(pageNum);
	} catch(Exception e){
		session.setAttribute("messageType", "오류 메시지");
		session.setAttribute("messageContent", "페이지 번호가 잘못되었습니다.");
		response.sendRedirect("theaterInfo.jsp");		
		return;
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   
</head>
<body>

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
                        
                        <c:if test="${fn:substring(dto.calendar, 6, 7) }">
                           <script>
                              
                           </script>
                        </c:if>
                     </c:forEach>
                  
                     
                  </div>
               </div>
            </div>

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
                           <button class='<c:if test="${dto.weekday eq '토'}">sat</c:if><c:if test="${dto.weekday eq '일'}">holi</c:if><c:if test="${status.index eq 1}">  on</c:if>' 
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
								}	// function btn_onOff(obj)
							
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
    
    <script type="text/javascript">
	    function showTheaterTable(data){
			for (var i = 0; i < data.screenMovieList.length; i++) {
				
				for (var j = 0; j < data.screenTheaterList.length; j++) {
					if (data.screenTheaterList[j].seq_movie == data.screenMovieList[i].seq_movie) {
						
						for (var k = 0; k < data.screenTableList.length; k++) {
							if (data.screenMovieList[i].seq_movie == data.screenTableList[k].seq_movie 
									&& data.screenMovieList[i].seq_movie == data.screenTableList[k].seq_movie) {
								
							}	//	if - data.screenTableList
						}	//	for - data.screenTableList
																		
					}	// if - data.screenTheaterList
				}	// for - data.screenTheaterList
				
			}// for - data.screenMovieList
			
		}	// function showTheaterTable(data)
    </script>
    
</body>
</html></html>