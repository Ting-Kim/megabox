<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); 
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
<!doctype html>
<html lang="ko">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<link rel="stylesheet" href="<%= path %>/css/megabox.min.css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<script src="<%=path%>/js/megabox.js"></script>
		<title>VIP LOUNGE < 혜택 | 라이프씨어터, 메가박스</title>
</head>
<body>
    <div class="body-wrap">

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

<header id="header" class="main-header ">
    <h1 class="ci"><a href="<%=path%>/main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
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

<!-- container -->
		<div class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span>
						<a href="<%= path %>/benefit/membership.do" title="혜택 메인 페이지로 이동">혜택</a>
						<a href="<%= path %>/benefit/membership.do/name=membership" title="멤버십안내 페이지로 이동">메가박스 멤버십</a>
						<a href="<%= path %>/benefit/viplounge.do/name=vip" title="VIP LOUNGE 페이지로 이동">VIP LOUNGE</a>
					</div>

				</div>
			</div>

			<!-- contents -->
			<div id="contents">
				<div class="inner-wrap">
					<h2 class="tit">메가박스 멤버십</h2>

					<div class="tab-list">
						<ul>
							<li><a href="<%= path %>/benefit/membership.do?name=membership" title="멤버십 안내 탭으로 이동">멤버십 안내</a></li>
							<li class="on"><a href="<%= path %>/benefit/viplounge.do?name=vip" title="VIP LOUNGE 탭으로 이동">VIP LOUNGE</a></li>
						</ul>
					</div>

					<!-- benefit-vip-lounge -->

				<!-- 로그인 전 -->
				
					<div class="benefit-vip-lounge common">
						<div class="tit-area">
							<p class="tit">MEGABOX VIP</p>
							<p class="txt">
								메가박스의 더 많은 혜택을 누릴 수 있는 방법!<br />
							</p>
						</div>
						<div class="cont-area">
							<div class="login-before">
								<i class="iconset ico-question-circle-big"></i>
								<p class="txt">
									로그인 후 메가박스 등급을 확인하세요.
								</p>
								<div>
									<a href="#layer_login_select" id="moveLogin" class="button gray-line large btn-modal-open" w-data='850' h-data='484' title="로그인하기">로그인</a>
								</div>
							</div>
						</div>
					</div>

				

				<!-- 로그인 후 -->
				
				<!--cont-area -->

