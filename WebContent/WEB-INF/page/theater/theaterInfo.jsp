<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="megabox.mvc.model.TheaterInfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="megabox.mvc.dao.TheaterInfoDAO"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
	//ArrayList theaterceList = new ArrayList();
	ArrayList<TheaterInfoDTO> theaterNoticeList = (ArrayList)TheaterInfoDAO.getInstance().TheaterNoticeList(branchSeq, Integer.parseInt(pageNum));
%>
<!doctype html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />

<title>(<c:forEach items="${titleList}" var="titleDTO">${titleDTO.branch}</c:forEach>)
	극장정보 | 라이프씨어터, 메가박스
</title>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%-- <link rel="stylesheet" href="<%=path%>/static/pc/dist/megabox.min.css" media="all" /> --%>
<link rel="stylesheet" href="<%=path%>/css/megabox.min.css" media="all" />
<script src="<%=path%>/static/pc/js/moment.js"></script>
</head>
<body>
	<div class="body-wrap">
		<!-- header -->
		<header id="header">
			<h1 class="ci">
				<a href="/" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<!-- 2019-04-15 마크업 수정 : 고객요청  -->
			<div class="util-area">
				<div class="left-link">
					<a href="<%=path%>/benefit/viplounge.do" title="VIP LOUNGE">VIP
						LOUNGE</a> <a href="<%=path%>/benefit/membership.do" title="멤버십">멤버십</a>
					<a href="<%=path%>/support.do" title="고객센터">고객센터</a>
				</div>

				<div class="right-link">
					<!-- 로그인전 -->
					<div class="before" style="display: none">
						<a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a><!-- 미입력 -->
						<a href="<%=path%>/join.do" title="회원가입">회원가입</a>
					</div>

					<!-- 로그인후 -->
					<div class="after" style="display: none">
						<a href="<%=path%>/logout.do" class="" title="로그아웃">로그아웃</a>
						<a href="" class="notice" title="알림">알림</a>

						<!-- layer-header-notice -->
						<div class="layer-header-notice">
							<div class="notice-wrap">
								<p class="tit-notice">알림함</p>

								<div class="count">
									<p class="left">
										전체 <em class="totalCnt">0</em> 건
									</p>

									<p class="right">* 최근 30일 내역만 노출됩니다.</p>
								</div>

								<!-- scroll -->
								<div class="scroll m-scroll">
									<ul class="list">
										<li class="no-list">알림 내역이 없습니다.</li>
									</ul>
								</div>
								<div class="notice-list-more">
									<button type="button" class="button btn-more-notice-list">
										더보기 <i class="iconset ico-btn-more-arr"></i>
									</button>
								</div>
								<!--// scroll -->
								<button type="button" class="btn-close-header-notice">알림
									닫기</button>
							</div>
							<!--// notice-wrap -->
							<!--// layer-header-notice -->
						</div>

					</div>

					<a href="<%=path%>/booking.do">빠른예매</a>
				</div>
			</div>
			<!--// 2019-04-15 마크업 수정 : 고객요청  -->

			<div class="link-area">		<!-- 미완성 -->	
				<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
					title="사이트맵">사이트맵</a> <a href="#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="<%=path%>/booking/timetable.do" class="link-ticket"
					title="상영시간표">상영시간표</a> <a href="#layer_mymega"
					class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의
					메가박스</a>
			</div>

			<!-- gnb -->
			<!--
        2019-04-15 마크업 수정 : 고객요청
        1뎁스 a 태그에 각각 다른 class 추가
    -->

			<nav id="gnb">
				<ul class="gnb-depth1">
					<li><a href="<%=path%>/movie.do" class="gnb-txt-movie" title="영화">영화</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/movie.do" title="전체영화">전체영화</a></li>
								<li><a href="<%=path%>/curation.do" title="큐레이션">큐레이션</a></li>

								<li id="festivalArea" style="display: none;"><a
									href="<%=path%>/festival" title="영화제">영화제</a></li>
								<li><a href="<%=path%>/moviepost.do" title="무비포스트">무비포스트</a></li>
							</ul>
						</div></li>
					<li><a href="<%=path%>/booking.do" class="gnb-txt-reserve"
						title="예매">예매</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/booking.do" title="빠른예매">빠른예매</a></li>
								<li><a href="<%=path%>/booking/timetable.do" title="상영시간표">상영시간표</a></li> <!-- 미완성 -->
								<li><a href="<%=path%>/booking/privatebooking"
									title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>		<!-- 미완성 -->
							</ul>
						</div></li>
					<li><a href="<%=path%>/theater/list.do=" class="gnb-txt-theater"
						title="극장">극장</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/theater/list.do" title="전체극장">전체극장</a></li>
								<li><a href="<%=path%>/specialtheater/list.do" title="특별관">특별관</a></li>
							</ul>
						</div></li>
					<li><a href="<%=path%>/event.do"
						onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
						class="gnb-txt-event" title="이벤트">이벤트</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/event.do"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
									title="진행중 이벤트">진행중 이벤트</a></li>
								<li><a href="<%=path%>/event/past.do"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
									title="지난 이벤트">지난 이벤트</a></li>
								<li><a href="<%=path%>/event/board.do"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
									title="당첨자발표">당첨자발표</a></li>
							</ul>
						</div></li>
					<li><a href="<%=path%>/store.do"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
						class="gnb-txt-store" title="스토어">스토어</a></li>
					<li><a href="/benefit/membership" class="gnb-txt-benefit"
						title="혜택">혜택</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/benefit/membership.do" title="메가박스 멤버십">메가박스
										멤버십</a></li>
								<li><a href="<%=path%>/benefit/discount.do"
									title="제휴/할인">제휴/할인</a></li>
							</ul>
						</div></li>
				</ul>
			</nav>
