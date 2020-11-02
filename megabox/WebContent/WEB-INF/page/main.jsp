<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
Cookie[] c = request.getCookies();
String cookieVal="";
if(c!=null){
    for(Cookie i:c){
        if(i.getName().equals("saveId")){
            cookieVal=i.getValue();
        }
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=path%>/css/megabox.min.css" media="all" />
<link rel="stylesheet" href="<%=path%>/css/main.css" media="all" />
<script src="<%=path%>/js/megabox.js"></script>

<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<title>라이프시어터, 메가박스</title>
</head>
<body>
<section id="layer_login_select" class="modal-layer" style="z-index: 501;">
<a href="" class="focus">레이어로 포커스 이동 됨</a>
<div class="wrap" style="width: 425px; height: 365px; top:200px;left:37%;">
	<header class="layer-header"> <h3 class="tit">로그인</h3> </header>
	<div class="layer-con" style="height: 350px;">
		<div class="tab-cont-wrap">
		<div id="login_tab_01" class="tab-cont on">
			<a href="" class="ir" title="로그인"></a>
			<div class="login-member col-2">
				<div class="col-wrap">
					<div class="col left">
					<form id="loginForm" action="<%=path%>/login.do" method="post">
						<div class="login-input-area">
						<input autocomplete="off" id="ibxLoginId" maxlength="20" name="id" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim" <%if(cookieVal!=null){%>value="<%=cookieVal%>"<%} %>>
						<input autocomplete="off" id="ibxLoginPwd" maxlength="20" name="pwd" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15">
						<input type="hidden" name="url" id="pageUrl"/>
							<div class="alert"></div>
							<div class="chk-util">
								<div class="left">
									<input id="chkIdSave" name="chkIdSave" type="checkbox" <%if(cookieVal!=null&&cookieVal!=""){%>checked="checked"<%}%>> <label for="chkIdSave">아이디 저장</label>
								</div>
							</div>
							<button id="btnLogin" type="submit" class="button purple large btn-login" >로그인</button>
							<div class="link">
								<a href="<%=path%>/user-find.do?find=id" title="ID/PW 찾기 선택">ID/PW 찾기</a>
								<a href="<%=path%>/join.do" title="회원가입 선택">회원가입</a>
								<a href="<%=path%>/nonMem.do" title="비회원 예매확인 선택">비회원 예매확인</a>
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	<button type="button" class="btn-modal-close">레이어 닫기</button>
</div>
</section>

<header id="header" class="main-header no-bg none-ad">
    <h1 class="ci"><a href="main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
    <div class="util-area">
        <div class="left-link">
            <a href="<%=path%>/benefit/viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="<%=path%>/benefit/membership.do" title="멤버십">멤버십</a>
            <a href="<%=path%>/support.do" title="고객센터">고객센터</a>
        </div>
        <div class="right-link">
<!-- 로그인전 -->
	<c:if test="${empty sessionScope.auth}">
            <div class="before">
                <a href="javascript:void(0)" id="login" title="로그인">로그인</a>
                <a href="<%=path%>/join.do" title="회원가입">회원가입</a>
            </div>
	</c:if>
<!-- 로그인후 -->
	<c:if test="${not empty sessionScope.auth}">
           <div class="after">
                <a href="<%=path%>/logout.do" class="" title="로그아웃">로그아웃</a>
                <a href="" class="notice" title="알림">알림</a>
				<div class="layer-header-notice">
					<div class="notice-wrap">
						<p class="tit-notice">알림함</p>
						<div class="count">
							<p class="left">전체 <em class="totalCnt">0</em> 건</p>
							<p class="right">* 최근 30일 내역만 노출됩니다.</p>
						</div>
						<div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
							<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
								<ul class="list">
									<li class="no-list">
										알림 내역이 없습니다.
									</li>
								</ul>
							</div>
								<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="notice-list-more">
							<button type="button" class="button btn-more-notice-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
						</div>
						<button type="button" class="btn-close-header-notice">알림 닫기</button>
					</div>
            	</div>
           		<a href="<%=path%>/booking.do">빠른예매</a>
        </div>
	</c:if>
    	</div>
    </div>
     <div class="link-area">
        <a href="#layer_sitemap" id="sitemap" class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
        <a href="#layer_header_search" class="header-open-layer btn-layer-search" title="검색">검색</a>
        <a href="<%=path%>/booking/timetable.do" class="link-ticket" title="상영시간표">상영시간표</a>
        <a href="#layer_mymega" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
    </div>
    <nav id="gnb" class="">
        <ul class="gnb-depth1">
            <li><a href="<%=path %>/movie.do" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="<%=path%>/movie.do" title="전체영화">전체영화</a></li>
                        <li><a href="<%=path%>/curation.do" title="큐레이션">큐레이션</a></li>
                        <li id="festivalArea" style="display: none;"><a href="#" title="영화제">영화제</a></li>
                        <li><a href="<%=path%>/moviepost.do" title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="<%=path%>/booking.do" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="<%=path%>/booking.do" title="빠른예매">빠른예매</a></li>
                        <li><a href="<%=path%>/booking/timetable.do" title="상영시간표">상영시간표</a></li>
                        <li><a href="<%=path%>/booking/privatebooking.do" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="<%=path %>/theater/list.do" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="<%=path %>/theater/list.do" title="전체극장">전체극장</a></li>
                        <li><a href="<%=path %>/specialtheater/list.do" title="특별관">특별관</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="<%=path %>/event.do"  class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="<%=path %>/event.do"  title="진행중 이벤트">진행중 이벤트</a></li>
                        <li><a href="<%=path%>/event/past.do"  title="지난 이벤트">지난 이벤트</a></li>
                        <li><a href="<%=path%>/board.do"  title="당첨자발표">당첨자발표</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="<%=path %>/store.do"  class="gnb-txt-store" title="스토어">스토어</a></li>
            <li><a href="<%=path %>/benefit/membership.do" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="<%=path %>/benefit/membership.do" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="<%=path %>/benefit/discount.do" title="제휴/할인">제휴/할인</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
    <div id="layer_sitemap" class="header-layer layer-sitemap">
        <div class="wrap">
            <a href="" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>
            <p class="tit">SITEMAP</p>
            <div class="list position-1">
                <p class="tit-depth">영화</p>
                <ul class="list-depth">
                    <li><a href="<%=path%>/movie.do" title="전체영화">전체영화</a></li>
                    <li><a href="<%=path%>/curation.do" title="큐레이션">큐레이션</a></li>
                    <li><a href="javascript:void(0)" title="영화제">영화제</a></li>
                    <li><a href="<%=path%>/moviepost.do" title="무비포스트">무비포스트</a></li>
                </ul>
            </div>

            <div class="list position-2">
                <p class="tit-depth">예매</p>
                <ul class="list-depth">
                    <li><a href="<%=path%>/booking.do" title="빠른예매">빠른예매</a></li>
                    <li><a href="<%=path%>/booking/timetable.do" title="상영시간표">상영시간표</a></li>
                    <li><a href="<%=path%>/booking/privatebooking.do" title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
                </ul>
            </div>

            <div class="list position-3">
                <p class="tit-depth">극장</p>
                <ul class="list-depth">
                    <li><a href="<%=path %>/theater/list.do" title="전체극장">전체극장</a></li>
                    <li><a href="<%=path %>/specialtheater/list.do" title="특별관">특별관</a></li>
                </ul>
            </div>

            <div class="list position-4">
                <p class="tit-depth">이벤트</p>
                <ul class="list-depth">
                    <li><a href="<%=path%>/event.do"  title="진행중 이벤트">진행중 이벤트</a></li>
                    <li><a href="<%=path%>/event/past.do"  title="지난 이벤트">지난 이벤트</a></li>
                    <li><a href="<%=path%>/board.do"  title="당첨자발표">당첨자발표</a></li>
                </ul>
            </div>
            
            <div class="list position-5">
                <p class="tit-depth">스토어</p>
                <ul class="list-depth">
                    <li><a href="<%=path %>/store.do?group=0"  title="새로운 상품">새로운 상품</a></li>
                    <li><a href="<%=path %>/store.do?group=1"  title="메가티켓">메가티켓</a></li>
                    <li><a href="<%=path %>/store.do?group=2"  title="메가찬스">메가찬스</a></li>
                    <li><a href="<%=path %>/store.do?group=3"  title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
                </ul>
            </div>
            
            
            <div class="list position-6">
                <p class="tit-depth">나의 메가박스</p>
                <ul class="list-depth mymage">
            		<li><a href="#" title="나의 메가박스 홈">나의 메가박스 홈</a></li>
		            <li><a href="#" title="예매/구매내역">예매/구매내역</a></li>
		            <li><a href="#" title="영화관람권">영화관람권</a></li>
		            <li><a href="#" title="스토어교환권">스토어교환권</a></li>
		            <li><a href="#" title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>
		            <li><a href="#" title="멤버십포인트">멤버십포인트</a></li>
		            <li><a href="#" title="나의 무비스토리">나의 무비스토리</a></li>
		            <li><a href="#" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
		            <li><a href="#" title="나의 문의내역">나의 문의내역</a></li>
		            <li><a href="#" title="자주쓰는 할인 카드">자주쓰는 할인 카드</a></li>
		            <li><a href="#" title="회원정보">회원정보</a></li>
                </ul>
            </div>
            
            <div class="list position-7">
                <p class="tit-depth">혜택</p>
                <ul class="list-depth">
                    <li><a href="<%=path %>benefit/membership.do" title="멤버십 안내">멤버십 안내</a></li>
                    <li><a href="<%=path %>benefit/viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a></li>
                    <li><a href="<%=path %>benefit/discount.do" title="제휴/할인">제휴/할인</a></li>
                </ul>
            </div>

            <div class="list position-8">
                <p class="tit-depth">고객센터</p>
                <ul class="list-depth">
                    <li><a href="<%=path%>/support.do" title="고객센터 홈">고객센터 홈</a></li>
                    <li><a href="<%=path%>/support/faq.do" title="자주묻는질문">자주묻는질문</a></li>
                    <li><a href="<%=path%>/support/notice.do" title="공지사항">공지사항</a></li>
                    <li><a href="<%=path%>/support/inquiry.do" title="1:1문의">1:1문의</a></li>
                    <li><a href="<%=path%>/support/rent.do" title="단체/대관문의">단체/대관문의</a></li>
                    <li><a href="<%=path%>/support/lostQna.do" title="분실물문의">분실물문의</a></li>
                </ul>
            </div>

            <div class="list position-9">
                <p class="tit-depth">회사소개</p>
                <ul class="list-depth">
                    <li><a href="#" target="_blank" title="메가박스소개">메가박스소개</a></li>
                    <li><a href="#" target="_blank" title="사회공헌">사회공헌</a></li>
                    <li><a href="#" target="_blank" title="홍보자료">홍보자료</a></li>
                    <li><a href="#" target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
                    <li><a href="#" target="_blank" title="온라인제보센터">온라인제보센터</a></li>
                    <li><a href="#" target="_blank" title="자료">IR자료</a></li>
                    <li><a href="#" target="_blank" title="인재채용림">인재채용</a></li>
                    <li><a href="#" target="_blank" title="윤리경영">윤리경영</a></li>
                </ul>
            </div>

            <div class="list position-10">
                <p class="tit-depth">이용정책</p>
                <ul class="list-depth">
                    <li><a href="<%=path%>" title="이용약관">이용약관</a></li>
                    <li><a href="<%=path%>/support/privacy.do" title="개인정보처리방침">개인정보처리방침</a></li>
                    <li><a href="<%=path%>" title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
                </ul>
            </div>
            <div class="ir">
                <a href="#" class="layer-close" title="레이어닫기">레이어닫기</a>
            </div>
        </div>
    </div>
<!-- 레이어 : 검색 -->
    <div id="layer_header_search" class="header-layer layer-header-search"></div>
    
<!-- 나의 메가박스 -->
    <div id="layer_mymega" class="header-layer layer-mymege">
    	<a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>
        <div class="wrap" id="mymegabox" style="display:block">
        <c:if test="${not empty sessionScope.auth}">
            <div class="login-after">
                <div class="user-info">
                    <p class="txt">안녕하세요!</p>
                    <p class="info">
                    <c:if test="${auth.mem_grade gt 3}">
                       <em class="vip">VIP PREMIUM</em>
                    </c:if>
                       <em class="name">${auth.name}</em><span> 회원님</span>
                    </p>
                    <div class="last-date">마지막 접속일 : <em><%=session.getAttribute("date")%></em></div>
                    <div class="membership">${auth.grade}</div>
                    <div class="btn-fixed">
                        <a href="#" class="button" title="나의 메가박스">나의 메가박스</a>
                    </div>
                </div>
                <div class="box">
                    <div class="point">
                        <p class="tit">Point</p>
                        <p class="count">${auth.point}</p>
                        <div class="btn-fixed">
                            <a href="#포인트이용내역으로 이동" class="button" title="멤버십 포인트">멤버십 포인트</a>
                        </div>
                    </div>
                </div>
                
                <div class="box">
                    <div class="coupon">
                        <p class="tit">쿠폰/관람권</p>
                        <p class="count">
                            <em title="쿠폰 수" class="cpon">0</em>
                            <span title="관람권 수" class="movie">0</span>
                        </p>
                       	<div class="btn-fixed">
                            <a href="#쿠폰페이지이동" class="button" title="쿠폰">쿠폰</a>
                            <a href="#관람권" class="button" title="관람권">관람권</a>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="reserve">
                        <p class="tit">예매</p>
                        <p class="txt">${auth.bookingList}</p>
                        <div class="btn-fixed">
                            <a href="#예매내역으로 이동" class="button" title="예매내역">예매내역 </a>
                        </div>
                    </div>
                </div>
                
                <div class="box">
                    <div class="buy">
                        <p class="tit">구매</p>
                        <p class="count"><em>${auth.buyList}</em><span> 건</span></p>
                    </div>
                    <div class="btn-fixed">
                        <a href="#구매내역으로 이동" class="button" title="구매내역">구매내역</a>
                    </div>
                </div>
            </div>
          </c:if>
		<c:if test="${empty sessionScope.auth}">
            <div class="login-before">
                <p class="txt">
                    로그인 하시면 나의 메가박스를 만날 수 있어요.<br>
                    영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해 보세요!
                </p>
                <div class="mb50">
                    <a href="javascript:void(0)" id="mylogin" title="로그인" class="button w120px">로그인</a>
                </div>
                <a href="<%=path%>/join.do" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
            </div>
        </c:if>
        </div>
        <div class="ir">
            <a href="javascript:void(0)" class="layer-close" title="레이어닫기">레이어닫기</a>
        </div>
	</div>
</header>


<div class="container no-padding-bottom main-container ">
	<div id="contents">
		<div class="main-page">
			<div id="main_section01" class="section main-movie on">
				<div class="bg">
					<div class="bg-pattern"></div>
					<img src="https://img.megabox.co.kr/SharedImg/2020/06/26/Iqs6FGbxVHJoFt0yIkWs16RsfjnyWIEu_380.jpg" alt="반도_2차포스터_01.jpg" >
				</div>
				<div class="cont-area">
					<div class="tab-sorting">
						<button type="button" class="on" sort="boxoRankList" name="btnSort">박스오피스</button>
					</div>
					<a href="<%=path %>/movie.do" class="more-movie" title="더 많은 영화보기">더 많은 영화보기 <i class="iconset ico-more-corss gray"></i></a>
<!--  영화 순위 top4 출력 -->
					<div class="main-movie-list">
						<ol class="list">
							<c:forEach var="dto" items="${list}" varStatus="status">
							<!-- 만약 list의 첫번째 값이라면 -->
								<c:if test="${status.first}"><li name="li_boxoRankList" class="first"></c:if>
							<!-- list의 첫번째 값 제외하고 -->
								<c:if test="${not status.first}"><li name="li_boxoRankList" class=""></c:if>
							<a href="<%=path%>/movie-detail.do?movie=${dto.num}" class="movie-list-info" title="영화상세 보기">
								<p class="rank">${status.count}<span class="ir">위</span></p>
								<img src="<%=path%>/img/poster/${dto.num}/${dto.num}.jpg" alt="오류" class="poster">
							    <div class="wrap" style="display: none; opacity: 1;">
									<div class="summary">${dto.summary}</div>
									<div class="score"><div class="preview"><p class="tit">관람평</p><p class="number">0<span class="ir">점</span></p></div></div>
								</div>
							</a>
							<div class="btn-util">
                                <button type="button" class="button btn-like" rpst-movie-no="20021300">
								<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>0</button>
                                <div class="case">
                                <!-- 개봉 예매가능 기본-->
                                	<a href="<%=path%>/booking.do?movie=${dto.num}" class="button gblue" title="영화 예매하기">예매</a>
                                </div>
                            </div>
							</li>
							</c:forEach>
						</ol>
					</div>
					
					<div class="search-link">
						<div class="cell">
							<div class="search">
								<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" class="input-text" id="movieName">
								<button type="button" class="btn" onclick="fn_searchBtn();" id="btnSearch"><i class="iconset ico-search-w"></i> 검색</button>
							</div>
						</div>
						<div class="cell"><a href="#" title="상영시간표 보기"><i class="iconset ico-schedule-main"></i> 상영시간표</a></div>
						<div class="cell"><a href="<%=path %>/movie.do" title="박스오피스 보기"><i class="iconset ico-boxoffice-main"></i> 박스오피스</a></div>
						<div class="cell"><a href="#" title="빠른예매 보기"><i class="iconset ico-quick-reserve-main"></i> 빠른예매</a></div>
					</div>
					<div class="moving-mouse">
						<img class="iconset" alt="" src="<%=path%>/img/ico-mouse.png" style="top: 10px;">
					</div>
				</div>
			</div>
			
			<div id="main_section02" class="section main-benefit">
				<div class="wrap">
					<div class="tit-util">
							<h2 class="tit">혜택</h2>
							<a href="<%=path %>/event.do"  class="btn-more-cross purple" title="혜택 더보기">더보기</a>
						</div>
						<div class="slider main-condition">
							<div class="slider-view" style="width: 1100px;">
								<div class="cell" style="display: block; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 0px; opacity: 1;"><a href="#" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/30/oH2Uzq7dWWj6sv3WyUleFH8qS8xbb9dZ.jpg" alt="" ></a></div>
										<div class="bg" style="left: 300px; opacity: 1;"><a href="#" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/30/VZXUprYvo8Qx3fUCa6Kzb1tlBxmYGowz.jpg" alt="" ></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="#" target="_self" title="메가박스 오리지널 티켓북 출시"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/jIx6azAbreahaBC4Ax1uCtovoUWu3Cky.jpg" alt="" ></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="#" target="_self" title="메가박스 오리지널 티켓북 출시"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/J907IQ97HGyZbAU8IYEijq0FAx2QckCd.jpg" alt="" ></a></div>
									</div>
								</div>
								</div>
								
							<div class="slider-control">
								<div class="page"><span class="on" style="width:50%"></span><span class="" style="width:50%"></span></div>
								<div class="util">
									<button type="button" class="btn-prev" disabled="true" style="opacity: 0.5;">이전 이벤트 보기</button>
									<button type="button" class="btn-next" style="opacity: 1;">다음 이벤트 보기</button>
									<button type="button" class="btn-pause on">일시정지</button>
									<button type="button" class="btn-play">자동재생</button>
								</div>
								<div class="page-count">페이징처리필요</div>
							</div>
						</div>

						<div class="brn-ad">
							<div class="banner">
								<div class="size">
									<a href="#" data-no="8355" data-netfunnel="N" class="eventBtn" title="">
										<img src="https://img.megabox.co.kr/SharedImg/event/2020/06/16/8HvrPS6EUBIVnqrk1CUBzmYvqbO7fY2L.jpg" alt="[KB RAPBEAT FESTIVAL 2020 X 메가박스] 관람 패키지 이벤트" >
									</a>
								</div>
								<div class="size small">
									<a href="#" data-no="8117" data-netfunnel="N" class="eventBtn" title="">
									<img src="https://img.megabox.co.kr/SharedImg/event/2020/02/11/ZDfCOz9hSvsotF2pjEuSdC8Lsl6R9jzH.jpg" alt="[코엑스] 더 부티크 프라이빗" >
									</a>
								</div>
							</div>
						</div>

					<div class="menu-link">
						<div class="cell vip"><a href="<%=path %>/benefit/viplounge.do" title="VIP LOUNGE 페이지로 이동">VIP LOUNGE</a></div>
						<div class="cell membership"><a href="<%=path %>/benefit/membership.do" title="멤버십 페이지로 이동">멤버십</a></div>
						<div class="cell card"><a href="<%=path %>/benefit/discount.do" title="할인카드안내 페이지로 이동">할인카드안내</a></div>
						<div class="cell event"><a href="<%=path %>/event.do"  title="이벤트 페이지로 이동">이벤트</a></div>
						<div class="cell store"><a href="<%=path %>/store.do"  title="스토어 페이지로 이동">스토어</a></div>
					</div>
					<div class="grand-open">
						<p class="tit">
							<span>LIFE THEATER MEGABOX</span>
							<strong>GRAND<br>OPENING</strong>
						</p>
						<div class="open-cont">
							<div class="open-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
							<div class="open-control">
								<button type="button" class="open-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전 이벤트 보기</button>
								<button type="button" class="open-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음 이벤트 보기</button>
								<button type="button" class="open-pause on">일시정지</button>
								<button type="button" class="open-play">자동재생</button>
							</div>

							<div class="count-num">
								<span title="현재 페이지" class="active">1</span> /
								<span title="전체 페이지" class="total">1</span>
							</div>

							<div class="open-swiper swiper-container-initialized swiper-container-horizontal">
								<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
									<div class="cell swiper-slide swiper-slide-active" style="width: 242.333px;">
											<a href="<%=path %>/theater/list.do" data-no="8448" data-netfunnel="" class="eventBtn new" title="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label"><em>신규오픈</em></span>
												<p class="area">
													<span>부산/대구/경상</span>
													<strong> 창원내서</strong>
												</p>
												<p class="date">20.06.24</p>
												<img src="https://www.megabox.co.kr//static/pc/images/common/bg/bg-noimage-main.png" alt="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN!" > <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
											</a>
										</div>
									<div class="cell swiper-slide swiper-slide-next" style="width: 242.333px;">
											<a href="<%=path %>/theater/list.do" data-no="8447" data-netfunnel="" class="eventBtn new" title="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label">
													<em>신규오픈</em>
														</span>
												<p class="area">
													<span>대전/충청/세종</span>
													<strong> 세종청사</strong>
												</p>
												<p class="date">20.06.24</p>

												<img src="https://www.megabox.co.kr//static/pc/images/common/bg/bg-noimage-main.png" alt="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN!" > <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
											</a>
										</div>
									<div class="cell swiper-slide" style="width: 242.333px;">
											<a href="<%=path %>/theater/list.do" data-no="8446" data-netfunnel="" class="eventBtn new" title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label">
													<em>신규오픈</em>
														</span>
												<p class="area">
													<span>대전/충청/세종</span>
													<strong> 대전현대아울렛</strong>
												</p>
												<p class="date">20.06.24</p>

												<img src="https://www.megabox.co.kr//static/pc/images/common/bg/bg-noimage-main.png" alt="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN!" > 
											</a>
										</div>
								</div>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- ---------큐레이션 ------------------ -->
			<div id="main_section03" class="section main-curation">
				<div class="wrap">
					<div class="tit-util">
						<h2 class="tit">큐레이션</h2>
						<div class="right">
							<a href="<%=path%>/curation.do" title="큐레이션 더보기">큐레이션 더보기 <i class="iconset ico-more-corss gray"></i></a>
						</div>
					</div>

						<div class="curation-area">
							<div class="curr-img">
								<p class="bage classic">메가박스 클래식소사이어티</p>
								<div class="img">
									<a href="<%=path%>/movie-detail.do?movie=영화명" title="영화상세 보기">
									<img src="https://img.megabox.co.kr/SharedImg/2020/06/23/lepsjCKRQ84828xXV8miut1CmdnNG1X4_420.jpg" alt="[특별 상영] 베토벤 프로젝트" >
									</a>
								</div>

								<div class="btn-group justify">
									<div class="left">
										<a href="<%=path%>/movie-detail.do?movie=영화명" class="button" title="영화상세 보기">상세정보</a>
									</div>
									<div class="right">
										<a href="<%=path%>/booking.do?movie=" class="button gblue" title="영화 예매하기">예매</a>
									</div>
								</div>

								<div class="info classic">
									<p class="txt">
										#<span>클래식소사이어티</span>
									</p>
									<p class="tit">[특별 상영] 베토벤 프로젝트</p>
									<p class="summary">
										[상영 정보]<br>- 상영 지점 : 코엑스, 센트럴, 목동, 킨텍스, 분당, 성수, 마산 (4주 상영)<br>-
										추가 상영 지점 : 강남, 송도, 영통, 부산대, 대전현대아울렛, 세종청사 (2주 상영)<br>- 러닝 타임 :
										140분 * 인터미션 없음<br>- 상영 일정 : 2020년 7월 12일 ~ 8월 5일 / 수, 일 (1회씩)
										상영<br>- 배급사 사정에 따라 상영 일정 및 지점 등이 변경될 수 있습니다.<br> <br>제작 및 출연<br>작곡:
										루트비히 판 베토벤 Ludwig van Beethoven<br>안무: 존 노이마이어 John Neumeier<br>지휘:
										시몬 휴잇 Simon Hewett<br>연주: 미할 비아르크 (피아노), 도이치 방송 오케스트라 Michal
										Bialk (Piano), Deutsche Radio Philharmonie<br>무용: 함부르크 발레단
										Hamburg Ballett<br>공연 장소: 바덴-바덴 축제극장 Festspielhaus Baden-Baden<br> <br>루트비히
										판 베토벤: 알레시 마르티네즈 Aleix Martinez<br>베토벤의 ‘이루어지지 않은 사랑’: 안나 로더
										Anna Laudere<br>베토벤의 ‘이상향’: 드윈 레바초프 Edvin Revazov<br>베토벤의 어머니:
										패트리샤 프리차 Patricia Friza<br>베토벤의 조카: 보르하 베르무데즈 Borja Bermudez<br>크리스토퍼
										에반스 Christopher Evans<br>마크 후베테 Marc Jubete<br>에밀 마종 Emilie
										Mazon<br>박윤수 Yun-Su Park<br> <br>작품 소개<br>독일 바덴-바덴 축제극장에서 베토벤
										탄생 250주년을 기념해 공연된 기념비적인 발레 실황이다. 함부르크 발레단의 총감독이자 세계적으로 유명한 천재
										안무가, 존 노이마이어가 창작한 작품으로, 고난도 발레 테크닉으로 가득 찬 표현주의 발레를 선보인다. 인간
										베토벤의 삶에서 영감 받은 1부는 베토벤의 자전적인 이야기를 통해 개인적인 고뇌와 좌절을 그리고 있으며,
										자유로운 극작법을 따르는 2부는 현대무용과 정통발레 사이를 오가며 희망을 노래한다.<br>‘에로이카 변주곡’,
										교향곡 3번 ‘영웅’과 더불어 쉽게 접하기 힘든 베토벤 작곡의 발레곡을 중심으로 구성되는 공연은 독일 정상급
										교향악단의 연주로 진행된다. 특히 피아니스트 미할 비아르크가 무대 위 그랜드 피아노를 연주하며 피아노 음색을
										무용 속에 완전히 녹여내는 장면은 인상적이다. 악성 베토벤이 남긴 위대한 걸작과 경이로운 선율에 맞춰 움직이는
										세계적인 발레단의 몸짓은 베토벤의 삶과 음악을 짙은 예술성으로 엮어낸다.<br> <br>주요 음악<br>-
										변주곡과 푸가 Eb 장조, Op. 35 ‘에로이카 변주곡’<br>- 피아노 3중주 D 장조, Op. 70,
										No. 1 ‘유령’<br>- 피아노 소나타 D 장조, Op. 10, No. 3<br>- 프로메테우스의 창조물,
										Op. 43<br>- 교향곡 제3번, Eb 장조, Op. 55 ‘영웅’<br> <br>수입/배급 케빈앤컴퍼니<br>
									</p>
								</div>
							</div>
							<!--// curr-img -->
							<!--// list-area -->
							<div class="list">
								<ul>
									<li>
										<a href="#" title="영화상세 보기">
											<p class="bage classic">클래식소사이어티</p>
											<div class="img">
												<img src="https://img.megabox.co.kr/SharedImg/2020/06/23/4jr7i0mDwxOpILVarLlS05gmjZt8GiPp_230.jpg" alt="[시네도슨트] 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관">
											</div>
											<p class="tit">[시네도슨트] 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관</p>
											<p class="summary">내용</p>
										</a>
									</li>
									
								<li>
									<a href="javascript:gfn_moveDetail('20027700');"
										title="영화상세 보기">
											<p class="bage classic">클래식소사이어티</p>
											<div class="img">
												<img
													src="https://img.megabox.co.kr/SharedImg/2020/06/23/KUSs4KyOVlKT7SGGH9y6xLV6XvCjXuPR_230.jpg"
													alt="[팝콘클래식] 베토벤과 나폴레옹의 악연" >
											</div>
											<p class="tit">[팝콘클래식] 베토벤과 나폴레옹의 악연</p>
											<p class="summary">내용</p>
									</a>
								</li>
								<li>
									<a href="#" title="영화상세 보기">
										<p class="bage classic">클래식소사이어티</p>
										<div class="img">
											<img src="https://img.megabox.co.kr/SharedImg/2020/06/15/mkuTBD77ntyhS0FQUuZcYX03Fh3Cur6K_230.jpg" alt="[오페라] 아크나텐 @The Met" >
										</div>
										<p class="tit">[오페라] 오페라명</p>
										<p class="summary">정보</p>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div id="main_section04" class="section main-info">
				<h2 class="tit">메가박스 안내</h2>
				<div class="info-special">
					<a href="#" title="부티크 페이지로 이동" class="bg-boutique">부티크</a>
					<a href="#" title="MX 페이지로 이동" class="bg-mx">MX</a>
					<a href="#" title="COMFORT 페이지로 이동" class="bg-comfort">COMFORT</a>
					<a href="#" title="MEGA KIDS BOX 페이지로 이동" class="bg-kids">MEGA KIDS BOX</a>
					<a href="#" title="THE FIRST CLUB 페이지로 이동" class="bg-first">THE FIRST CLUB</a>
				</div>

				<div class="info-notice">
						<div class="wrap">
							<p class="tit">지점</p>
							<p class="link">
								<a href="#" title="공지사항 상세보기">
									<strong>
										[문경]
									</strong>
									 [문경] 7월휴관일 안내</a>
							</p>
							<p class="date">2020.07.06</p>
							<p class="more">
								<a href="#" title="전체공지 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
							</p>
						</div>
					</div>
					
				<div class="info-link">
					<div class="table">
						<div class="cell">
							<a href="#" title="고객센터 페이지로 이동">
								<i class="iconset ico-main-customer"></i>
								<span>고객센터</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="자주 묻는 질문 페이지로 이동">
								<i class="iconset ico-main-faq"></i>
								<span>자주 묻는 질문</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="1:1 문의 페이지로 이동">
								<i class="iconset ico-main-qna"></i>
								<span>1:1 문의</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="단체/대관문의 페이지로 이동">
								<i class="iconset ico-main-group"></i>
								<span>단체/대관문의</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="분실물 문의/접수 페이지로 이동">
								<i class="iconset ico-main-lost"></i>
								<span>분실물 문의/접수</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="더 부티크 프라이빗 대관예매 페이지로 이동">
								<i class="iconset ico-main-boutique"></i>
								<span>더 부티크 프라이빗<br>대관예매</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<footer id="footer">
    <div class="footer-top">
        <div class="inner-wrap">
            <ul class="fnb">
                <li><a href="https://www.megabox.co.kr/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
                <li><a href="https://www.megabox.co.kr/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
                <li><a href="https://www.megabox.co.kr/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
                <li><a href="https://www.megabox.co.kr/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
                <li><a href="https://www.megabox.co.kr/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
                <li class="https://www.megabox.co.kr/support/privacy"><a href="#" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
                <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
            </ul>
            <a href="#" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="inner-wrap">
            <div class="ci">MEGABOX : Life Theater</div>
            <div class="footer-info">
                <div>
                    <address>서울특별시 강남구 역삼동 테헤란로 132(한독약품빌딩 8층 쌍용교육센터)</address>
                </div>
                <p> 팀장 이진권</p>
                <p>· 기술고문 김태호</p>
                <p>· 김진우, 이진석, 엄예쥐 </p>
                <p>· 2조</p> 
                <p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights reserved</p>
            </div>

            <div class="footer-sns">
                <a href="https://twitter.com/explore" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
                <a href="http://www.fb.com" target="_blank" title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
                <a href="http://www.instargram.com" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagram">인스타그램</i></a>
                <a href="http://play.google.com/store/app" target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i class="iconset ico-googleplay">구글플레이</i></a>
                <a href="http://itunes.apple.com/kr/app" target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i class="iconset ico-appstore">앱스토어</i></a>
            </div>
        </div>
    </div>
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
</div>

<div class="bg-modal" ></div>

</body>
</html>