<!-- 							</div> -->
							
						</div>
						<!--// cont-area -->
					</div>
					<!--// benefit-vip-lounge -->


				<div class="benefit-slider">
					<div class="inner-wrap">
						<p class="tit-slider">VIP 회원님을 위한 특별한 이벤트!!</p>

						<div class="benefit-pagination"></div>

						<div class="benefit-count">
							<span title="현재 페이지" class="active">0</span> /
							<span title="전체 페이지" class="total">0</span>
						</div>

						<div class="benefit-util">
							<button type="button" class="benefit-prev" id="btnPrevEvent">이전 이벤트 보기</button>
							<button type="button" class="benefit-next" id="btnNextEvent">다음 이벤트 보기</button>
							<button type="button" class="pause on">일시정지</button>
							<button type="button" class="play">자동재생</button>
						</div>

						<div class="benefit-control">
							<button type="button" class="benefit-prev" id="btnPrevEvent2">이전 이벤트 보기</button>
							<button type="button" class="benefit-next" id="btnNextEvent2">다음 이벤트 보기</button>
						</div>
					</div>

					<div class="benefit-swiper">
						<div class="swiper-wrapper" id="swiper-wrapper-area">
							<!-- 반복 -->
							
								<div class="cell swiper-slide">
									<a href="#" class="eventBtn" data-no="8526" data-netfunnel=""title="오리지널 티켓 No.17 &lt;반도&gt; 상세보기">
										<p class="img"><img width="530" height="245" src="https://img.megabox.co.kr/SharedImg/event/2020/07/09/DIx6Xw9BJzeCpzipbRQNyElG88cLWRlp.jpg" alt="" onerror="noImg(this);"/></p>
										<div class="cont">
											<p class="tit">오리지널 티켓 No.17 &lt;반도&gt;</p>
											<p class="date">2020.07.15~2020.07.31</p>
										</div>
									</a>
								</div>
							
								<div class="cell swiper-slide">
									<a href="#" class="eventBtn" data-no="8278" data-netfunnel=""title="새로워진 포인트 찐! 활용법 상세보기">
										<p class="img"><img width="530" height="245" src="https://img.megabox.co.kr/SharedImg/event/2020/04/20/nLXLlpCdJJeTda2jdnejxqRSHjpQBHPt.jpg" alt="" onerror="noImg(this);"/></p>
										<div class="cont">
											<p class="tit">새로워진 포인트 찐! 활용법</p>
											<p class="date">2020.04.29~2020.07.31</p>
										</div>
									</a>
								</div>
							
								<div class="cell swiper-slide">
									<a href="#" class="eventBtn" data-no="8172" data-netfunnel=""title="2020 MEGABOX VIP 혜택 발표 상세보기">
										<p class="img"><img width="530" height="245" src="https://img.megabox.co.kr/SharedImg/event/2020/02/21/oFER1mmPI4EFwg9pjnEosUI5H7wenOqB.jpg" alt="" onerror="noImg(this);"/></p>
										<div class="cont">
											<p class="tit">2020 MEGABOX VIP 혜택 발표</p>
											<p class="date">2020.02.21~2020.12.31</p>
										</div>
									</a>
								</div>
							
								<div class="cell swiper-slide">
									<a href="#" class="eventBtn" data-no="5864" data-netfunnel=""title="팝콘리필 상세보기">
										<p class="img"><img width="530" height="245" src="https://img.megabox.co.kr/SharedImg/event/2020/02/04/gKsGCjwUJGTZkMJcp75e9O4iDP8ZSezP.jpg" alt="" onerror="noImg(this);"/></p>
										<div class="cont">
											<p class="tit">팝콘리필</p>
											<p class="date">2018.03.01~2020.12.31</p>
										</div>
									</a>
								</div>
							
							<!--// 반복 -->
						</div>
					</div>
				</div>
				   <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
				<script>
				function fn_animation(){

	if( $('.benefit-swiper').length > 0 ){
		var benefit_swiper = new Swiper('.benefit-swiper', {
			autoplay: {
				delay: 3000,
				disableOnInteraction: true,
			},
			loop : true,
			slidesPerView: 2,
			spaceBetween: 40,
			pagination: {
				el: '.benefit-pagination',
				//type: 'fraction',
				clickable: false,
			},
			navigation : {
				prevEl : '.benefit-prev',
				nextEl : '.benefit-next',
			},
			ally : {
				enabled : true
			}
		});

		// swiper 전체 count
		all_count = $('.benefit-swiper .cell').length;
		dupli_count = $('.benefit-swiper .swiper-slide-duplicate').length;
		real_count = all_count - dupli_count;

		if('7' > 0) $('.benefit-slider .benefit-count .active').text(benefit_swiper.realIndex + 1);
		$('.benefit-slider .benefit-count .total').text(real_count);

		// 이벤트 배너 1개 이하일 경우 좌우 버튼 숨기기
		if(real_count < 2 ){
			$('#btnPrevEvent').hide();
			$('#btnNextEvent').hide();

			$('#btnPrevEvent2').hide();
			$('#btnNextEvent2').hide();

			$('.swiper-slide-duplicate').hide(); //스와이프용 duplicate 이미지 숨기기
		}


		// 현재 활성화된 swiper
		benefit_swiper.on('slideChange', function(){
			if('7' > 0) $('.benefit-slider .benefit-count .active').text(benefit_swiper.realIndex + 1);
		});

		// 자동실행 정지
		$('.benefit-util .pause').on('click', function(){
			benefit_swiper.autoplay.stop();

			$(this).removeClass('on');
			$('.benefit-util .play').addClass('on').focus();
		});

		// 자동실행 시작
		$('.benefit-util .play').on('click', function(){
			benefit_swiper.autoplay.start();

			$(this).removeClass('on');
			$('.benefit-util .pause').addClass('on').focus();
		});

		// 좌우 이동시 자동실행 정지됨
		$(document).on('click','.benefit-prev, .benefit-next', function(){
			$('.benefit-util .pause').removeClass('on');
			$('.benefit-util .play').addClass('on');
		});

		$(window).resize(function(){
			benefit_swiper.update();
		}).resize();
	}

}
				</script>
				<!-- inner-wrap -->
				<div class="inner-wrap">
					<!-- benefit-vip-selection -->
					<div class="benefit-vip-selection">
						<h3 class="tit">VIP 선정 기준</h3>

						<h4 class="tit">2020년 VIP 선정 기준</h4>

						<!-- block -->
						<div class="block">
							<div class="box vip">
								<p class="tit">VIP</p>

								<p class="txt">
									2019년 티켓<br />
									누적 포인트 2.2만점 이상
								</p>
							</div>

							<div class="box vip-p">
								<p class="tit">VIP PREMIUM</p>

								<p class="txt vip-p">
									2019년 티켓 누적포인트<br />
									3.4만점 이상  또는<br />
									2019년 2020년 연속 VIP
								</p>
							</div>

							<div class="box vvip">
								<p class="tit">VVIP</p>

								<p class="txt vip-p">
									2019년 티켓 누적포인트<br />
									5.4만점 이상<br />
									또는 서로 다른 영화  50편 이상
								</p>
							</div>
						</div>
						<!--// block -->

						<div class="period">
							<p>선정기간 : 2019.01.01 ~ 2019.12.31 (상영일 기준)</p>
							<p>자격기간 : 2020.03.01 ~ 2021.02.28 (상영일 기준)</p>
						</div>

						<ul class="dot-list mt15">
							<li>VIP 등급 선정 기준 및 혜택은 매년 상이할 수 있습니다.</li>
							<li>VIP 회원 혜택은 내부 사정에 의해 변경, 종료될 수 있습니다.</li>
							<li>VIP 추가 5% 적립, VIP DAY 10% 추가 적립, 선물받은 포인트, 이벤트 등으로 적립된 포인트는 VIP 산정에서 제외됩니다.</li>
	                        <li>서로 다른 영화 기준 : 선정 기간 내 포인트가 적립된 영화 중 서로 다른 영화(동일 영화는 1편으로 산정)</li>
	                        <li>서로 다른 영화 편수 확인 방법 : '나의 메가박스' -> VIP LOUNGE -> '서로 다른 영화관람'</li>
						</ul>
					</div>
					<!--// benefit-vip-selection -->

					<!-- benefit-vip-benefit -->
					<div class="benefit-vip-benefit mt70">
						<h3 class="tit">VIP 멤버십 혜택</h3>

						<p class="txt-info">
							<span>VIP 쿠폰북</span>
							<span>회원님의 취향에 따라 원하시는 쿠폰을 선택하시고 다운 받으세요!</span>
						</p>

						<!-- bg-coupon-block -->
						<div class="bg-coupon-block">
							<div class="box">
								<table>
									<colgroup>
										<col style="width:180px;">
										<col />
									</colgroup>
									<tbody>
										<tr>
											<td>
												<i class="iconset ico-benefit-movie"></i>
											</td>
											<td class="a-l">
												<p class="tit">영화</p>
												<p class="txt">VIP 영화관람 쿠폰</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="box">
								<table>
									<colgroup>
										<col style="width:180px;">
										<col />
									</colgroup>
									<tbody>
										<tr>
											<td>
												<i class="iconset ico-benefit-cafeteria"></i>
											</td>
											<td class="a-l">
												<p class="tit">매점</p>
												<p class="txt">VIP 매점이용 쿠폰</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!--// bg-coupon-block -->

						<ul class="dot-list mt15">
							<li>본 혜택은 VIP 등급 유지 기간 중 제공됩니다. 직접 쿠폰을 선택하신 후 다운받으셔야 쿠폰을 이용하실 수 있습니다.</li>
							<li>등급 별 VIP 쿠폰 제공이 상이하오니 VIP 쿠폰북 안내를 통해 확인해주세요.</li>
							<li>쿠폰마다 유효 기간이 상이합니다. 유효기간을 꼭 확인해 주세요!</li>
						</ul>

						<div class="btn-group">
							<a href="<%= path %>/benefit/vipcoupon.do" class="button purple large" title="VIP쿠폰북 안내 페이지로 이동">VIP쿠폰 상세보기</a>
						</div>

						<p class="txt-info mt40">
							<span>5년 연속 VIP 혜택</span>
							<span>축하드립니다! <em class="font-gblue">5년 연속 VIP 회원</em>에게 추가 혜택을 드립니다.</span>
						</p>

						<!-- bg-coupon-block -->
						<div class="bg-coupon-block">
							<div class="box">
								<table>
									<colgroup>
										<col style="width:180px;">
										<col />
									</colgroup>
									<tbody>
										<tr>
											<td>
												<i class="iconset ico-benefit-ticket"></i>
											</td>
											<td class="a-l">
												<p class="tit">매표</p>
												<p class="txt">일반 2D/3D 무료 관람권 <em class="font-gblue">x3</em></p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="box">
								<table>
									<colgroup>
										<col style="width:180px;">
										<col />
									</colgroup>
									<tbody>
										<tr>
											<td>
												<i class="iconset ico-benefit-cafeteria02"></i>
											</td>
											<td class="a-l">
												<p class="tit">매점</p>
												<p class="txt">콤보 무료 쿠폰 <em class="font-gblue">x1</em><br />(오리지널 팝콘 R + 탄산음료 R 2)
												</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!--// bg-coupon-block -->

						<ul class="dot-list mt15">
							<li>지난 VIP 등급 이력은 로그인 후 나의 메가박스 &gt; 지난등급조회에서 확인 가능합니다.</li>
							<li>쿠폰은 로그인 후 나의 메가박스 &gt; 할인/제휴쿠폰에서 확인하실 수 있습니다.</li>
						</ul>

						<p class="txt-info mt40">
							<span>VIP 미션 이벤트</span>
							<span>매월 서로 다른 영화 5회 이상 관람 시 미션 성공 쿠폰 제공!</span>
						</p>

						<!-- benefit-mission -->
						<div class="benefit-mission">
							<table>
								<tbody>
									<tr>
										<td>
											<i class="iconset ico-benefit-mission"></i>
										</td>
										<td>
											<div>
												<p class="tit">VIP, VIP PREMIUM</p>
												<p class="txt">영화 3천원 할인권 4매</p>
											</div>

											<div class="mt05">
												<p class="tit">VVIP</p>
												<p class="txt">일반 2D 무료관람권 1매</p>
											</div>
										</td>
										<td>
											<i class="iconset ico-plus-circle">더하기</i>
											콤보 4천원 할인권 1매
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--// benefit-mission -->

						<ul class="dot-list mt15">
							<li>티켓 유료 구매 후 포인트 적립된 티켓 기준으로 서로 다른 영화 관람 편수가 책정됩니다.</li>
							<li>미션 달성 시 제공되는 쿠폰은 매월 10일 제공되며 주말 및 공휴일일 경우 가장 가까운 평일 내 제공됩니다.</li>
							<li>무료 관람권 및 쿠폰의 유효기간은 제공일로부터 익월 말 까지 입니다.</li>
						</ul>

						<div class="btn-group">
							<!-- 로그인 전 -->
						
							<button type="button" class="button purple large tooltip click">
								<span>VIP 미션 이벤트 보기</span>
								<span class="ir" data-width="235">
									<span class="cont-area">
										<span class="login-alert-tooltip">
											로그인이 필요한 서비스 입니다.<br />
											<a id="moveLogin" href="#" class="btn-modal-open"  w-data='850' h-data='484' title="로그인하기">로그인 바로가기 <i class="iconset ico-arr-right-green"></i></a>
										</span>
									</span>
								</span>
							</button>
						
							<!-- //로그인전 -->

							<!-- 로그인 후 -->
						

						</div>

						<!-- 스탬프 미션 : 마이페이지와 동일 -->
						<!-- // 스탬프 미션 : 마이페이지와 동일 -->

						<p class="txt-info mt40">
							<span>VIP DAY</span>
							<span>매주 수요일 영화 관람 시 포인트 추가 적립!</span>
						</p>

						<div class="benefit-vip-day">
							<table>
								<tbody>
									<tr>
										<td>
											<i class="iconset ico-benefit-coin"></i>
											<p>
												기본적립 5&#37;
											</p>
										</td>
										<td>
											<i class="iconset ico-plus-gray-big">더하기</i>
										</td>
										<td>
											<i class="iconset ico-benefit-coin"></i>
											<p>
												VIP 추가적립 5&#37;
											</p>
										</td>
										<td>
											<i class="iconset ico-plus-gray-big">더하기</i>
										</td>
										<td>
											<i class="iconset ico-benefit-coin2"></i>
											<p>
												VIP DAY 추가 적립 10&#37;
											</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<ul class="dot-list mt15">
							<li>VIP 추가 적립 5% 및 VIP DAY 추가 적립 10%는 VIP 선정 포인트에서 제외됩니다.</li>
						</ul>

						<p class="txt-info mt40">
							<span>VIP 생일 축하 쿠폰</span>
							<span>생일 축하 콤보 무료 쿠폰 제공</span>
						</p>

						<ul class="dot-list mt15">
							<li>생일을 맞으신 VIP 고객님께 콤보 무료(오리지널 팝콘 L + 탄산음료 R * 2) 쿠폰을 드립니다.</li>
							<li>생일 쿠폰은 1년에 1번 지급되며, 한번 발급되면 추가 발급되지 않습니다.</li>
							<li>생일 쿠폰은 회원정보에 등록된 생일을 기준으로 쿠폰이 발급됩니다.</li>
							<li>생일 2주전 쿠폰이 발행되며, 유효기간은 발행일로부터 4주입니다. (예: 3월 16일이 생일이라면 3월 2일부터 3월 30일까지 이용 가능)</li>
							<li>발행된 쿠폰은 로그인 후 ‘나의 메가박스 &gt; 쿠폰’에서 확인 가능합니다.</li>
							<li>지급되는 쿠폰 혜택은 변경될 수 있습니다.</li>
						</ul>

						<p class="txt-info mt40">
							<span>VIP 전용 스티커 및 카드</span>
						</p>

						<!-- benefit-membership-card -->
						<div class="benefit-membership-card">
							<table>
								<tbody>
									<tr>
										<td>
											<i class="iconset ico-benefit-card-vip"></i>

											<div>
												<p class="tit">VIP 스티커</p>

												<p class="txt">멤버십 카드에 VIP 스티커 부착!</p>
											</div>
										</td>
										<td>
											<i class="iconset ico-benefit-card-vvip"></i>

											<div>
												<p class="tit">VVIP 멤버십 카드</p>

												<p class="txt">VVIP 회원은 특별한 멤버십 카드 발급!</p>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--// benefit-membership-card -->

						<ul class="dot-list mt15">
							<li>전국 메가박스에서 멤버십 카드에 VIP 스티커를 부착해드립니다.</li>
							<li>ONLY VVIP 회원에게만 등급이 새겨진 전용 멤버십 카드를 드립니다.</li>
							<li>VIP 스티커 및 VVIP 카드 배포 일정은 별도 안내 예정입니다.</li>
						</ul>

						<p class="txt-info mt40">
							<span>중앙멤버십 혜택</span>
							<span>리조트 할인, CU 모바일 상품권 등 다양한 혜택을 받을 수 있는 중앙멤버십 카드를 신청하세요!</span>
						</p>

						<!-- benefit-jm-benefit -->
						<div class="benefit-jm-benefit">
							<table>
								<tbody>
									<tr>
										<td>
											<i class="iconset ico-benefit-jm-resort"></i>

											<p>
												리조트회원 우대
											</p>
										</td>
										<td>
											<i class="iconset ico-plus-gray-big">더하기</i>
										</td>
										<td>
											<i class="iconset ico-benefit-jm-sale"></i>

											<p>
												메가박스 최대 9,000원 할인
											</p>
										</td>
										<td>
											<i class="iconset ico-plus-gray-big">더하기</i>
										</td>
										<td>
											<i class="iconset ico-benefit-jm-health-chk"></i>

											<p>
												건강검진 우대
											</p>
										</td>
										<td>
											<i class="iconset ico-plus-gray-big">더하기</i>
										</td>
										<td>
											<i class="iconset ico-benefit-jm-cu"></i>

											<p>
												CU 모바일 상품권 10% 할인
											</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--// benefit-jm-benefit -->

						<ul class="dot-list mt15">
							<li>본 혜택은 아래 카드 신청하기에서 중앙멤버십을 별도 신청하신 고객에 한해 적용 됩니다.</li>
							<li>중앙멤버십 카드는 VIP 기신청자의 경우 자동 연장되며 휴대폰 번호당 1개만 발급 가능합니다.</li>
							<li>제휴 혜택은 사정에 따라 변경되거나 종료될 수 있습니다.</li>
						</ul>

						<div class="btn-group">
							<a href="http://jmembership.joins.com" target="_blank" title="중앙멤버십 홈페이지 새창 열림" class="button large">중앙멤버십 상세 안내</a>

							<!-- 로그인 전 -->
					
							<button type="button" class="button purple large tooltip click">
								<span>카드 신청하기</span>
								<span class="ir" data-width="235">
									<span class="cont-area">
										<span class="login-alert-tooltip">
											로그인이 필요한 서비스 입니다.<br />
											<a id="moveLogin" href="#layer_login_common" class="btn-modal-open"  w-data='850' h-data='484' title="로그인하기">로그인 바로가기 <i class="iconset ico-arr-right-green"></i></a>
										</span>
									</span>
								</span>
							</button>
					
							<!-- 로그인 후 -->
					
						</div>

						<section id="layer_card_request" class="modal-layer">
							<div class="wrap">
								<header class="layer-header">
									<h3 class="tit">중앙멤버십 신청하기</h3>
								</header>

								<div class="layer-con">
									<!-- layer-joins-membership-request -->
									<div class="layer-joins-membership-request">
										<div class="tit-box">
											<div class="tit">
												<span class="font-purple">MEGABOX</span>
												<i class="iconset ico-x-big"></i>
												<span class="font-gblue">중앙멤버십</span>
											</div>

											<p class="txt">
												항상 메가박스를 사랑해주시는 VIP 고객님들을 위하여  메가박스와 중앙멤버십이 만나 VIP 멤버십 혜택을 강화하였습니다.<br />
												VIP 고객님들을 위한 더욱 풍요롭고 다양한 할인 혜택을 만나보세요.
											</p>
										</div>

										<!-- box-chk -->
										<div class="box-chk mt30">
											<div class="tit">
												<span class="bg-chk">
													<input type="checkbox" id="jggMembershipChk_1" value=""/>
													<label for="jggMembershipChk_1"><span>중앙멤버십 혜택 신청</span> <em class="font-red">[필수]</em></label>
												</span>
											</div>

											<!-- cont -->
											<div class="cont">
												<p>
													최대 6가지의 더 다양하고 풍성한 VIP 혜택을 받으실 수 있습니다.<br />
													혜택 적용 기간 :  2021년 02월 28일까지
												</p>

												<p class="mt10 font-red font-size-14">
													※ 2019 VIP 중 중앙멤버십 기 신청자는 자동 연장됩니다.<br />
													※ 중앙멤버십 카드는 휴대전화번호당 1개만 발급 가능합니다. 다계정 보유 시 동일한 휴대전화번호로 신청하실 경우 이용에 제한이 있을 수 있습니다.<br />
													! 제휴사와의 사정에 따라 혜택이 변경 또는 종료될 수 있습니다.
												</p>
												<div class="benefit-jm-benefit">
													<table>
														<tbody>
															<tr>
																<td>
																	<i class="iconset ico-benefit-jm-resort"></i>

																	<p>
																		리조트회원<br />우대
																	</p>
																</td>
																<td>
																	<i class="iconset ico-plus-gray-big">더하기</i>
																</td>
																<td>
																	<i class="iconset ico-benefit-jm-sale"></i>

																	<p>
																		메가박스 최대<br />9,000원 할인
																	</p>
																</td>
																<td>
																	<i class="iconset ico-plus-gray-big">더하기</i>
																</td>
																<td>
																	<i class="iconset ico-benefit-jm-health-chk"></i>

																	<p>
																		건강검진<br />우대
																	</p>
																</td>
																<td>
																	<i class="iconset ico-plus-gray-big">더하기</i>
																</td>
																<td>
																	<i class="iconset ico-benefit-jm-cu"></i>

																	<p>
																		CU 모바일<br />
																		상품권 10% 할인
																	</p>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<!--// cont -->
										</div>
										<!--// box-chk -->

										<!-- box-chk -->
										
										<!--// box-chk -->

										<p class="tit-sub">VIP멤버십 혜택을 받으시기 위해 아래 개인정보 제공에 동의를 해주세요.</p>

										<!-- box-chk -->
										<div class="box-chk">
											<div class="tit">
												<span class="bg-chk">
													<input type="checkbox" id="jggMembershipChk_3" />
													<label for="jggMembershipChk_3"><span>제 3자 정보제공에 동의합니다.</span> <em class="font-red">[필수]</em></label>
												</span>
											</div>

											<!-- text-cont 약관내용-->
											<div class="text-cont">
												<div class="scroll" tabindex="0">
													<p>(주)메가박스중앙이 제공하는 중앙 멤버십 혜택을 받을 경우 혜택 제공을 위하여 관련한 정보는<br />