</header>
			<!-- by 태호, <nav> 태그 마우스 포인터에 따라 자식 <li> 태그  on/off 기능 (2020.07.12)-->
			<script>
				$('#gnb ul li').children('a').mouseover(function() {

					if ($(this).closest('div').attr('class') != 'gnb-depth2') {
						$('#gnb').find('li').removeClass();
					}

					if ($(this).attr('class') != 'gnb-txt-store') {
						$('#gnb').addClass('on');
						$(this).closest('li').addClass('on');
					}
				});

				$('#header').mouseleave(function() {
					if ($('#gnb ul li a div li').mouseleave()) {

						$('#gnb').removeClass();
						$('#gnb ul li').removeClass();
					}
				});
			</script>

			<div id="schdlContainer" class="container">
				<div class="page-util">
					<div class="inner-wrap">
						<div class="location">
							<span>Home</span> <a href="<%=path%>/theater/list.do"
								title="극장 페이지로 이동">극장</a> <a href="<%=path%>/theater/list.do"
								title="전체극장 페이지로 이동">전체극장</a> <a
								href="<%=path%>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=pageNum%>#tab01"
								title="극장정보 페이지로 이동">극장정보</a>
						</div>
					</div>
				</div>

				<!-- contents -->
				<div id="contents" class="no-padding">

					<!-- theater-detail-page -->
					<div class="theater-detail-page">

						<div class="bg-img"
							style="background-image: url('<%=path%>/static/pc/images/theater/img-theater-detail.jpg');"></div>
						<div class="bg-pattern"></div>
						<div class="bg-mask"></div>

						<!-- theater-all -->
						<div class="theater-all">
							<!-- theater-area-list -->
							<div class="theater-area-list">
								<ul class="area-depth1">

									<li><a href="#" class="depth1" title="서울 선택">서울</a>
										<div class="area-depth2">
											<ul>
												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 1 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>

											</ul>
										</div></li>


									<li><a href="" class="depth1" title="경기 선택">경기</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 2 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>


											</ul>
										</div></li>


									<li><a href="" class="depth1" title="인천 선택">인천</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 3 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>
												
											</ul>
										</div></li>


									<li><a href="" class="depth1" title="대전/충청/세종 선택">대전/충청/세종</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 4 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
														<c:if test="${seq_branch eq 54 or seq_branch eq 66}">
															<i class="iconset ico-theater-new"></i>
														</c:if>
													</c:if>
												</c:forEach>


											</ul>
										</div></li>


									<li><a href="" class="depth1" title="부산/대구/경상 선택">부산/대구/경상</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 5 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch } <c:if
																	test="${dto.seq_branch eq 92}">
																	<i class="iconset ico-theater-new"></i>
																</c:if>
														</a></li>

													</c:if>
												</c:forEach>

											</ul>
										</div></li>

									<li><a href="" class="depth1" title="광주/전라 선택">광주/전라</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq '6' }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>

											</ul>
										</div></li>


									<li><a href="" class="depth1" title="강원 선택">강원</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 7 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>

													</c:if>
												</c:forEach>

											</ul>
										</div></li>


									<li><a href="" class="depth1" title="제주 선택">제주</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 8 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>

											</ul>
										</div></li>

								</ul>
							</div>
							<!--// theater-area-list -->

							<!-- by 태호, 지역별 지점 탭 on/off 기능     2020.07.21    (마우스 떼도 안 없어지는 점 수정해야함.)-->
							<script>
		                        $('.theater-area-list ul li').mouseover(
		                            function() {
		                        	$('.theater-area-list ul li').removeClass();
		                        	$(this).addClass('on');
		                        });
		
		                        $('.theater-area-list ul li').mouseleave(
		                        	function() {
		                        	$('.theater-area-list ul li')   .removeClass();
		                        });
                    		 </script>


							<p class="name">
								<c:forEach items="${titleList}" var="titleDTO">
									${titleDTO.branch}
								</c:forEach>
							</p>
							
							
						<div class="btn-util right">

                        <div class="block">

                           <button type="button" class="btn btn-like tooltip click" id="btn99">
                              <i class="iconset ico-like-line"></i> <span>선호극장</span> 
                              <span class="ir" data-width="235"> <span class="cont-area">
                                    <span class="login-alert-tooltip"> 로그인이 필요한 서비스 입니다.<br>
                                       <a href="" id="moveLogin" title="로그인하기">로그인하기 <i
                                          class="iconset ico-arr-right-green"></i></a>
                                 </span>
                              </span>
                              </span>
                           </button>
                           
                     <div class="tooltip-layer" id="aaaaa" style="display: block; min-width: 200px; z-index: 501; 
                     																opacity: 0; pointer-events: auto; width: 235px; 
                     																top: 20px; left: 925px;">
                     <div class="wrap" style="min-width: 200px; width: 235px;">
                     <div class="tit-area" style="display: none;"></div>
                     <div class="cont-area">
                     <span class="login-alert-tooltip">
                     로그인이 필요한 서비스 입니다.<br>
                     <a href="" id="moveLogin" title="로그인하기">로그인하기 <i class="iconset ico-arr-right-green"></i></a>
                     </span>
                     </div>
                     </div>
                     <button class="btn-close-tooltip" style="display: block;" id="btn9">툴팁 닫기</button>
                     </div>

                        </div>
                     </div>
							
					<script>
	                     $(function() {
	                        $('#btn99').on("click", function() {
	                           $('#aaaaa').css({
	                              'opacity': '1'        
	                           });
	                        })
	                     });
	                     
	                     $(function() {
	                        $('#btn9').on("click", function() {
	                           $('#aaaaa').css('opacity', '0');
	                        })
	                     })
                  	</script>

						</div>
						<!--// theater-detail-cont -->
					</div>
					<!--// theater-detail-page -->

					<div class="inner-wrap pt40">

						<div class="tab-list fixed mb40 tab-layer">
							<ul>
								<li class="on"><a href="#tab01" title="극장정보 탭으로 이동"
									onclick="tabOn('01');">극장정보</a></li>
								<li><a href="#tab02" title="상영시간표 탭으로 이동"
									onclick="tabOn('02');">상영시간표</a></li>
								<li><a href="#tab03" title="관람료 탭으로 이동"
									onclick="tabOn('03');">관람료</a></li>
							</ul>
						</div>



						<div class="tab-cont-wrap">

							<div id="tab01" class="tab-cont on">

								<div class="theater-info-text mt40">
									<c:forEach items="${titleList}" var="titleDTO">
										<p class="big">${titleDTO.title}</p>
										<br>
										<p>${titleDTO.specific }</p>
									</c:forEach>
								</div>

								<h2 class="tit small mt70">시설안내</h2>
								<h3 class="tit small">보유시설</h3>
								<div class="theater-facility">

									<c:forEach items="${facilityList}" var="facilityDTO">
										<p>
											<i class="${facilityDTO.iconFacility}"></i>${facilityDTO.mFacility}
										</p>
									</c:forEach>

								</div>

								<h3 class="tit small mt30">층별안내</h3>

								<ul class="dot-list">

									<c:forEach items="${floorList}" var="floorDTO">
										<li><span class="font-gblue">${floorDTO.floor} : </span>${floorDTO.information }</li>
									</c:forEach>

								</ul>


								<h2 class="tit small mt70">교통안내</h2>

								<h3 class="tit small">약도</h3>

								<ul class="dot-list">
									<c:forEach items="${titleList}" var="dto">
										<li><span class="font-gblue">${dto.address_form} :
										</span>${dto.address}</li>
									</c:forEach>

								</ul>

								<div class="location-map-btn mt15">
									<div class="btn-group left">
										<a
											href="http://m.map.naver.com/map.nhn?lng=127.0264086&amp;lat=37.498214&amp;level=2"
											class="button purple" target="_blank" title="새창열림">실시간
											길찾기</a>
									</div>
								</div>


								<%-- Parking Part --%>
								<h3 class="tit small mt30">주차</h3>

								<div class="parking-info">

									<c:set var="doneLoop" value="false" />
									<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
										<c:if test="${parkDTO.seq_pinfo eq 1 && not doneLoop }">

											<div class="parking-section">
												<div class="icon-box">
													<i class="${parkDTO.iconPark }" title="${parkDTO.pPart}">${parkDTO.pPart}</i>
												</div>
												<div class="info">
													<p class="tit">${parkDTO.pPart}</p>
													<ul class="dot-list">
														<c:set var="doneLoop" value="true" />
										</c:if>
									</c:forEach>

									<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
										<c:if test="${parkDTO.seq_pinfo eq 1 }">
											<li>${parkDTO.pInfo}</li>
										</c:if>
									</c:forEach>
									</ul>
								</div>
								<!-- .info -->

								<!-- .parking-section -->

								<c:set var="doneLoop" value="false" />
								<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
									<c:if test="${parkDTO.seq_pinfo eq 2 && not doneLoop }">

										<div class="parking-section">
											<div class="icon-box">
												<i class="${parkDTO.iconPark }" title="${parkDTO.pPart}">${parkDTO.pPart}</i>
											</div>
											<div class="info">
												<p class="tit">${parkDTO.pPart}</p>
												<ul class="dot-list">
													<c:set var="doneLoop" value="true" />
									</c:if>
								</c:forEach>

								<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
									<c:if test="${parkDTO.seq_pinfo eq 2 }">
										<li>${parkDTO.pInfo}</li>
									</c:if>
								</c:forEach>
								</ul>
							</div>
							<!-- .info -->
						</div>
						<!-- .parking-section -->

						<c:set var="doneLoop" value="false" />
						<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
							<c:if test="${parkDTO.seq_pinfo eq 3 && not doneLoop }">
								<div class="parking-section">
									<div class="icon-box">
										<i class="${parkDTO.iconPark }" title="${parkDTO.pPart}">${parkDTO.pPart}</i>
									</div>
									<div class="info">
										<p class="tit">${parkDTO.pPart}</p>
										<ul class="dot-list">
								<c:set var="doneLoop" value="true" />
							</c:if>
						</c:forEach>

						<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
							<c:if test="${parkDTO.seq_pinfo eq 3 }">
								<li>${parkDTO.pInfo}</li>
							</c:if>
						</c:forEach>
						</ul>
					</div>
					<!-- .info -->
				</div>
				<!-- .parking-section -->
				
			</div>
	<!--  -->
	</div>




	<h3 class="tit small mt30">대중교통</h3>

	<!-- location-info -->
	<div class="public-transportation">

		<!-- 버스 정보 -->

		<c:set var="doneLoop" value="false" />
		<c:forEach items="${trafficList}" var="trafficDTO">
			<c:if test="${trafficDTO.seq_tpart eq 1 && not doneLoop }">
				<div class="transportation-section">
					<div class="icon-box">
						<i class="${trafficDTO.iconTraffic }"
							title="${trafficDTO.traffic}">${trafficDTO.traffic}</i>
					</div>
					<div class="info">
						<p class="tit">${trafficDTO.traffic}</p>
						<ul class="dot-list">
				<c:set var="doneLoop" value="true" />
			</c:if>
		</c:forEach>

		<c:forEach items="${trafficList}" var="trafficDTO" varStatus="status">
			<c:if test="${trafficDTO.seq_tpart eq 1}">
				<li>${trafficDTO.root}</li>
			</c:if>
		</c:forEach>
		</ul>
		<!-- .info -->
		</div>
	</div>
	<!-- .trasportation-section -->



	<!-- 지하철 정보 -->
	<c:set var="doneLoop" value="false" />
	<c:forEach items="${trafficList}" var="trafficDTO">
		<c:if test="${trafficDTO.seq_tpart eq 2 && not doneLoop }">
			<div class="transportation-section">
				<div class="icon-box">
					<i class="${trafficDTO.iconTraffic }" title="${trafficDTO.traffic}">${trafficDTO.traffic}</i>
				</div>
				<div class="info">
					<p class="tit">${trafficDTO.traffic}</p>
					<ul class="dot-list">
						<c:set var="doneLoop" value="true" />
		</c:if>
	</c:forEach>

	<c:forEach items="${trafficList}" var="trafficDTO">
		<c:if test="${trafficDTO.seq_tpart eq 2}">
			<li>${trafficDTO.root}</li>
		</c:if>
	</c:forEach>
	</ul>
	<!-- .info -->
	</div>
	</div>
	<!-- .trasportation-section -->
	</div>
	<!-- 대중교통 정보가 없는 경우 -->

	<!--// location-info -->



	<div id="brchNoti">
		<h2 class="tit small mt70" id="pagenumber">공지사항</h2>

		<!-- accordion-list -->
		<div class="accordion-list">
			<ul>
				<c:forEach items="${theaterNoticeList}" var="dto">
					<li><div class="title">
							<a href="" title="${dto.nTitle}">
								<div class="cont-tit">${dto.nTitle}</div>
								<p class="cont-admin">${dto.branch}</p>
								<p class="cont-date">${dto.nRegidate}</p>
							</a>
						</div>
						<div class="content" style="display: none">${dto.nContent}</div></li>
				</c:forEach>
			</ul>
		</div>
		<!--// accordion-list -->





		<!-- pagination -->

		<nav class="pagination">

			<%
				int startPage = (Integer.parseInt(pageNum) / 10) * 10 + 1;
				if (Integer.parseInt(pageNum) % 10 == 0)
					startPage -= 10;
				int targetPage = TheaterInfoDAO.getInstance().targetPage(branchSeq, Integer.parseInt(pageNum));
				if (startPage != 1) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=startPage - 1%>#pagenumber"
				class="control prev">prev</a>
			<%
				} else {
			%>
			<%
				}
				for (int i = startPage; i < Integer.parseInt(pageNum); i++) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=i%>#pagenumber"
				class=""><%=i%></a>
			<%
				}
			%>
			<strong class="active"><%=pageNum%></strong>
			<%
				for (int i = Integer.parseInt(pageNum) + 1; i < targetPage + Integer.parseInt(pageNum); i++) {
					if (i < startPage + 10) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=i%>#pagenumber"><%=i%></a>

			<%
				}
				}
				if (targetPage + Integer.parseInt(pageNum) > startPage + 9) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=startPage + 10%>#pagenumber"
				class="control next">next</a>
			<%
				}
			%>

		</nav>
		<!--// pagination -->
	</div>




	<h2 class="tit small mt70">강남에서 이용할 수 있는 스토어 상품</h2>

	<div class="store-list">
		<ul class="list">

			<li><a href=""
				onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001304');return false;"
				title="즉석구이콤보 상세보기">

					<div class="label push">추천</div>

					<div class="img">
						<img
							src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/4IdTDK4CS2PxFmMMJTozULSROsPzufHw.png"
							alt="" onerror="noImg(this, 'del')">
					</div>

					<div class="info">
						<div class="tit">
							<!-- 제품명 최대 2줄 -->
							<p class="name">즉석구이콤보</p>

							<!-- 제품구성 최대 2줄 -->
							<p class="bundle">팝콘(R) 1 + 탄산음료(R) 2 + 즉석구이오징어 몸or다리 1</p>
						</div>

						<div class="price">

							<p class="sale">
								<em>13,000</em> <span>원</span>
							</p>
							<p class="ea"></p>
						</div>
					</div>
			</a></li>

			<li><a href=""
				onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001303');return false;"
				title="반반에이드콤보 상세보기">

					<div class="label push">추천</div>

					<div class="img">
						<img
							src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/nRR553PK3zMFtaiYav781vbrTZzIDpFO.png"
							alt="" onerror="noImg(this, 'del')">
					</div>

					<div class="info">
						<div class="tit">
							<!-- 제품명 최대 2줄 -->
							<p class="name">반반에이드콤보</p>

							<!-- 제품구성 최대 2줄 -->
							<p class="bundle">반반팝콘(L) 1 + 에이드 2</p>
						</div>

						<div class="price">

							<p class="sale">
								<em>13,000</em> <span>원</span>
							</p>
							<p class="ea"></p>
						</div>
					</div>
			</a></li>

			<li><a href=""
				onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001302');return false;"
				title="더블콤보 상세보기">

					<div class="label event">BEST</div>


					<div class="img">
						<img
							src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/Fzy9gx2Nzf8ZVgUUrjJve5or0mOBj5Tr.png"
							alt="" onerror="noImg(this, 'del')">
					</div>

					<div class="info">
						<div class="tit">
							<!-- 제품명 최대 2줄 -->
							<p class="name">더블콤보</p>

							<!-- 제품구성 최대 2줄 -->
							<p class="bundle">팝콘(R) 2 + 탄산음료(R) 2</p>
						</div>

						<div class="price">

							<p class="sale">
								<em>12,000</em> <span>원</span>
							</p>
							<p class="ea"></p>
						</div>
					</div>
			</a></li>


		</ul>
	</div>
	</div>	
	<!---------------------------------------tab02 -------------------------------------------->
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


	<div id="tab02" class="tab-cont">
		<a href="" class="ir">상영시간표 탭 화면 입니다.</a>
		<h2 class="tit small" style="display: none;">무대인사</h2>
		<div class="movie-greeting" style="display: none;"></div>
		<h2 class="tit small mt40">상영시간표</h2>
		<div class="time-schedule mb30">
			<div class="wrap">
				<button type="button" title="이전 날짜 보기" class="btn-pre"
					disabled="true">
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
									<em	style="pointer-events: none;">${fn:substring(dto.calendar, 8,10)}<span
										style="pointer-events: none;" class="ir">일</span></em>
										<span class="day-kr"	style="pointer-events: none; display: inline-block">
							
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
									
									var calendarSplit = $(obj).attr('date-data').split('.');		//	2020.07.27
									var calendar = calendarSplit[0].substring(2,4)+calendarSplit[1]+calendarSplit[2];
									var branchSeq = <%=branchSeq%>;
										$.ajax({
											type:"GET",
											url:"<%=path%>/theater/theaterTimeTable.ajax",
											dataType: 'json',
											data:{"calendar":calendar,
													"branchSeq":branchSeq}, 	//	파라미터
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
													}	//	if - data.screenTableList
												}	//	for - data.screenTableList
																		
												html += '</tr>';
												html += '</tbody>';
												html += '</table>';
												html += '</div>';
												html += '</div>';
																								
											}	// if - data.screenTheaterList
										}	// for - data.screenTheaterList
										
										html += '</div>';
										html += '</div>';
									}// for - data.screenMovieList
									
									html += '</div>';
									html += '</div>';
									
								
									
									$(".reserve.theater-list-box").empty();
									$(".reserve.theater-list-box").html(html);
									
									
									}	// function showTheaterTable(data)
									
									
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
								
								<c:if test="${fn:substring(dto.calendar, 6, 7) }">
									<script>
										
									</script>
								</c:if>
							</c:forEach>
						
							
						</div>
					</div>
				</div>
				<button type="button" title="다음 날짜 보기" class="btn-next">
					<i class="iconset ico-cld-next"></i> <em>다음</em>
				</button>
				<div class="bg-line">
					<input type="hidden" name="datePicker" id="dp1595473625960"
						class="hasDatepicker" value="<%=nowTime%>">
				<!-- 달력보기 모달 기능 추가해야함..** -->
					<button type="button" class="btn-calendar-large" title="달력보기">
						달력보기</button>
				</div>
			</div>
		</div>
		<div class="movie-option mb20">
			<div class="option">
				<ul>
					<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>
					<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>
					<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>
					<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>
					<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>
					<li><i class="iconset ico-gv" title="GV"></i>GV</li>
					<li><i class="iconset ico-sun" title="조조"></i>조조</li>
					<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>
					<li><i class="iconset ico-moon" title="심야"></i>심야</li>
				</ul>
			</div>
			<div class="rateing-lavel">
				<a href="javascript:void(0)" class="" title="관람등급안내" id="information-watch-grade">관람등급안내</a>
			</div>
		</div>
		
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



	<!---------------------------------------tab03 -------------------------------------------->
	<!-- by 태호, 아직 미완성.. -->
	<div id="tab03" class="tab-cont">
		<a href="" class="ir">관람료 탭 화면 입니다.</a>
		<h2 class="tit small">영화관람료</h2>
		<div class="fee-table-box">
		
			<c:forEach items="${theaterGradeList}" var="TheaterGradeDTO">
				<div class="fee-table">
				<p class="fee-table-tit">${TheaterGradeDTO.theater_grade}</p>
				<div class="table-wrap">
					<table class="data-table a-c"
						summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
						<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
						<colgroup>
							<col>
							<col style="width: 25%;">
							<col style="width: 25%;">
							<col style="width: 25%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">요일</th>
								<th scope="col">상영시간</th>
								<th scope="col">일반</th>
								<th scope="col">청소년</th>
								<th scope="col">우대</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${partTimeList}" var="PartTimeDTO" varStatus="status">
								<tr>
								<c:if test="${status.first}">
									<th scope="rowgroup" rowspan="4">월~목</th>
								</c:if>
												<td>${PartTimeDTO.part_time}<c:if test="${PartTimeDTO.seq_part_time eq 1}">(06:00~)</c:if><c:if test="${PartTimeDTO.seq_part_time eq 2}">(11:00~)</c:if><c:if test="${PartTimeDTO.seq_part_time eq 3}">(13:00~)</c:if><c:if test="${PartTimeDTO.seq_part_time eq 4}">(22:00~)</c:if></td>
											<c:forEach items="${screenChargeList}" var="ScreenChargeDTO">
												<c:if test="${ScreenChargeDTO.seq_grade eq TheaterGradeDTO.seq_grade 
																	&& ScreenChargeDTO.seq_week eq 1 
																	&& ScreenChargeDTO.seq_part_time eq PartTimeDTO.seq_part_time}">
														<td>${ScreenChargeDTO.movie_charge}</td>
												</c:if>
											</c:forEach>
								</c:forEach>
								</tr>						
									         
								<c:forEach items="${partTimeList}" var="PartTimeDTO" varStatus="status">
								<tr>
								<c:if test="${status.first}">
									<th scope="rowgroup" rowspan="4">금~일<br>
									공휴일</th>
								</c:if>
												<td>${PartTimeDTO.part_time}<c:if test="${PartTimeDTO.seq_part_time eq 1}">(06:00~)</c:if><c:if test="${PartTimeDTO.seq_part_time eq 2}">(11:00~)</c:if><c:if test="${PartTimeDTO.seq_part_time eq 3}">(13:00~)</c:if><c:if test="${PartTimeDTO.seq_part_time eq 4}">(22:00~)</c:if></td>
											<c:forEach items="${screenChargeList}" var="ScreenChargeDTO">
												<c:if test="${ScreenChargeDTO.seq_grade eq TheaterGradeDTO.seq_grade && ScreenChargeDTO.seq_week eq 2 && ScreenChargeDTO.seq_part_time eq PartTimeDTO.seq_part_time}">
														<td>${ScreenChargeDTO.movie_charge}</td>
												</c:if>
											</c:forEach>
										</c:forEach>
								</tr>							
						</tbody>
					</table>
				</div>
			</div>
			
			
			</c:forEach>		
		
	
		</div>
		<span style="color: #503396"><span style="font-size: 22px">요금제</span></span><br>
		<br> • <font color="#01738b">청소년 요금</font>&nbsp; 만7세~ 만18세 :
		초등학생~고등학생(학생증, 교복, 청소년증, 의료보험증, 주민등록 등/초본, 그 외 청소년 확인 가능 서류)<br>
		• 48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료 관람 가능<br> <br>
		<br> <span style="font-size: 22px"><span
			style="color: #503396">우대적용</span></span><br> <br> • <font
			color="#01738b">국가유공자</font>&nbsp; 현장에서 국가유공자증을 소지한 본인 외 동반 1인까지 적용<br>
		• <font color="#01738b">장애인</font>&nbsp; 현장에서 복지카드를 소지한 장애인(1급~3급까지 동반
		1인까지 적용 / 4급~6급은 본인에 한함)<br> • <font color="#01738b">경로</font>&nbsp;
		만65세 이상 본인에 한함(신분증 확인)<br> • <font color="#01738b">미취학아동</font>&nbsp;
		부모 동반한 만4세~ 만6세까지 본인(의료보험증, 주민등록 초/등본 확인)<br> • <font
			color="#01738b">경찰, 소방종사자</font>&nbsp; 공무원증을 소지하거나 정복을 입은 경찰, 소방관 본인<br>
		<br> <br> 관람가격 및 시간대 운영은 극장마다 상이할 수 있으며, 상기 가격은 메가박스 강남점에
		한하여 적용됩니다.
	</div>

	<!--// contents -->
	<!--// container -->

				</div>
	
			</div>
		</div>
	</div>
	
	<!-- by 태호, 극장정보, 상영시간표, 관람료 탭 선택시 해당 <div> class On 효과    2020.07.21
		   by 태호, 극장정보, 상영시간표, 관람료 탭 선택시 해당 <li> 태그 class On 효과	   2020.07.26 -->
	<script type="text/javascript">
		function tabOn(tab) {
			
			var tab_list = document.querySelector('.tab-list.fixed.mb40.tab-layer').firstChild.nextSibling.firstChild.nextSibling;
			var tab_list2 = tab_list.nextSibling.nextSibling;
			var tab_list3 = tab_list2.nextSibling.nextSibling;
			
			
			tab_list.classList.toggle('on', tab=='01');
			tab_list2.classList.toggle('on', tab=='02');
			tab_list3.classList.toggle('on', tab=='03');
			
			for (var i = 1; i <= 3; i++) {
				var title = document.querySelector('#tab0' + i);
				if (title.classList.contains('on')) {
					title.classList.remove('on');
				}
			}
			document.querySelector("#tab" + tab).classList.add('on');
		}
	</script>
	
	<footer id="footer">
			<div class="footer-top">
				<div class="inner-wrap">
					<ul class="fnb">
						<li><a href="#" title="회사소개 페이지로 이동">회사소개</a></li>
						<li><a href="#" title="인재채용 페이지로 이동">인재채용</a></li>
						<li><a href="#" title="사회공헌 페이지로 이동">사회공헌</a></li>
						<li><a href="#" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
						<li><a href="#" title="이용약관 페이지로 이동">이용약관</a></li>
						<li class="privacy"><a href="#" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="#" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#" class="btn-looking-theater" title="극장찾기"><i
						class="iconset ico-footer-search"></i> 극장찾기</a>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="inner-wrap">
					<div class="ci">MEGABOX : Life Theater</div>

					<div class="footer-info">
						<div>
							<address>서울특별시 성동구 왕십리로 50, 6층(성수동 1가, 메가박스스퀘어)</address>
							<p>ARS 1544-0070</p>
						</div>
						<p>대표자명 김진선</p>
						<p>&middot; 개인정보보호책임자 조상연</p>
						<p>&middot; 사업자등록번호 211-86-59478</p>
						<p>&middot; 통신판매업신고번호 제 833호</p>
						<p class="copy">COPYRIGHT &copy; MegaboxJoongAng, Inc. All
							rights reserved</p>
					</div>

					<div class="footer-sns">
						<a href="#" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i
							class="iconset ico-twitter">트위터</i></a> <a href="#" target="_blank"
							title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
						<a href="#" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i
							class="iconset ico-instagram">인스타그램</i></a> <a href="#"
							target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i
							class="iconset ico-googleplay">구글플레이</i></a> <a href="#"
							target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i
							class="iconset ico-appstore">앱스토어</i></a>
					</div>
				</div>
			</div>
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
	</div>
	
	<section id="favor_theater_setting" class="modal-layer" style="z-index: 501;">
