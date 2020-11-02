<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath();
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy.MM.dd");
		SimpleDateFormat format2 = new SimpleDateFormat ( "HH:mm");
		SimpleDateFormat format3 = new SimpleDateFormat ( "yyMMdd");
		Calendar time = Calendar.getInstance();
		String nowTime = format1.format(time.getTime());
		Date day1 = null;
		Date day2 = null;
		String screenDay = format3.format(time.getTime());
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
<!Doctype html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<title>전체극장 | 라이프씨어터, 메가박스</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="<%=path%>/css/megabox.min.css" media="all" />
<link rel="stylesheet" href="<%=path%>/css/main.css" media="all" />
<link rel="stylesheet" href="<%=path%>/css/megabox.netfunnel.min.css" media="all" />
<script src="<%=path%>/js/megabox.js"></script>
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

		<header id="header">
			<h1 class="ci">
				<a href="<%=path %>/main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<div class="util-area">
				<div class="left-link">
					<a href="<%=path %>/benefit/viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a>
					<a href="<%=path %>/benefit/membership.do" title="멤버십">멤버십</a> <a
						href="<%=path %>/support.do" title="고객센터">고객센터</a>
				</div>

				<div class="right-link">
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
                        <li><a href="<%=path%>/moviepost.do" title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="#" class="gnb-txt-reserve" title="예매">예매</a>
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
            
        <!-- 멤버쉽끝 -->
            <div class="list position-7">
                <p class="tit-depth">혜택</p>
                <ul class="list-depth">
                    <li><a href="<%=path %>benefit/membership.do" title="멤버십 안내">멤버십 안내</a></li>
                    <li><a href="<%=path %>benefit/viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a></li>
                    <li><a href="<%=path %>benefit/discount.do" title="제휴/할인">제휴/할인</a></li>
                </ul>
            </div>
		<!-- !!!!멤버쉽끝!!! -->

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
                    <li><a href="#" title="이용약관">이용약관</a></li>
                    <li><a href="#" title="개인정보처리방침">개인정보처리방침</a></li>
                    <li><a href="#" title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
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
                            <a href="#" class="button" title="쿠폰">쿠폰</a>
                            <a href="#" class="button" title="관람권">관람권</a>
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
<div class="bg-modal"></div>


<script>

	$(function(){

		if ($('.theater-swiper').length > 0) {

			// swiper 전체 count
			var cntAll   = $('.theater-swiper .cell').length;
			var cntDupli = $('.theater-swiper .swiper-slide-duplicate').length;
			var cntReal  = cntAll - cntDupli;
			var cntView  = 3;

			var theater_swiper = new Swiper('.theater-swiper', {
				autoplay: {
					delay: 3000,
					disableOnInteraction: true,
				},
				loop : cntReal >= cntView,
				slidesPerView: cntView,
				spaceBetween: 40,
				pagination: {
					el: '.theater-pagination',
					clickable: false,
				},
				navigation : {
					prevEl : '.theater-prev',
					nextEl : '.theater-next',
				},
				ally : {
					enabled : true
				}
			});

			$('.theater-main .theater-count .total' ).text(cntReal);
			$('.theater-main .theater-count .active').text(theater_swiper.realIndex + 1);

			// 현재 활성화된 swiper
			theater_swiper.on('slideChange', function() {
				$('.theater-main .theater-count .active').text(theater_swiper.realIndex + 1);
			});

			// 자동실행 정지
			$('.theater-util .pause').on('click', function() {
				theater_swiper.autoplay.stop();

				$(this).removeClass('on');
				$('.theater-util .play').addClass('on').focus();
			});

			// 자동실행 시작
			$('.theater-util .play').on('click', function() {
				theater_swiper.autoplay.start();

				$(this).removeClass('on');
				$('.theater-util .pause').addClass('on').focus();
			});

			// 좌우 이동시 자동실행 정지됨
			$(document).on('click','.theater-prev, .theater-next', function() {
				$('.theater-util .pause').removeClass('on');
				$('.theater-util .play').addClass('on');
			});

			$(window).resize(function() {
				theater_swiper.update();
			}).resize();
		}
	});
	