필요한 범위 내에서 아래와 같이 제공됩니다.<br />
<br />
1. 개인정보 제공 동의<br />
메가박스는 정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라 이용자의 개인정보에 있어<br />
아래와 같이 알리고 동의를 받아 중앙멤버십 서비스 제공자에 제공합니다.<br />
<br />
2. 개인정보 제공 받는 자<br />
(주)중앙일보, 중앙일보 M&amp;P(주)<br />
<br />
3. 개인정보 이용 목적<br />
중앙멤버십 서비스 이용에 따른 본인 식별 및 혜택 제공, 고객 응대<br />
<br />
4. 개인정보 제공 항목<br />
성명, 휴대폰번호<br />
<br />
5. 개인정보 보유 및 이용 기간<br />
개인정보 이용목적 달성 시까지(단, 관계 법령의 규정에 의해 보존의 필요가 있는 경우 및 사전 동의를 득한 경우 해당 보유기간 까지)</p>
												</div>

												<p class="mt20">※ 동의하지 않을 경우 중앙멤버십 혜택이 제공되지 않습니다.</p>
											</div>
											<!--// text-cont -->
										</div>
										<!--// box-chk -->
									</div>
									<!--// layer-joins-membership-request -->
								</div>

								<div class="btn-group-fixed">
									<button type="button" class="button close-layer">닫기</button>
									<button type="button" class="button purple" id="btnJoinMbship">신청하기</button>
								</div>

								<button type="button" class="btn-modal-close">레이어 닫기</button>
							</div>
						</section>

						<p class="txt-info mt40">
							<span>VIP CULTURE EVENT</span>
							<span>라이프시어터 메가박스에서 당신의 문화생활을 위해 준비했어요~</span>
						</p>

						<div class="bg-coupon-block">
							<div class="box">
								<table>
									<colgroup>
										<col style="width:180px;">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<td>
												<i class="iconset ico-benefit-kyobo"></i>
											</td>
											<td class="a-l pt10">
												<p class="tit">교보문고</p>
												<p class="txt">10&#37; 할인 쿠폰</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="box">
								<table>
									<colgroup>
										<col style="width:180px;">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<td>
												<i class="iconset ico-benefit-hot-tracks"></i>
											</td>
											<td class="a-l pt10">
												<p class="tit">핫트랙스</p>
												<p class="txt">10&#37; 할인 쿠폰</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<ul class="dot-list mt15">
							<li>VIP 회원 대상 교보문고 & 핫트랙스 10% 할인 쿠폰을 드립니다. (오프라인 / 1만원 이상 결제 시 사용 가능)</li>
							<li>VIP 회원 중 마케팅 정보 수신 동의 회원 대상에 한하여 제공됩니다.</li>
							<li>할인 쿠폰은 매월 초 메가박스APP으로 자동 발급됩니다. (나의 메가박스> 제휴쿠폰)</li>
							<li>할인 쿠폰 사용 전 쿠폰 내 유의 사항을 반드시 확인 바랍니다.</li>
							<li>제휴 혜택은 사정에 따라 내용이 변경되거나 종료될 수 있습니다.</li>
						</ul>