<div class="wrap" style="width: 600px; height: 470px; margin-left: -300px; margin-top: -235px;">
	<header class="layer-header">
		<h3 class="tit">관람등급안내</h3>
	</header>

	<div class="layer-con" style="height: 425px;">
		<div class="table-wrap">
			<table class="data-table grade-table">
				<caption>관람 등급을 등급명, 설명 순서로 보여줍니다.</caption>
				<colgroup>
					<col style="width:25%">
					<col>
				</colgroup>
				<thead>
					<tr>
						<th>등급명</th>
						<th>설명</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<p class="movie-grade age-all">전체 관람가</p>
						</td>
						<td>모든 연령의 고객이 관람 가능</td>
					</tr>
					<tr>
						<td>
							<p class="movie-grade age-12">12세 이상 관람가</p>
						</td>
						<td>
							만 12세 이상(주민등록상 생일기준) 관람 가능<br>
							만 12세 미만 고객은 보호자(성인) 동반 시 관람 가능
						</td>
					</tr>
					<tr>
						<td>
							<p class="movie-grade age-15">15세 이상 관람가</p>
						</td>
						<td>
							만 15세 이상(주민등록상 생일기준) 관람 가능<br>
							만 15세 미만 고객은 보호자(성인) 동반 시 관람 가능
						</td>
					</tr>
					<tr>
						<td>
							<p class="movie-grade age-19">청소년 관람 불가</p>
						</td>
						<td>
							만 18세 이상(주민등록상 생일기준) 관람 가능<br>
							- 만 18세 이상이더라도 고등학교 재학중인 경우 관람 불가<br>
							- 신분증을 지참 필수(구매, 입장 시 신분증 확인)<br>
							만 18세 미만 고객은 보호자(성인) 동반 시에도 관람 불가
						</td>
					</tr>
					<tr>
						<td>
							<p class="movie-grade age-no">미정</p>
						</td>
						<td>등급 미정 영화</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<button type="button" class="btn-modal-close">레이어 닫기</button>
</div>
</section>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
<div class="bg-modal" style="opacity: 0;"></div>

<script type="text/javascript">
	$('#information-watch-grade').on("click", function(){
		$('.bg-modal').css({
			'opacity':'1'
		});
		
		if($('.modal-layer').hasClass('on')!==true){
			$('.modal-layer').addClass(' on');
		}
	});

	$('.btn-modal-close').on("click", function(){
		if($('.modal-layer').hasClass('on')===true){
			$('.modal-layer').removeClass(' on');
		};	
		
		$('.bg-modal').css({
			'opacity':'0'
		});
	});
	
</script>

</body>
</html>