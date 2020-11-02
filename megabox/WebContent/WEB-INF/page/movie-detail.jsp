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

<head>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
	<title>(${dto.name}) 주요정보 < 영화 | 라이프씨어터, 메가박스</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=path%>/css/megabox.min.css" media="all" />
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

<header id="header" class="main-header">
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
    <div id="layer_header_search" class="header-layer layer-header-search"></div>
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



<!-- --------------------------------------------------------------------- -->
<div id="schdlContainer" class="container no-padding-bottom">
    <div class="page-util off">
        <div class="inner-wrap">
            <div class="location">
                <span>Home</span>
                <a href="<%=path%>/movie.do" title="영화 페이지로 이동">영화</a>
                <a href="<%=path%>/movie.do" title="전체영화 페이지로 이동">전체영화</a>
                <a href="<%=path%>/movie.do" title="박스오피스 페이지로 이동">박스오피스</a>
            </div>
        </div>
    </div>
<div id="contents" class="no-padding">

<div class="movie-detail-page">
	<div class="bg-img" style="background-image:url('<%=path%>/img/poster/${dto.num}/${dto.num}.jpg');"></div>
	<div class="bg-pattern"></div>
	<div class="bg-mask"></div>
	<div class="movie-detail-cont">
		<c:if test="${not empty dto2}">
			<p class="d-day default">예매 D-${dto2.date}</p>
		</c:if>
        <p class="contents-type">&#35;오리지널티켓</p>
		<p class="title">${dto.name}</p>
		<div class="btn-util">
			<button type="button" title="보고싶어 안함" class="btn btn-like">
				<i class="iconset ico-heart-line"></i>
				<span title="보고싶어 한 명수" id="intrstCnt">${dto.like}</span>
			</button>
		</div>
		<div class="info">
			<div class="score">
				<p class="tit">실관람 평점</p>
				<div class="number gt" id="mainMegaScore">
					<p title="실관람 평점" class="before"><em>0</em><span class="ir">점</span></p>
				</div>
			</div>
			<div class="rate">
				<p class="tit">예매율</p>
						<p class="cont"><em>${dto.rank}</em>위 (${dto.view} &#37;)</p>
			</div>
            <div class="audience ">
                 <div class="tit ">
                        <span class="m-tooltip-wrap ">누적관객수
						</span>
                  </div>
                  <p class="cont"><em>${dto.view}</em> 명</p>
            </div>
		</div>
		<div class="poster">
			<div class="wrap">
					<p class="movie-grade age-${dto.age}"></p>
			 	<img src="<%=path%>/img/poster/${dto.num}/${dto.num}.jpg" alt="${dto.name}" />
				<a href="#" class="btn-poster-down" title="포스터 다운로드" data-no="1022837" data-sn="1">포스터 다운로드</a>
			</div>
		</div>
		<div class="reserve screen-type col-2">
			<div class="reserve">
			<c:if test="${dto.special eq MX }">
				<a href="<%=path%>/booking.do?movie=${dto.num}" class="btn reserve" title="영화 예매하기">예매</a>
				<a href="<%=path%>/booking.do?movie=${dto.num}&theather=mx" class="btn mx" title="MX관 예매하기">MX</a>
			</c:if>
			<c:if test="${dto.special ne MX}">
				<a href="<%=path%>/booking.do?movie=${dto.num}" class="btn reserve" style="width: 100%; border-radius: 5px;" title="영화 예매하기">예매</a>
			</c:if>
			</div>
		</div>
	</div>
</div>
<div id="contentData">















<div class="inner-wrap">
    <div class="tab-list movie"> <!-- fixed 있으면 바 돌아다님 -->
        <ul>
            <li class="on"><a href="/on/oh/oha/Movie/selectMovieInfo.do" title="주요정보 탭으로 이동">주요정보</a></li>
            <li><a href="/on/oh/oha/Movie/selectMovieOneDetail.do" title="실관람평 탭으로 이동">실관람평</a></li>
            <li><a href="/on/oh/oha/Movie/selectMoviePostDetailC.do" title="무비포스트 탭으로 이동">무비포스트</a></li>
            <li><a href="/on/oh/oha/Movie/selectMovieStilDetail.do" title="예고편/스틸컷 탭으로 이동">예고편/스틸컷</a></li>
        </ul>
    </div>

    <div class="movie-summary infoContent" id="info">
        
            <div class="txt">${dto.summary}</div>
            <div class="btn-more toggle">
                <button type="button" class="btn"><span>더보기</span> <i class="iconset ico-btn-more-arr"></i></button>
            </div>
        
    </div>

    <div class="movie-info infoContent">
        <p>상영타입 : 2D, 2D ATMOS</p>

        <div class="line">
           <p>감독&nbsp;: ${dto.director}</p>
           <p>장르&nbsp;: ${dto.genre} / ${dto.runningTime} 분</p>
           <p>등급&nbsp;: ${dto.age}</p>
           <p>개봉일&nbsp;: ${dto.date}</p>
        </div>
           <p>출연진&nbsp;: ${dto.actors }</p>
    </div>

    <!-- movie-graph -->
    <div class="movie-graph infoContent">
        <div class="col">
            <dl>
                <dt>관람포인트</dt>
                <dd id="charByPoint">높은거 두개</dd>
            </dl>

								<div class="graph" style="position: relative; bottom: 29px;">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<canvas id="chartByStart"
										style="width: 216px; height: 216px; display: block;"
										width="216" height="216" class="chartjs-render-monitor"></canvas>
									<img src="../../../static/pc/images/movie/no-graph01.jpg"
										alt="기대포인트 결과 없음" style="display: none;">
								</div>
							</div>

		        <div class="col" id="subMegaScore">
		            <dl>
		                <dt>실관람 평점</dt>
		                <dd class="font-roboto regular"><em>계산</em><span class="ir">점</span></dd>
		            </dl>
                    <div class="graph" style="display: none;">
                        <img src="../../../static/pc/images/movie/no-graph02.jpg" alt="메가스코어 결과 없음">
                    </div>
                    <div class="score equal" style="position: relative; bottom: 29px;">
                        <div class="middle">
                            <div class="circle"><em>계산</em><span class="ir">점</span></div>
                            <p>관람 후</p>
                        </div>
                    </div>
        		</div>

        <div class="col">
            <dl>
                <dt>예매율</dt>
                <dd class="font-roboto regular">
                    <span id="rkTag">계산%</span>
                </dd>
            </dl>

            <div class="graph" style="position: relative; bottom: 10px; right: 10px;"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                <canvas id="chartByBar" width="216" height="216" class="chartjs-render-monitor" style="display: block; width: 216px; height: 216px;"></canvas>
                <img src="../../../static/pc/images/movie/no-graph03.jpg" alt="기대율 결과 없음" style="display: none;">
            </div>
        </div>

        <div class="col">
            <dl>
                <dt>일자별관객수</dt>
                <dd class="font-roboto regular">
                        ${dto.view}
                </dd>
            </dl>

            <div class="graph">
                <canvas id="chartByLine" style="width: 220px; height: 205px; display: block;" width="220" height="205"></canvas>
                <img src="/static/pc/images/movie/no-graph04.jpg" alt="일자별 관객수 결과 없음" style="display: none;">
            </div>
        </div>
    </div>
        <!-- 한줄평 있을 때 -->
            <div class="tit-util mt70 mb15 oneContent">
                <h2 class="tit small">${dto.name}에 대한 <span class="font-gblue">???</span>개의 이야기가 있어요!</h2>
            </div>
    <div class="movie-idv-story oneContent">
							<ul>
<c:if test="${empty sessionScope.auth}"><!-- 로그인이 안되있을시 -->
								<li class="type03">
									<div class="story-area">
										<div class="user-prof">
											<div class="prof-img">
												<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png" alt="MEGABOX">
											</div>
											<p class="user-id">MEGABOX</p>
										</div>
										<div class="story-box">
											<div class="story-wrap">
												<div class="story-cont">
													<span class="font-gblue">${dto.name}</span> 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요.
												</div>
												<div class="story-write">
													<a href="#tooltip-layer01" title="관람평쓰기" class="tooltip-click oneWrtNonMbBtn">
														<i class="iconset ico-story-write"></i> 관람평쓰기
													</a>
													<div id="tooltip-layer01" class="tooltip-cont" style="width: 225px; height: 80px;">
														<div class="wrap loginTagClick"> 로그인이 필요한 서비스 입니다.<br>
															<a href="javaScript:(0)" id="login" class="font-green" title="로그인 바로가기">로그인 바로가기 
																<i class="iconset ico-arr-right-green"></i>
															</a>
															<button type="button" class="btn-close-tooltip">툴팁 닫기</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
</c:if>
<c:if test="${not empty sessionScope.auth}"><!-- 로그인이 안되있을시 -->
								<li class="type03">
									<div class="story-area">
										<div class="user-prof">
											<div class="prof-img">
												<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png" alt="MEGABOX">
											</div>
											<p class="user-id">${auth.m_id}</p>
										</div>
										<div class="story-box">
											<div class="story-wrap">
												<div class="story-cont">
												<span class="font-gblue">${auth.name}</span>
													<span class="font-gblue">${dto.name}</span> 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요.
												</div>
												<div class="story-write">
													<a href="#tooltip-layer01" title="관람평쓰기" class="tooltip-click oneWrtNonMbBtn">
														<i class="iconset ico-story-write"></i> 관람평쓰기
													</a>
												</div>
											</div>
										</div>
									</div>
								</li>
</c:if>
					<!-- 		<c:if test="${not empty list}">
							<c:forEach items="${list}" var="dto">
								<li class="type01 oneContentTag">
									<div class="story-area">
										<div class="user-prof">
											<div class="prof-img">
												<img src="<%=path%>/img/bg-photo.png" alt="프로필 사진" title="프로필 사진">
											</div>
											<p class="user-id">${dto.id}</p>
										</div>
										<div class="story-box">
											<div class="story-wrap review">
												<div class="tit">관람평</div>
												<div class="story-cont">
													<div class="story-point">
														<span>점수</span>
													</div>
													<div class="story-recommend">
														<em>평가항목뭔지</em>
													</div>
													<div class="story-txt">코멘트내용</div>
													<div class="story-like">
														<button type="button" class="oneLikeBtn" title="댓글 추천">
															<i class="iconset ico-like-gray"></i> <span>${dto.like}</span>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="story-date">
										<div class="review on">
											<span>? 분전</span>
										</div>
									</div>
								</li>
								</c:forEach>
								</c:if> -->
							</ul>
						</div>
					</div>		


<!-- movie-detail-poster -->
<div class="movie-detail-poster mt70 moviepostContent">
    <div class="inner-wrap">
                <!--목록이 있을 때  -->
                <div class="tit-util mb15">
                    <h2 class="tit small white">무비포스트</h2>
                    <a href="#" id="goMoviePost" class="more" data-nm="반도" title="무비포스트 페이지로 이동">더보기 <i class="iconset ico-arr-right-white"></i></a>
                </div>

                <!-- movie-post-list -->
                <div class="movie-post-list" style="position: relative; height: 442px;">
                        <div class="grid-item" style="position: absolute; left: 0px; top: 0px;">
                            <div class="wrap">

                                <div class="img">
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178648"><img src="https://img.megabox.co.kr/SharedImg/2020/07/03/voGs51YniOd5ViI6Kgmtwj8qp7Hde2gZ.jpg" onerror="noImg(this)" alt="반도"></a>
                                </div>

                                <div class="cont">
                                    <div class="writer">
                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="57B7F355-2DC7-4F41-A15B-AAA5E451DA5F">아이디</a>
                                    </div>
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178648">
                                        <div class="label"></div>
										<p class="tit">${dto.name}</p>
                                        <p class="txt">서머리</p>
                                        <p class="time">? 시간전</p>
                                    </a>
                                    <div class="condition">
               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="178648">
                          		                <i class="iconset ico-like ">좋아요 수</i>
                                 		        <span class="none">좋아요수</span>
                                   		</button>
                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="178648">
                                            <i class="iconset ico-reply" id="">댓글 수</i> 댓글수
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="grid-item" style="position: absolute; left: 290px; top: 0px;">
                            <div class="wrap">
                                <div class="img">
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178647"><img src="https://img.megabox.co.kr/SharedImg/2020/07/03/BjgVLU8J1bkaB34Xh8tOIVKRfPYk9g5T.jpg" onerror="noImg(this)" alt="반도"></a>
                                </div>
                                <div class="cont">
                                    <div class="writer">
                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="5D827A6F-56C9-4B4D-927A-235AE9BF73EB">아이디</a>
                                    </div>
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178647">
                                        <div class="label"></div>
										<p class="tit">${dto.name }</p>
                                        <p class="txt">summary</p>
                                        <p class="time">8 시간전</p>
                                    </a>

                                    <div class="condition">
               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="178647">
                          		                <i class="iconset ico-like ">좋아요 수</i>
                                 		        <span class="none">0</span>
                                   		</button>
                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="178647">
                                            <i class="iconset ico-reply" id="">댓글 수</i> 0
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="grid-item" style="position: absolute; left: 580px; top: 0px;">
                            <div class="wrap">
                                <div class="img">
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178646"><img src="https://img.megabox.co.kr/SharedImg/2020/06/15/kcL7q9T8uUoiCAjO5Huv7RCFdIFQclIv.jpg" onerror="noImg(this)" alt="반도"></a>
                                </div>
                                <div class="cont">
                                    <div class="writer">
                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="2B8BF453-FD59-41C1-A0DA-98E49BF01A54">hyunjun00**</a>
                                    </div>
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178646">
                                        <div class="label">
                                        </div>
										<p class="tit">반도</p>
                                        <p class="txt">어리버리 하지만 혼자 살아 남을려는 자존심 하나만 인정되고 동료를 죽이다니 나쁜인간 아니에</p>
                                        <p class="time">11 시간전</p>
                                    </a>
                                    <div class="condition">
               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="178646">
                          		                <i class="iconset ico-like ">좋아요 수</i>
                                 		        <span class="none">0</span>
                                   		</button>
                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="178646">
                                            <i class="iconset ico-reply" id="">댓글 수</i> 0
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="grid-item" style="position: absolute; left: 870px; top: 0px;">
                            <div class="wrap">
                                <div class="img">
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178640"><img src="https://img.megabox.co.kr/SharedImg/2020/07/14/O8cCC0j4fb8DD7SfbQgwNW7rBSJ6JuYQ.gif" onerror="noImg(this)" alt="반도"></a>
                                </div>
                                <div class="cont">
                                    <div class="writer">
                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="854E4CEC-9940-4ABE-9A70-1CDE3367A7D8">sywb25**</a>
                                    </div>
                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="178640">
                                        <div class="label"> </div>
										<p class="tit">반도</p>
                                        <p class="txt">마지막이 약간 억지였지만 그래도 잼났음!!!!</p>
                                        <p class="time">23 시간전</p>
                                    </a>
                                    <div class="condition">
               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="178640">
                          		                <i class="iconset ico-like ">좋아요 수</i>
                                 		        <span class="none">0</span>
                                   		</button>
                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="178640">
                                            <i class="iconset ico-reply" id="">댓글 수</i> 0
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
    </div>
</div>
<!--// movie-detail-poster -->

<div class="inner-wrap mt70 infoContent">
    <div class="tit-util mb15">
        <h2 class="tit small">이벤트</h2>
        <a href="javascript:void(0)" title="이벤트 페이지로 이동" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" class="more">더보기 <i class="iconset ico-arr-right-gray"></i></a>
    </div>

    <div class="event-box">
        <ul>
            
                
                    <li>
                        <a href="#" title="<반도> 오리지널 티켓북 포스터 증정 이벤트 상세보기" class="eventBtn" data-no="8573" data-netfunnel="N"><img src="https://img.megabox.co.kr/SharedImg/event/2020/07/22/WslpuJ2Q9tf7VmqgVZerLbLCouFKUZHO.jpg" onerror="noImg(this)" alt="<반도> 오리지널 티켓북 포스터 증정 이벤트"></a>
                    </li>
                
            
                
                    <li>
                        <a href="#" title="두 배 더 즐거운 &quot;문화가 있는 날 플러스&quot; 상세보기" class="eventBtn" data-no="8577" data-netfunnel="N"><img src="https://img.megabox.co.kr/SharedImg/event/2020/07/24/AbD9fyjBmchSVWMVXGIh5xNxsTdhpEsG.jpg" onerror="noImg(this)" alt="두 배 더 즐거운 &quot;문화가 있는 날 플러스&quot;"></a>
                    </li>
                
            
        </ul>
    </div>
</div>
<!--
<div class="add-area big infoContent">
    <script data-id="QZQTH4gyTeSwib9iz79Vig" name="megabox_p/sub/sub@sub_bottom_1100x80?mlink=431" src="//cast.imp.joins.com/persona.js" async></script>
</div>
 -->


<!-- 레이어 : 관람평 등록 -->
<section id="layer_regi_reply_review" class="modal-layer">
    <div class="wrap">
        <header class="layer-header">
            <h3 class="tit"><span class="oneTitle"></span> 작성하기</h3>
        </header>

        <div class="layer-con">
            <!-- regi-reply-score review -->
            <div class="regi-reply-score review">
                <!-- score -->
                <div class="score">
                    <p class="tit">"반도"<br><span class="oneTitle"></span>을 남겨보세요!</p>
                    <div class="box">
                        <div class="box-star-score">
                            <div class="star">
                                <div class="group">
                                    <button type="button" class="btn left score-1">1</button>
                                    <button type="button" class="btn right score-2">2</button>
                                </div>
                                <div class="group">
                                    <button type="button" class="btn left score-3">3</button>
                                    <button type="button" class="btn right score-4">4</button>
                                </div>
                                <div class="group">
                                    <button type="button" class="btn left score-5">5</button>
                                    <button type="button" class="btn right score-6">6</button>
                                </div>
                                <div class="group">
                                    <button type="button" class="btn left score-7">7</button>
                                    <button type="button" class="btn right score-8">8</button>
                                </div>
                                <div class="group">
                                    <button type="button" class="btn left score-9">9</button>
                                    <button type="button" class="btn right score-10">10</button>
                                </div>
                            </div>
                            <div class="num">
                                <em>0</em>
                                <span>점</span>
                            </div>
                        </div>

                        <div class="textarea">
                            <textarea id="textarea" rows="5" cols="30" title="한줄평 입력" placeholder="영화에 대한 후기를 남겨주세요." class="input-textarea"></textarea>
                            <div class="util">
                                <p class="count"><span>0</span> / 100</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--// score -->

                <!-- point -->
                <div class="point">
                    <p class="tit"><span class="oneText"></span>포인트는 무엇인가요?</p>
                    <p class="txt">(최대 2개 선택가능)</p>

                    <div class="box">
                        <button type="button" class="btn">연출</button>
                        <button type="button" class="btn">스토리</button>
                        <button type="button" class="btn">영상미</button>
                        <button type="button" class="btn">배우</button>
                        <button type="button" class="btn">OST</button>
                    </div>
                </div>
                <!--// point -->

                <div class="txt-alert errText" style="display: none;">한줄평 내용을 입력해 주세요.</div>
            </div>
            <!--// regi-reply-score preview -->
        </div>

        <div class="btn-group-fixed">
            <button type="button" class="button close-layer">취소</button>
            <button type="button" class="button purple" id="regOneBtn" data-no="" data-cd="" data-mno="20021300">등록</button>
        </div>

        <button type="button" class="btn-modal-close">레이어 닫기</button>
    </div>
</section>

<!-- 무비포스트 상세 레이어팝업 -->










<script type="text/javascript">

var detailPopup = {
	mbNo : "",
	moviePostNo : "",
	backScreen  : "",
	movieNo : ""
};

var moviePostRlyNo;

$(function() {

	// 구독하기 버튼
	$('#subscribe').on('click', function() {


		$.ajaxMegaBox({
	        url: '/on/oh/oha/Movie/mergeMoviePostSubscribe.do',
            data: JSON.stringify({
				mbNo : detailPopup.mbNo
            }),
            sessionAt:true,
	        success: function (data) {
				var resultMap = data.resultMap;

				if(resultMap.msg == 'sessionFail') return gfn_alertMsgBox('로그인 후 이용가능한 서비스입니다.');

				if(resultMap.moviePostSbscAt == 'Y' || resultMap.moviePostSbscAt == 'C') {
					gfn_alertMsgBox('구독 신청이 완료 되었습니다.', function(){

						// 영화 > 무비포스트 > 구독중인포스트 : 재조회
						if($('[data-type=subscribe].on').length == 1){
							$('[data-type=subscribe].on').click();
						}
						// 나의 무비스토리  > 구독중인포스트 : 재조회
						else if($('[data-type=mySubscribe].on').length == 1){
							$('[data-type=mySubscribe].on').click();
						}
					});
					$('#subscribe').text('구독중');
				} else if(resultMap.moviePostSbscAt == 'N') {
					gfn_alertMsgBox('구독이 해제 되었습니다.', function(){
						// 나의 무비스토리  > 구독중인포스트 : 재조회
						if ($('[data-type=mySubscribe].on').length == 1) {
							$('[data-type=mySubscribe].on').click();

						}

						// 영화 > 무비포스트 > 구독중인포스트 : 재조회
						else if($('[data-type=subscribe].on').length == 1){
							$('[data-type=subscribe].on').click();

						}
					});
					$('#subscribe').text('구독하기');
				} else {
					$('#subscribe').text('구독하기');
				}

	        }
	    });
	});

	// 좋아요 버튼
	$(".layer-con").on('click', '.count .btn', function() {
		fn_addHeart(this);
	});

	// 댓글 등록
	$(".layer-con").on('click', '#btnPostRly', function() {
		var postRlyCn = $('#postRlyCn').val();

		if(gfn_isEmpty(postRlyCn)) return gfn_alertMsgBox('내용을 입력하세요');

		fn_insertPostRlyPre();
	});

	// 더보기 버튼
	$('#btnAddMovie').on('click', function() {
		fn_moviePostRlySearch('add');
	});



	// 댓글 사이즈
	$('#postRlyCn').on('keyup', function(e) {
		var postRlyCn = $('#postRlyCn').val();

		if(postRlyCn.length < 101) $('.text-count').text(postRlyCn.length);
	});

	// 공유하기
	$('.btn-post-share button').off().on('click', function(e) {
		e.preventDefault();

		var classStr = $(this).attr('class');

		if(classStr.indexOf('kakao') > -1) { // 카카오톡
			if(!MegaboxUtil.Common.isMobile() && !MegaboxUtil.Common.isApp())
				MegaboxUtil.Common.alert('앱에서만 사용 가능합니다.');
			else
				MegaboxUtil.Common.alert('준비중입니다.');
		} else if(classStr.indexOf('face') > -1) { // 페이스북
			MegaboxUtil.Share.facebook();
		} else if(classStr.indexOf('band') > -1) { // 밴드
			MegaboxUtil.Share.band();
		} else if(classStr.indexOf('twitter') > -1) { // 트위터
			MegaboxUtil.Share.twitter();
		} else { // 링크 공유
			MegaboxUtil.Share.copyUrl();
		}

		$('.tooltip-layer, .tipPin').css({ 'opacity': 0, 'z-index': 0 });
	});

	// 예매 클릭
    $('#bokdLinkBtn').off().on('click', function(e) {
      e.preventDefault();

      var form = MegaboxUtil.Form.createForm();
      form.append($('<input>').attr({ 'type': 'hidden', 'name': 'rpstMovieNo', 'value': $(this).data('no') }));
      form.attr('action', '/booking');
      form.submit();
    });


});





/*댓글목록 가져오기*/
function fn_moviePostRlySearch(searchtype, moviePostNo, viewDiv){

	var moviePostNo = moviePostNo;
	//var currentPage = $("#currentPage").val();
	//var recordCountPerPage = $("#recordCountPerPage").val();

	if(searchtype == "search"){
		//currentPage = "1";
	}else if(searchtype == "add"){
		//currentPage = parseInt(currentPage) + 1;
	}
	//$("#currentPage").val(currentPage+"");
	//var paramData = { moviePostNo: moviePostNo, currentPage:currentPage + "", recordCountPerPage:recordCountPerPage};
	var paramData = { moviePostNo: moviePostNo};

	$.ajax({
        url: "/on/oh/oha/Movie/selectMoviePostRlyList.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
		data: JSON.stringify(paramData),
        success: function (data) {
        	if(searchtype == "search"){
        		$("#commentList").empty();
        	}

        	$("#commentList").append(data);


        	if(viewDiv == "rly"){ //댓글아이콘 눌러서 상세 볼 경우
        		console.log(viewDiv);

        		$('#postRlyCn').focus();
        		$('.comment-box')[0].scrollIntoView(false); //댓글로 포커스


        	}else if($('#layer_post_detail .bg-modal-dim').length > 0) {
        		// 그림, 텍스트 눌러서 포스트 상세 볼 경우
        		console.log(viewDiv);
        		$('#layer_post_detail .bg-modal-dim')[0].scrollIntoView(true); // 레이어팝업 헤더에 포커스

        	}

        	//$(".link.btn-modal-open2.post-detailRlyPopup").each(function(idx){
        	$(".btn-modal-open2.post-detailRlyPopup").each(function(idx){
       			var hdnMoviePostNo = $('#hdnMoviePostNo').val();
       			if($.trim($(this).data('no')) == hdnMoviePostNo){
       				var totCnt = $('#rlyCntTop').val();
       				$(this).html("<i class='iconset ico-reply'>댓글 수</i> "+totCnt);
       			}
       		});
        }
    });

}

/*좋아요 저장*/
function fn_addHeart(obj){

	var artiNo = $(obj).attr("arti-no");

	if (artiNo == null) return ;

	var allData = { artiNo:artiNo, artiDivCd: 'MOPO' };

	$.ajaxMegaBox({
        url: "/on/oh/oha/Movie/mergeMoviePostHeart.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
		data: JSON.stringify(allData),
		sessionAt:true,
        success: function (data, textStatus, jqXHR) {
			var resultMap = data.resultMap;

			if(resultMap.msg == "sessionFail"){
				gfn_alertMsgBox("로그인 후 이용가능한 서비스입니다.");
				return;
			}
			var text = "";
			$(obj).html('');
			if(resultMap.rowStatCd == "D"){
				text = "<i title=\"좋아요 설정 함\" class=\"iconset ico-like\"></i>"+resultMap.likeCnt;
				var artiNo = $(obj).attr("arti-no");

				$(".btn-like.listBtn").each(function(idx){
					if($.trim($(this).data('no')) == artiNo){
						var oriVal = $(this).find('span').html();	//좋아요 수
						var toVal = Number(oriVal)-1;				//좋아요 -1
						$(this).find('span').html(toVal);			//태그 적용
						$(this).find('i').removeClass('on');		//온클래스 제거
					}
				});
			}else{
				text = "<i title=\"좋아요 설정 안함\" class=\"iconset ico-like on\"></i>"+resultMap.likeCnt;
				var artiNo = $(obj).attr("arti-no");

				$(".btn-like.listBtn").each(function(idx){
					if($.trim($(this).data('no')) == artiNo){
						var oriVal = $(this).find('span').html();	//좋아요 수
						var toVal = Number(oriVal)+1;				//좋아요 +1
						$(this).find('span').html(toVal);			//태그 적용
						$(this).find('i').addClass('on');			//온클래스 추가
					}
				});
			}
			$(obj).append(text);
        }
    });
}


/*댓글저장 전처리*/
function fn_insertPostRlyPre(){
	var postRlyCn = $("#postRlyCn").val();

 	var fn_complete = function(list){
	      if ( list.length > 0 ) {
	          //alert(list.join(","));
	          gfn_alertMsgBox('허용되지 않는 단어가 포함되어 있습니다.'); //허용되지 않는 단어가 포함되어 있습니다.
	      } else {
	    	  fn_insertPostRly();
	      }
	 }

 	gfn_chkPrhword(postRlyCn,fn_complete);
}

/*댓글저장*/
function fn_insertPostRly(){

	var moviePostNo = detailPopup.moviePostNo;
	var postRlyCn = $("#postRlyCn").val();
	var allData = { moviePostNo:moviePostNo, postRlyCn:postRlyCn};

/* 	if(!confirm("등록 하시겠습니까?")){
		return;
	}
 */
//20190905 한줄평, 댓글 작성시 메세지 불필요  gfn_confirmMsgBox("등록 하시겠습니까?", function(){
 		$.ajaxMegaBox({
	        url: "/on/oh/oha/Movie/insertPostRly.do",
	        type: "POST",
	        contentType: "application/json;charset=UTF-8",
	        dataType: "json",
			data: JSON.stringify(allData),
			sessionAt:true,
            clickLmtChk: true, //중복클릭 방지 실행
	        success: function (data, textStatus, jqXHR) {
				var resultMap = data.resultMap;

				if(resultMap.msg == "sessionFail"){
					gfn_alertMsgBox("로그인 후 이용가능한 서비스입니다.");
					return;
				}

				if(resultMap.msg == 'already') return gfn_alertMsgBox('이미 작성된 댓글이 있습니다.');

				//20190905 한줄평, 댓글 작성시 메세지 불필요  gfn_alertMsgBox("댓글이 등록 되었습니다.");
				$(".text-count").text("0");
				$("#postRlyCn").val("");
				fn_moviePostRlySearch("search", moviePostNo, "rly");
            },complete: function(xhr){
            	clearLmt(); //중복제한 초기화

            }
	    });
	/////});
}



/*댓글 수정화면 취소버튼*/
function fn_writeCancel(moviePostRlyNo){
	$("#rlyWri"+moviePostRlyNo).hide();
	$("#rlyTxt"+moviePostRlyNo).show();
}

/*댓글 사이즈(수정화면)*/
function fn_postRlyCnValChk(moviePostRlyNo){
	var postRlyCn = $("#postRlyCn"+moviePostRlyNo).val();
	if(postRlyCn.length < 101){
		$("#textCount"+moviePostRlyNo).text(postRlyCn.length);
	}
}


/*******************************************************************
 * 무비포스트 상세 레이어팝업 관련 	*
 *******************************************************************/
 function fn_moviePostList(){
	//콜백함수
	 fn_moviePostRlySearch('search', detailPopup.moviePostNo);

}


 function fn_postDetail(moviePostNo, viewDiv, backScreen){
	console.log("MoviePostViewLayerPM.jsp");
	//console.log(moviePostNo);
	detailPopup.moviePostNo = moviePostNo;
	detailPopup.backScreen = backScreen;

	//댓글창 초기화
	$('.comment-function .reset .text-count').text(0);
	$('#postRlyCn').val('');
	$('#subscribe').css("display", "block");
	$('.balloon-space').removeClass('on');


	$.ajaxMegaBox({
		url: '/moviepost/layerDetail',
		type: "POST",
		contentType: "application/json;charset=UTF-8",
		dataType: "json",
		data: JSON.stringify({
			moviePostNo: moviePostNo
		}),
		success: function (data) {

			var detailInfo = data.postList[0];
			$('.post-detail .tit').html(detailInfo.moviePostMovieTitle); //무비포스트 제목
			$('.user-id').html(detailInfo.loginId);
			$('.user-write-time').html(detailInfo.fstRegDe);
			$('.user-post-box .user-info .photo').html('<img src="'+data.imgSvrUrl+detailInfo.profileImgPath+'" alt="'+detailInfo.loginId+'님의 무비포스트" onerror="noImg(this)"/>');
			$('.user-write-time').html(detailInfo.fstRegDe);
			detailPopup.mbNo = detailInfo.mbNo;
			detailPopup.movieNo = detailInfo.movieNo;

			if ((detailInfo.movieStatCd == 'MSC01' || detailInfo.movieStatCd == 'MSC02') && detailInfo.bokdAbleYn == 'Y') {
				$('#bokdLinkBtn').show();
				$('#bokdLinkBtn').data('no', detailInfo.movieNo);
				$('#bokdLinkBtn').attr('title', detailInfo.movieNm +' 예매하기');
			} else {
				$('#bokdLinkBtn').hide();
			}

			if('' != detailInfo.mbNo){ //무비포스트 쓴 회원과 홈페이지 접속한 회원이 같지 않은 경우

				$('.count .btn').attr('arti-no', moviePostNo); //좋아요 버튼에 무비포스트번호 셋팅

				//포스트 옵션 말풍선
				$('.balloon-space').removeClass('writer').addClass('user');
				var html ="";
				html += '<div class="user">';
			    html += '<p class="reset a-c">광고성 내용 및 욕설/비방하는<br />내용이 있습니까?</p>';
			    html += '<button type="button" data-no3="' + moviePostNo + '">포스트 신고 <i class="iconset ico-arr-right-green"></i></button>';
			    html += '</div>';
				html += '<div class="btn-close"><a href="#" title="닫기"><img src="../../../static/pc/images/common/btn/btn-balloon-close.png" alt="닫기" /></a></div>';
			    $('.balloon-space.mpost .balloon-cont').html(html);

				if(detailInfo.moviePostSbscAt == 'Y'){ //무비포스트구독여부가 Y면
					$('#subscribe').text('구독중');
				}else{
					$('#subscribe').text('구독하기');
				}
			}else {
				$('.count .btn').attr('arti-no', moviePostNo); //좋아요 버튼에 무비포스트번호 셋팅

				//포스트 옵션 말풍선
				$('.balloon-space').removeClass('user').addClass('writer');
				var html="";
				html += '<div class="writer layer-pop-detail">';
			    html += '<button type="button" data-no1="'+ moviePostNo +'" data-no2="'+ detailInfo.movieNo +'">수정</button>';
			    html += '<button type="button" data-no1="'+ moviePostNo +'">삭제</button>';
			    html += '</div>';
			    html += '<div class="btn-close"><a href="#" title="닫기"><img src="../../../static/pc/images/common/btn/btn-balloon-close.png" alt="닫기" /></a></div>';

			    $('.balloon-space.mpost .balloon-cont').html(html);

				$('#subscribe').css("display", "none");
			}

			//포스트 내용
		 	if(data.postList.length > 0){

		 		var metaTagImg = "";	//메타태그 이미지
		 		var htmlTxt = "";
		 		var img_Path = "";
		 		for(var i=0; i<data.postList.length; i++){
		 			if( i == 0 ){
		 				metaTagImg = data.imgSvrUrl + data.postList[i].imgPath
		 			}
					if(data.postList[i].moviePostImgDivCd == 'MIK01'){ //스틸컷(포스터)
						img_Path = nvl(data.postList[i].imgPath).posterFormat('_600');
						htmlTxt += '<div class="section">' ;
						htmlTxt += '<img src="'+ data.imgSvrUrl + img_Path + '"';
						htmlTxt += 'alt="" />';
						htmlTxt +='<p class="p-caption">';
						htmlTxt += data.postList[i].moviePostImgDesc.replaceAll('\n', '<br>');
						htmlTxt +='</p></div>';
					}
					else if(data.postList[i].moviePostImgDivCd == 'MIK02'){ //스틸컷
						img_Path = nvl(data.postList[i].imgPath).posterFormat('_648');
						htmlTxt += '<div class="section">';
						htmlTxt += '<img src="'+ data.imgSvrUrl+ img_Path + '"';
						htmlTxt += 'alt="" />';
						htmlTxt += '<p class="p-caption">';
						htmlTxt += data.postList[i].moviePostImgDesc.replaceAll('\n', '<br>');
						htmlTxt += '</p></div>';
					}
					else if(data.postList[i].moviePostImgDivCd == 'MIK03'){ //예고편동영상
						img_Path = nvl(data.postList[i].imgPath).posterFormat('_648');
						htmlTxt += '<div class="section">';
						htmlTxt += '<video controls poster="'+ data.imgSvrUrl + img_Path + '"';
						htmlTxt += '<source src="'+data.postList[i].moviePostVodUrl +'" type="video/mp4" ></video></video>';
						htmlTxt +=  '<p class="p-caption">';
						htmlTxt += data.postList[i].moviePostImgDesc.replaceAll('\n', '<br>');
						htmlTxt += '</p></div>';

					}
					else if(data.postList[i].moviePostImgDivCd == 'MOVIEPOST'){ //내사진
						htmlTxt += '<div class="section">';
						htmlTxt += '<img src="'+ data.imgSvrUrl + data.postList[i].imgPath+ '"';
						htmlTxt += 'alt="" />';
						htmlTxt +=  '<p class="p-caption">';
						htmlTxt += data.postList[i].moviePostImgDesc.replaceAll('\n', '<br>');
						htmlTxt += '</p></div>';

					}
					else{
						htmlTxt += '<div class="section">';
						htmlTxt += '<img src="'+ data.imgSvrUrl + data.postList[i].imgPath+ '"';
						htmlTxt += 'alt="" />';
						htmlTxt +=  '<p class="p-caption">';
						htmlTxt += data.postList[i].moviePostImgDesc.replaceAll('\n', '<br>');
						htmlTxt += '</p></div>';

					}
				}

		 		$('.post-cont-area .section-area').html(htmlTxt);

			}

			//좋아요 아이콘
			if(detailInfo.likeYn == "Y"){ //좋아요 Y

				var txt="";

				txt += '<i title="좋아요 설정 함" class="iconset ico-like on"></i>';
				txt += ' ' + detailInfo.likeCnt;

				$('.count .btn').html(txt);

			}else{ //좋아요 N

				var txt ="";

				txt += '<i title="좋아요 설정 안함" class="iconset ico-like"></i>';
				txt += ' '+ detailInfo.likeCnt;

				$('.count .btn').html(txt);

			}

			//댓글
			fn_moviePostRlySearch('search', moviePostNo, viewDiv);

			//무비포스트 상세 메타태그 설정
			fn_setMetaTag( detailInfo, moviePostNo, metaTagImg );

		}
	});
}

function fn_setMetaTag( detailInfo, moviePostNo, metaTagImg ){

	var attr	= "";
	if( moviePostNo != null && moviePostNo != '' )				attr = '?moviePostNo=' + moviePostNo;

	var url		= location.pathname + attr;
	if( detailPopup != null && detailPopup.backScreen != '' )	url  = '/moviepost/all' + attr;

 	metaFormat = {
			'scnTitle'			: '(' + gfn_charToHtml(detailInfo.moviePostMovieTitle) + ') 무비포스트 상세 | 라이프씨어터,메가박스'
			, 'metaTagTitle'	: '(' + gfn_charToHtml(detailInfo.moviePostMovieTitle) + ') 무비포스트 상세'
			, 'metaTagDtls'		: '메가박스의 다양한 무비포스트를 확인해보세요.'
			, 'metaTagImg'		: metaTagImg
			, 'metaTagUrl'		: url
 	};

 	//URL 변경
 	history.replaceState( null, null, location.origin + url );

 	//메타태그 설정
 	settingMeta(metaFormat);
}
</script>

<!--################# 무비포스트 상세 레이어팝업으로 변경 ###########################  -->
	<section id="layer_post_detail" class="modal-layer2">
				<div class="wrap">
					<header class="layer-header">
						<h3 class="tit">무비포스트 상세</h3>
					</header>

					<div class="layer-con">

						<div class="post-detail">
							<div class="tit-area mb30">
								<p class="tit">
								</p>

								<div class="direct-link">
									<a id="bokdLinkBtn" data-no="" href="" style="display: none;" title="">예매하기</a>
								</div>
							</div>

							
							<div class="user-post-box mb40">
								<div class="user-post-case">
									<!-- post-top-area -->
									<div class="post-top-area">
										
										<div class="user-info">
											<p class="photo">
												<img src="../../../static/pc/images/movie/img-P-MO-PO0101-user-img01.png" alt="userid80**님의 무비포스트">
											</p>

											<p class="user-id">
												<a href="" title="ID"></a>
											</p>

											<p class="user-write-time"></p>
										</div>
										

										<div class="btn-util">
											<!-- 구독하기 전 -->
											<button type="button" class="button x-small gray-line" id="subscribe"></button>
										</div>

										<!-- post-funtion -->
										<div class="post-funtion">
											<div class="wrapper">
												<button type="button" class="btn-alert mp">옵션보기</button>
												<!--
												유저 일때
												<div class="balloon-space user">

												작성자 일때
												<div class="balloon-space writer">
												-->
												<div class="balloon-space mpost">
													<div class="balloon-cont">

													</div>
												</div>
												<!--// 말풍선 -->
											</div>
										</div>
										<!--// post-funtion -->
									</div>
									<!--// post-top-area -->

									<div class="post-cont-area">
										<!-- post 내용  -->
										<div class="section-area">
										</div>
										<!--// post 내용 -->
									</div>

									<!-- comment count -->
									<div class="count">
										<button type="button" class="btn" arti-no="">
											<i title="좋아요 설정 안함" class="iconset ico-like"></i>
										</button>

									<!-- 코멘트 등록 영역으로 이동 -->

									</div>
									<!--// comment count -->



								</div>
							</div>
							

							<!-- share -->
							<div class="btn-post-share">
<!-- 								<button type="button" title="카카오톡 공유하기" class="btn kakao">카카오톡</button> -->
								<button type="button" title="페이스북 공유하기" class="btn face">페이스북</button>
								<button type="button" title="밴드 공유하기" class="btn band">밴드</button>
								<button type="button" title="트위터 공유하기" class="btn twitter">트위터</button>
								<button type="button" title="링크 공유하기" class="btn link">링크공유</button>
							</div>
							<!--// share -->

						<!-- comment input -->
				<div class="comment-write mb40" id="rly">
					<div class="comment-util mb20">
						<p><span id="rlyCnt">댓글 </span></p>
						<input type="hidden" id="rlyCntTop" value="">
						<input type="hidden" id="hdnMoviePostNo" value="">
					</div>

					<div class="comment" id="input-comment">
						<textarea class="input-textarea" cols="5" rows="5" id="postRlyCn" title="댓글 입력" name="postRlyCn" maxlength="100"></textarea>

						<div class="comment-function">
							<p class="reset"><span class="text-count">0</span> / 100</p>
							<div class="btn">
								<button type="button" id="btnPostRly">등록</button>
							</div>
						</div>
					</div>
				</div>
				<!--// comment input-->

				<!-- comment list -->
				<div class="comment-list" id="commentList">

				</div>
				<!--// comment list -->

				<div class="mb50"></div>

						</div>
					</div>
					<button type="button" class="btn-modal-close2">레이어 닫기</button>
				</div>
			</section>
			<!-- // ################# 무비포스트 상세 레이어팝업으로 변경 ###########################  -->
<!-- //무비포스트 상세 레이어팝업 -->

<!--// 레이어 : 관람평 등록 -->
</div>
<div class="add-area infoContent" id="boxoInfoContent" style=""></div>
</div>
</div>
<div class="quick-area">
	<a href="" class="btn-go-top" title="top">top</a>
</div>

<!-- footer -->
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
<div class="bg-modal" ></div>
</body>
</html>