<!-- 						<div class="btn-group"> -->
<!-- 							<a href="#" class="button purple large" title="이벤트 상세보기">이벤트 상세보기</a> -->
<!-- 						</div> -->
					</div>
					<!--// benefit-vip-benefit -->
				</div>
				<!--// inner-wrap -->
			</div>
			<!--// contents -->

		<!--// container -->
<!-- 		</div> -->
        



<section id="saw_movie_regi" class="modal-layer">
	<input type="hidden" id="isLogin"   />
	<div class="wrap">
		<header class="layer-header">
			<h3 class="tit">본 영화 등록</h3>
		</header>

		<div class="layer-con">
			<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

			<div class="pop-gray mt10 mb30">
				<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label>
				<input type="text" id="movie_regi" class="input-text w280px numType" maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력" />
				<button class="button gray ml05" id="regBtn">등록</button>
			</div>

			<div class="box-border v1 mt30">
				<p class="tit-box">이용안내</p>

				<ul class="dot-list">
                        <li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
                        <li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <BR>12자리를 입력해주세요.(Yes24, 네이버, 인터파크, SKT, KT, 다음)</li>
                        <li>본 영화 등록은 관람인원수 만큼 등록가능하며, 동일 계정에 중복등록은 불가합니다.</li>
                        <li>상영시간 종료 이후 등록 가능합니다.</li>
                        <li>본 영화로 수동 등록한 내역은 이벤트 참여 및 포인트 추후 적립이 불가합니다.</li>
				</ul>
			</div>
		</div>

		<div class="btn-group-fixed">
			<button type="button" class="button purple close-layer">닫기</button>
		</div>

		<button type="button" class="btn-modal-close">레이어 닫기</button>
	</div>