</script>
 
 
		<div class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="#" title="극장 페이지로 이동">극장</a>
						<a href="theaterList.do" title="전체극장 페이지로 이동">전체극장</a>
					</div>
				</div>
			</div>
			<div id="contents" class="no-padding">
				<div class="theater-main mb40">
					<div class="inner-wrap">
						<div class="left">
							<p class="slogun">megabox life theater</p>
							<p class="txt">
								메가박스<br />새로운 지점을<br />소개합니다.
							</p>
							<div class="swiper-control">
								<div class="theater-pagination"></div>

								<div class="theater-util">
									<button type="button" class="theater-prev">이전 이벤트 보기</button>
									<button type="button" class="theater-next">다음 이벤트 보기</button>
									<button type="button" class="pause on">일시정지</button>
									<button type="button" class="play">자동재생</button>
								</div>

								<div class="theater-count">
									<span title="현재 페이지" class="active">0</span> / <span
										title="전체 페이지" class="total">0</span>
								</div>
							</div>
						</div>

						<!-- theater-swiper -->
						<div class="theater-swiper">
							<div class="swiper-wrapper">

								<div class="cell swiper-slide" tabindex="0">
									<a href="#" class="eventBtn" data-no="8448" data-netfunnel=""
										title="힐링 프리미엄 극장, 창원내서 6월 24일&#40;수&#41; OPEN! 상세보기">
										<div class="img new"></div>
										<div class="cont new">
											<p class="label">신규오픈</p>
											<p class="local">부산/대구/경상</p>
											<p class="name">창원내서</p>
											<p class="date">20.06.24</p>
										</div>
									</a>
								</div>
								<div class="cell swiper-slide" tabindex="0">
									<a href="#" class="eventBtn" data-no="8447" data-netfunnel=""
										title="세종에서 제일 편안한 극장, 세종청사 6월 24일&#40;수&#41; OPEN! 상세보기">
										<div class="img new"></div>
										<div class="cont new">
											<p class="label">신규오픈</p>
											<p class="local">대전/충청/세종</p>
											<p class="name">세종청사</p>
											<p class="date">20.06.24</p>
										</div>
									</a>
								</div>

								<div class="cell swiper-slide" tabindex="0">
									<a href="#" class="eventBtn" data-no="8446" data-netfunnel=""
										title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일&#40;수&#41; OPEN! 상세보기">
										<div class="img new"></div>
										<div class="cont new">
											<p class="label">신규오픈</p>
											<p class="local">대전/충청/세종</p>
											<p class="name">대전현대아울렛</p>
											<p class="date">20.06.24</p>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!--// theater-main -->

				<div class="inner-wrap">


					<h2 class="tit new">전체극장</h2>

					<div class="theater-box" style="height : 292px;">
						<div class="theater-place">
							<ul>

								<li class="on">
									<button type="button" class="sel-city" id="seq_loc1">서울</button>

									<div class="theater-list">
										<ul>
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 1 }">
													<li><a href="<%=path %>/theaterInfo.do?branchSeq=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>

										</ul>
									</div>
								</li>


								<li>
									<button type="button" class="sel-city" id="seq_loc2">경기</button>

									<div class="theater-list">
										<ul>
										
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 2 }">
													<li><a href="<%=path %>/theater/list.do?seq_branch=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc3">인천</button>

									<div class="theater-list">
										<ul>
	
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 3 }">
													<li><a href="<%=path %>/theater/list.do?seq_branch=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>

										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc4">대전/충청/세종</button>

									<div class="theater-list">
										<ul>
											
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 4 }">
													<li><a href="<%=path %>/theater/list.do?seq_branch=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>

										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc5">부산/대구/경상</button>

									<div class="theater-list">
										<ul>

											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 5 }">
													<li><a href="<%=path %>/theater/list.do?seq_branch=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
 
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc6">광주/전라</button>

									<div class="theater-list">
										<ul>
											
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 6 }">
													<li><a href="<%=path %>/theater/list.do?seq_branch=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
											
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc7">강원</button>

									<div class="theater-list">
										<ul>
											
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 7 }">
													<li><a href="/theater/list.do?seq_branch=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
										
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc8">제주</button>

									<div class="theater-list">
										<ul>

											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 8 }">
													<li><a href="<%=path %>/theater/list.do?seq_branch=${dto.seq_branch}&pageNum=1" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
										</ul>
									</div>
								</li>

							</ul>
						</div>

						<div class="user-theater">

							<script>
								$('.theater-place').find('button').on("click", function() {
							 
									$('.theater-place').find('li').removeClass();
									if (!$(this).closest('li').hasClass('on')) {
										$(this).closest('li').addClass('on');
									} 
								
									if($('.theater-place ul .on').find('button').attr('id') == "seq_loc1") {
										$('.theater-box').css("height", "292px");
										}
									else if($('.theater-place ul .on').find('button').attr('id')  == "seq_loc2") {
										$('.theater-box').css("height", "344px");
										}
									else if($('.theater-place ul .on').find('button').attr('id')  == 'seq_loc3')	$('.theater-box').css("height", "214px");
									else if($('.theater-place ul .on').find('button').attr('id') == 'seq_loc4')	$('.theater-box').css("height", "266px");
									else if($('.theater-place ul .on').find('button').attr('id')  == 'seq_loc5')	$('.theater-box').css("height", "344px");
									else if($('.theater-place ul .on').find('button').attr('id')  == 'seq_loc6')	$('.theater-box').css("height", "240px");
									else if($('.theater-place ul .on').find('button').attr('id')  == 'seq_loc7')	$('.theater-box').css("height", "188px");
									else if($('.theater-place ul .on').find('button').attr('id')  == 'seq_loc8')	$('.theater-box').css("height", "188px");
									  
								});
								
							
							</script>



							<!-- 로그인 전 -->
							<div>
								<i class="iconset ico-favo-theater"></i> 나의 선호영화관 정보 <a href=""
									class="button small ml10" id="moveLogin" title="로그인하기">로그인하기</a>
							</div>


						</div>
					</div>


					<div class="tit-util mt70 mb15">
						<h3 class="tit">극장 이벤트</h3>
						<a href="" class="more" title="극장 이벤트 더보기">더보기 <i
							class="iconset ico-arr-right-gray"></i></a>
					</div>

					<div class="event-box">
						<ul>
							<c:forEach items="${ elist }" var="edto">
								<li><a href="#" class="eventBtn" title="${edto.title} 상세보기">
									<img src="https://img.megabox.co.kr/SharedImg/event/2020/03/17/x23DPxjY0lBYKEGgOv0au8URBgUTbDPb.jpg"
									alt="${edto.title}" onerror="noImg(this)" />
								</a></li>
							</c:forEach>
							
						
							<!-- 
							<li><a href="#" class="eventBtn" title="[신촌 | 이벤트] 앵콜연장! 별별 닉네임 상영관 상세보기">
									<img src="https://img.megabox.co.kr/SharedImg/event/2020/03/17/x23DPxjY0lBYKEGgOv0au8URBgUTbDPb.jpg"
									alt="[신촌 | 이벤트] 앵콜연장! 별별 닉네임 상영관" onerror="noImg(this)" />
							</a></li>
							 -->
							
							<!-- 
							<li><a href="#" class="eventBtn" title="[청라지젤 | 시즌권] 지젤M 하반기 시즌권 런칭 상세보기">
									<img src="https://img.megabox.co.kr/SharedImg/event/2020/06/29/I7zwF8YsPKpSB6OTJeYQWFveuxhgIvlr.jpg"
									alt="[청라지젤 | 시즌권] 지젤M 하반기 시즌권 런칭" onerror="noImg(this)" />
							</a></li>
							 -->
						</ul>
					</div>
					
					<div class="tit-util mt70 mb15">
						<h3 class="tit">극장 공지사항</h3>
						<a href="#" class="more" title="극장 공지사항 더보기">더보기
							<i class="iconset ico-arr-right-gray"></i>
						</a>
					</div>

					<div class="table-wrap">
						<table class="board-list">
							<caption>극장, 제목, 지역, 등록일이 들어간 극장 공지사항 목록</caption>
							<colgroup>
								<col style="width: 150px;">
								<col>
								<col style="width: 150px;">
								<col style="width: 120px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">극장</th>
									<th scope="col">제목</th>
									<th scope="col">지역</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody>



								<tr>
									<td>문경</td>
									<th scope="row"><a
										href="#"
										title="[문경] 7월휴관일 안내 상세보기"> [문경] 7월휴관일 안내 </a></th>
									<td>부산/대구/경상</td>
									<td>2020.07.06</td>
								</tr>

								<tr>
									<td>고양스타필드</td>
									<th scope="row"><a
										href="#"
										title="[고양스타필드지점] 7/7&#40;화&#41; 건물 내 법정 전기 안전검사 실시 안내 상세보기">
											[고양스타필드지점] 7/7&#40;화&#41; 건물 내 법정 전기 안전검사 실시 안내 </a></th>
									<td>경기</td>
									<td>2020.07.06</td>
								</tr>

								<tr>
									<td>대전현대아울렛</td>
									<th scope="row"><a
										href="#"
										title="지점 임시 휴점 안내 상세보기"> 지점 임시 휴점 안내 </a></th>
									<td>대전/충청/세종</td>
									<td>2020.07.03</td>
								</tr>

								<tr>
									<td>화곡</td>
									<th scope="row"><a
										href="#"
										title="[화곡지점] 매점 운영시간 조정 안내&#40;7/3~&#41; 상세보기"> [화곡지점] 매점
											운영시간 조정 안내&#40;7/3~&#41; </a></th>
									<td>서울</td>
									<td>2020.07.03</td>
								</tr>

								<tr>
									<td>대구신세계&#40;동대구&#41;</td>
									<th scope="row"><a
										href="/support/notice/detail?artiNo=10113&bbsNo=9"
										title="지점 임시 휴점 안내 상세보기"> 지점 임시 휴점 안내 </a></th>
									<td>부산/대구/경상</td>
									<td>2020.07.03</td>
								</tr>




							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>

	<!-- top으로가는 네비 -->
		<div class="quick-area">
			<a href="" class="btn-go-top" title="top">top</a>
		</div>

		<footer id="footer">
			<div class="footer-top">
				<div class="inner-wrap">
					<ul class="fnb">
						<li><a href="#" title="회사소개 페이지로 이동">회사소개</a></li>
						<li><a href="#" title="인재채용 페이지로 이동">인재채용</a></li>
						<li><a href="#" title="사회공헌 페이지로 이동">사회공헌</a></li>
						<li><a href="#" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
						<li><a href="#" title="이용약관 페이지로 이동">이용약관</a></li>
						<li class="privacy"><a href="/support/privacy"
							title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="#"
							target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#" class="btn-looking-theater"
						title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
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
						<p class="copy">COPYRIGHT &copy; MegaboxJoongAng, Inc. All
							rights reserved</p>
					</div>

					<div class="footer-sns">
						<a href="#" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
						<a href="#" target="_blank" title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
						<a href="#" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagram">인스타그램</i></a>
						<a href="#" target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i class="iconset ico-googleplay">구글플레이</i></a>
						<a href="#" target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i class="iconset ico-appstore">앱스토어</i></a>
					</div>
				</div>
			</div>
			<!--// footer-bottom -->
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
	</div>
	<form id="mainForm"></form>
</body>
</html>