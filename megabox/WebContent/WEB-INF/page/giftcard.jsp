<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!doctype html>
<!--[if gt IE 9]><!--><html lang="ko"><!--<![endif]-->
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<link rel="stylesheet" href="<%= path%>/css/megabox.min.css" media="all" />
<script src="<%=path%>/js/megabox.js"></script>

		<title>상품권/관람권 < 혜택 | 라이프씨어터, 메가박스</title>
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
            <a href="<%=path%>/support.do title="고객센터">고객센터</a>
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
<div class="bg-modal"></div>
<script>

function fn_move(){
	var offset = $('#tab-list').offset();
	$('html,body').animate({scrollTop : offset.top}, 800);
}
$(function(){

 	fn_move();
});
</script>


	<!-- container -->
		<div class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span>
						<a href="<%= path %>/benefit/membership.do" title="혜택 메인 페이지로 이동">혜택</a>
						<a href="<%= path %>/benefit/discount.do" title="제휴할인 페이지로 이동">제휴/할인</a>
						<a href="<%= path %>/benefit/discount.do" title="할인안내 페이지로 이동">할인안내</a>
					</div>


				</div>
			</div>

			<!-- contents -->
			<div id="contents">
				<div class="inner-wrap">
					<h2 class="tit">제휴할인</h2>
				</div>

		
				<div class="partnership-slider">
					<div class="inner-wrap">
						<h3 class="tit">제휴이벤트</h3>

						<div class="partnership-pagination"></div>

						<div class="partnership-count">
							<span title="현재 페이지" class="active">1</span> /
							<span title="전체 페이지" class="total">2</span>
						</div>

						<div class="partnership-util">
							<button id="btnPrevEvent" type="button" class="partnership-prev">이전 이벤트 보기</button>
							<button id="btnNextEvent" type="button" class="partnership-next">다음 이벤트 보기</button>

							<button type="button" class="pause on">일시정지</button>
							<button type="button" class="play">자동재생</button>
						</div>

						<div class="partnership-control">
							<button id="btnPrevEvent2" type="button" class="partnership-prev">이전 이벤트 보기</button>
							<button id="btnNextEvent2" type="button" class="partnership-next">다음 이벤트 보기</button>
						</div>



						<div class="partnership-swiper">
							<div class="swiper-wrapper" id="swiper-wrapper-area">
 								<!-- 제휴이벤트 배너 반복  -->
								
									<div class="cell swiper-slide">
										<a href="#" class="eventBtn" data-no="8355" data-netfunnel="N" title="[KB 랩비트 페스티벌 X 메가박스] 티켓 패키지 판매!! 상세보기">
											<p class="img"><img src="https://img.megabox.co.kr/SharedImg/event/2020/06/16/GcDx0cF1WsWfm11gJYI1J88kzV60DFD9.jpg" alt="" onerror="noImg(this);" /></p>
											<div class="cont">
												<p class="tit">[KB 랩비트 페스티벌 X 메가박스] 티켓 패키지 판매!!</p>
												<p class="date">2020.06.16~2020.09.20</p>
											</div>
										</a>
									</div>
								
									<div class="cell swiper-slide">
										<a href="#" class="eventBtn" data-no="8487" data-netfunnel="N" title="[서울시민카드 X 메가박스] 영화&amp;콤보 할인 이벤트! 상세보기">
											<p class="img"><img src="https://img.megabox.co.kr/SharedImg/event/2020/06/30/aG7enF1RfSc0tuqHkhjcObFpekw3gY5R.jpg" alt="서울시민카드 영화&amp;amp;콤보 할인이벤트" onerror="noImg(this);" /></p>
											<div class="cont">
												<p class="tit">[서울시민카드 X 메가박스] 영화&amp;콤보 할인 이벤트!</p>
												<p class="date">2020.03.02~2020.12.31</p>
											</div>
										</a>
									</div>
								
									<div class="cell swiper-slide">
										<a href="#" class="eventBtn" data-no="7153" data-netfunnel="" title="T멤버십 VIP Pick 상세보기">
											<p class="img"><img src="https://img.megabox.co.kr/SharedImg/event/2020/02/04/7VVcQcPze1eYIuKc8ZjvRIEvKDeUTTMa.jpg" alt="" onerror="noImg(this);" /></p>
											<div class="cont">
												<p class="tit">T멤버십 VIP Pick</p>
												<p class="date">2019.04.12~2021.01.31</p>
											</div>
										</a>
									</div>
								
									<div class="cell swiper-slide">
										<a href="#" class="eventBtn" data-no="5405" data-netfunnel="" title="KT멤버십 VIP 무료 예매 상세보기">
											<p class="img"><img src="https://img.megabox.co.kr/SharedImg/event/2020/02/04/ICEWiqhHXgnL6SiCLcTo4bCeRzPXwPN7.jpg" alt="" onerror="noImg(this);" /></p>
											<div class="cont">
												<p class="tit">KT멤버십 VIP 무료 예매</p>
												<p class="date">2015.05.01~2020.12.31</p>
											</div>
										</a>
									</div>
								
									<div class="cell swiper-slide">
										<a href="#" class="eventBtn" data-no="6445" data-netfunnel="" title="현대카드 고객이라면, M포인트 장당 2000P 사용! 상세보기">
											<p class="img"><img src="https://img.megabox.co.kr/SharedImg/event/2020/02/04/aSjjQwUFJeJ1vtDwchfyaSGXpSDbnPpF.jpg" alt="" onerror="noImg(this);" /></p>
											<div class="cont">
												<p class="tit">현대카드 고객이라면, M포인트 장당 2000P 사용!</p>
												<p class="date">2018.09.21~2021.04.30</p>
											</div>
										</a>
									</div>
								
 								<!--// 제휴이벤트 배너 반복 -->
							</div>
						</div>

						<div class="more">
							<a href="<%= path %>" onclick="fn_goEvent()" title="이벤트 페이지로 이동">더 많은 제휴혜택 보기 <i class="iconset ico-arr-right-green"></i></a>

						</div>
					</div>
				</div>

				<!-- inner-wrap -->
				<div class="inner-wrap mt40">

					<div class="tab-list fixed" id="tab-list">
						<ul>
							<li><a href="<%= path %>/benefit/discount.do" title="할인안내 탭으로 이동">할인안내</a></li>
							<li><a href="<%= path %>/benefit/discount.do?part=1" id="tab_credit" title="신용카드 탭으로 이동">신용카드(${dto.CKC01CNT})</a></li>
							<li><a href="<%= path %>/benefit/discount.do?part=2" id="tab_telecom" title="통신사 탭으로 이동">통신사(${dto.CKC02CNT})</a></li>
							<li><a href="<%= path %>/benefit/discount.do?part=3" id="tab_point" title="포인트 기타제휴 탭으로 이동">포인트/기타제휴(${dto.CKC03CNT})</a></li>
							<li class="on"><a href="<%= path %>/benefit/discount.do?part=4" id="tab_gift" title="상품권 관람권 탭으로 이동">상품권/관람권(4)</a></li>
						</ul>
					</div>
					<script type="text/javascript">

					</script>
					<!-- partnership-page -->
					<div class="partnership-page mt40">

						<!-- search-card -->
						<div class="search-card v3">
							<div class="tit-area">
								<p class="tit">상품권</p>

								<p class="txt">
									<span>상품권은 메가박스 전국 지점(일부 제외)의 현장(매표소)에서만 사용하실 수 있으며, 현대백화점 상품권의 경우, 일부 지점은 제외됩니다.</span>
									<em>※해피머니 경품용 상품권은 사용불가, 현대백화점 PP카드 사용불가, 경품용/모바일 상품권 사용불가</em>
								</p>
							</div>
						</div>
						<!--// search-card -->

						<!-- partnership-search-result -->
						<div class="partnership-search-result">
							<!-- 검색결과 있을 때 -->
							<!-- card-list-block : 카드 종류 반복 -->
							<div class="card-list-block">
								<h3 class="tit">문화상품권</h3>

								<div class="list">
									<ul>
										<li>
											<div class="table">
												<div class="img"><img src="<%= path %>/img/img-ticket-culture.png" alt="문화상품권" onerror="noImg(this);"/></div>

												<div class="cont">
													<div class="top">
														<div class="name">문화상품권 (3천원 / 5천원 / 1만원)</div>
													</div>

													<ul class="dot-list">
														<li>사용 가능 지점 : 메가박스 전국 지점(일부 제외)</li>
														<li>현장(매표소)에서만 가능</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="table">
												<div class="img"><img src="<%= path %>/img/img-ticket-book.png" alt="도서문화상품권" onerror="noImg(this);"/></div>

												<div class="cont">
													<div class="top">
														<div class="name">도서문화상품권 (3천원 / 5천원 / 1만원)</div>
													</div>

													<ul class="dot-list">
														<li>청사용 가능 지점 : 메가박스 전국 지점(일부 제외)</li>
														<li>현장(매표소)에서만 가능</li>
													</ul>
												</div>
											</div>
										</li>
										<li>
											<div class="table">
												<div class="img"><img src="<%= path %>/img/img-ticket-happy.png" alt="해피머니상품권" onerror="noImg(this);"/></div>

												<div class="cont">
													<div class="top">
														<div class="name">해피머니상품권 (5천원 / 1만원)</div>
													</div>

													<ul class="dot-list">
														<li>사용 가능 지점 : 메가박스 전국 지점(일부 제외)</li>
														<li>현장(매표소)에서만 가능</li>
														<li>해피머니 경품용 상품권은 사용불가</li>
													</ul>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!--// card-list-block : 카드 종류 반복 -->

							<!-- search-card -->
							<div class="search-card v3 mt40">
								<div class="tit-area">
									<p class="tit">관람권</p>

									<p class="txt">
										<span>전국 메가박스 일반 상영관에서 상영하는 영화 예매 시 사용 가능한 관람권입니다.</span>
										<em>※ 특별콘텐트, The FIRST CLUB, THE BOUTIQUE, 아트나인 등 에서 상영하는 영화 예매 시에는 사용 할 수 없습니다.</em>
										<em>※ 일부 상영관 이용 시, 추가 차액이 발생 할 수 있습니다.</em>
										<em>※ 1Set 구성: MEGABOX영화관람권 10매+영화 초대권 1매+매점 1,000원 할인권 5매=99,000원</em>
									</p>
								</div>
							</div>
							<!--// search-card -->

							<div class="card-list-block">
								<h3 class="tit">영화관람권</h3>

								<div class="list">
									<ul>
										<li>
											<div class="table">
												<div class="img"><img src="<%= path %>/img/img-ticket-movie.png" alt="메가박스 영화관람권" onerror="noImg(this);" /></div>

												<div class="cont">
													<div class="top">
														<div class="name">메가박스 영화관람권</div>
													</div>

													<ul class="dot-list">
														<li>영화관람권은 메가박스에서 상영하는 영화 예매 시 메가박스 일반영화관에서 사용 가능</li>
														<li>특별콘텐츠, 자동차극장 등에서 상영하는 영화 예매 시에는 사용불가 (상영관에 따라 추가 차액이(일반요금기준)발생 할 수 있음)</li>
														<li>
															현장 매표소에서 영화 입장권으로 교환 가능하며, 홈페이지, 모바일 앱에서 예매 가능.<br />
															(홈페이지 및 모바일 예매 시 ‘결제선택’단계에서 ‘메가박스 영화관람권’을 선택)
														</li>
														<li>지류(종이)관람권 뒷면의 스크래치가 개봉된 경우 현장 매표소에서 사용할 수 없으며 홈페이지 또는 모바일에서만 사용 가능</li>
														<li>영화관람 시 메가박스 규정에 의해 일정의 멤버십 포인트 적립</li>
													</ul>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!--// card-list-block : 카드 종류 반복 -->
							<!--// 검색결과 있을 때 -->
						</div>
						<!--// partnership-search-result -->
					</div>
					<!--// partnership-page -->
				</div>
				<!--// inner-wrap -->
			</div>
			<!--// contents -->
		</div>
		<!--// container -->
<!-- 		</div> -->
        



<div class="quick-area">
	<a href="" class="btn-go-top" title="top">top</a>
</div>

<!-- footer -->
<footer id="footer">
    <!-- footer-top -->
    <div class="footer-top">
        <div class="inner-wrap">
            <ul class="fnb">
                <li><a href="<%= path %>/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
                <li><a href="<%= path %>/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
                <li><a href="<%= path %>/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
                <li><a href="<%= path %>/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
                <li><a href="<%= path %>/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
                <li class="privacy"><a href="<%= path %>/support/privacy" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
                <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
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
<!--// footer -->

<!-- 모바일 때만 출력 -->
<div class="go-mobile">
	<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i class="iconset ico-go-mobile"></i></a>
</div>
    </div>
    <form id="mainForm">
    </form>
</body>
</html>