</section>

<div class="quick-area">
	<a href="" class="btn-go-top" title="top">top</a>
</div>

<!-- footer -->
<footer id="footer">
    <!-- footer-top -->
    <div class="footer-top">
        <div class="inner-wrap">
            <ul class="fnb">
                <li><a href="#" title="회사소개 페이지로 이동">회사소개</a></li>
                <li><a href="#" title="인재채용 페이지로 이동">인재채용</a></li>
                <li><a href="#" title="사회공헌 페이지로 이동">사회공헌</a></li>
                <li><a href="#" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
                <li><a href="#" title="이용약관 페이지로 이동">이용약관</a></li>
                <li class="privacy"><a href="/support/privacy" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
                <li><a href="#" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
            </ul>

            <a href="#layer_looking_theater" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
        </div>
    </div>
    <!--// footer-top -->

    <!-- footer-bottom -->
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
                <p class="copy">COPYRIGHT &copy; MegaboxJoongAng, Inc. All rights reserved</p>
            </div>

            <div class="footer-sns">
                <a href="https://twitter.com/megaboxon" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
                <a href="https://www.facebook.com/megaboxon" target="_blank" title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
                <a href="http://instagram.com/megaboxon" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagram">인스타그램</i></a>
                <a href="https://play.google.com/store/apps/details?id=com.megabox.mop" target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i class="iconset ico-googleplay">구글플레이</i></a>
                <a href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&ls=1&mt=8" target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i class="iconset ico-appstore">앱스토어</i></a>
            </div>
        </div>
    </div>
    <!--// footer-bottom -->
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
    </div>
    <div class="bg-modal"></div>
</body>
</html>