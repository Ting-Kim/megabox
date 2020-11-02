<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String name = request.getParameter("page");
	String title = "";
	String subtit = "";
	if (name == null) {
		title = "큐레이션소개";
	} else if (name == "film") {
		title = "필름소사이어티";
		subtit = "큐레이션";
	} else if (name == "classic") {
		title = "클래식소사이어티";
		subtit = "큐레이션";
	}
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
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<title><%=title%> | <%=subtit%> 라이프씨어터, 메가박스</title>
<link rel="stylesheet" href="<%=path%>/css/megabox.min.css" media="all" />
<script src="<%=path%>/js/megabox.js"></script>
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

		<!-- container -->
		<div class="container">
			<!-- page-tit-area -->
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="<%=path%>/movie.do" title="영화 페이지로 이동">영화</a>
						<a href="<%=path%>/curation.do" title="큐레이션 페이지로 이동">큐레이션</a>
					</div>


				</div>
			</div>
			<!--// page-tit-area -->
			<!-- contents -->
			<div id="contents">
				<!-- inner-wrap -->
				<div class="inner-wrap">
					<h2 class="tit">큐레이션</h2>
					<ul class="dot-list mb40">
						<li>감동을 주는 한 편의 영화가 행복한 삶에 영감이 되듯이,가치를 지닌 문화 콘텐트를 함께 나누고 소통하는
							공간을 창조하여 메가박스는 관객 여러분과 함께, 더 행복한 세상을 만들어가겠습니다.</li>
					</ul>
					<div class="tab-list mb30">
						<ul id="tab-list">
							<li <%if(page==null){ %> class="on" <%}%>><a href="<%=path%>/curation.do?page=" data-target="infoContent" data-cd="" title="큐레이션소개 탭으로 이동">큐레이션소개</a></li>
							<li <%if(page.equals("film")){ %>class="on"<%} %>><a href="<%=path%>/curation.do?page=film" data-target="filmContent" data-cd="film" title="필름소사이어티 탭으로 이동">필름소사이어티</a></li>
							<li <%if(page.equals("classic")){ %>class="on"<%} %>><a href="<%=path%>/curation.do?page=classic" data-target="classicContent" data-cd="classic" title="클래식소사이어티 탭으로 이동">클래식소사이어티</a></li>
						</ul>
					</div>
					<div class="qr-box content infoContent">
						<div class="qr-top-info">
							<p class="tit-pr">MEGABOX SOCIETY</p>
							<p>
								메가박스의 <span class="font-orange">특별콘텐트 큐레이션 브랜드</span>를 소개합니다.
							</p>
							<ul class="dot-list">
								<li>소사이어티는 메가박스가 추천하는 좋은영화, 명작 클래식 공연을 큐레이션하여 다양한 기획프로그램과
									멤버십 서비스를 제공합니다.</li>
								<li>소사이어티 멤버가 되세요! 메가박스 회원이라면 누구나 무료로 쉽게 가입하고 멤버만의 특별한 혜택을
									누릴 수 있습니다.</li>
							</ul>
						</div>
					</div>
					<div class="qr-decal content infoContent">
						<div class="film-con">
							<div class="con-headtext">
								<img src="<%=path%>/img/mem-sp-img01.png"
									alt="MEGABOX FILM SOCIETY">
								<p>
									<span>메가박스</span><strong>필름 소사이어티</strong>
								</p>
							</div>
							<div class="con-inner">
								<p>
									<strong>인생의 영화를 만나는 방법</strong> 필름소사이어티는 좋은 영화를 선별해 상영하고 깊이있는
									영화 연계<br /> 프로그램을 제공하는 메가박스의 좋은 영화 큐레이션 브랜드 입니다.
								</p>
								<div class="mebership-con">
									<p class="tit">FILM SOCIETY MEMBERSHIP</p>
									<ul class="decimal-list">
										<li>멤버십 회원 전용 온라인 10%할인 쿠폰 발행 <a
											href="#member_special_tool_layer01"
											class="btn-member-special-tool" title="클래식 및 기획전 할인 안내 팝업 보기"><i
												class="iconset ico-exclamation">아이콘</i></a>
										</li>
										<li>회원 전용 gv 및 시사회 초대</li>
									</ul>
								</div>
								<!--// mebership-con -->

								<ul class="dot-list gray">
									<li>상기 멤버십 서비스 혜택은 변경 및 종료 될 수 있습니다.</li>
									<li>할인율은 상이하오니 해당 이벤트 페이지에서 확인해 주세요.</li>
								</ul>

								<!-- 2019-03-05 : 레이어 이벤트 합침. 팝업 사이즈 추가 -->
								<div class="btn-group center pt23">
									<a href="#film_join" class="button orange btn-modal-open"
										w-data="850" h-data="670" style="display: none;"
										title="필름소사이어티 가입하기">가입하기</a> <a href="#"
										class="button orange regBtn" data-callback="fn_join"
										data-param='{"type":"film"}' title="필름소사이어티 가입하기">가입하기</a>
								</div>

								<!-- 레이어 : 클래식 및 기획전 할인 -->
								<div id="member_special_tool_layer01"
									class="member-special-tool-layer">
									<div class="wrap">
										<div class="tit-area">
											<p class="tit">멤버십 회원 전용 온라인 10%할인 쿠폰 발행</p>
										</div>

										<div class="cont-area">
											삶에 질문을 던지는 좋은 영화를 다양한 각도에서 조명하는 영화 연계 기획전 및 클래스를 진행합니다. <br />
											프로그램에 대한 자세한 사항은 추후 이벤트 페이지를 통해 고지됩니다.<br /> 할인 쿠폰 발행은 가입 기준
											익월 발행.
										</div>

										<button type="button" class="btn-close-tooltip">툴팁 닫기</button>
									</div>
								</div>
								<!--// 레이어 : 클래식 및 기획전 할인 -->

								<!-- 레이어 : 계단아래 만화방 무료 입장 -->
								<div id="member_special_tool_layer02"
									class="member-special-tool-layer">
									<div class="wrap">
										<div class="tit-area">
											<p class="tit">계단아래 만화방 무료 입장</p>
										</div>

										<div class="cont-area">
											상영작의 원작 만화와 화집은 물론,<br /> 그 외에 스크린이 탐낼만한 다양한 장르의 만화까지! <br />
											무궁한 만화의 시계를 만날 수 있는 계단아래 만화방을 방문해보세요

											<div class="box-gray v2 mt05">
												쿠폰:월 2회 / <span class="font-orange">매표소 혹은 티켓판매기</span>에서<br />
												출력 후 만화방 안내데스크 제시 <br /> (1일 1회 2시간 이용 가능)
											</div>

											<div class="mt05">
												※ 매월 첫째주 월요일 휴무<br /> ※ 회원가입 후 익일 쿠폰 자동발급
											</div>
										</div>

										<button type="button" class="btn-close-tooltip">툴팁 닫기</button>
									</div>
								</div>
							</div>
						</div>
						<!--// film-con -->

						<!-- classic-con -->
						<div class="classic-con">
							<div class="con-headtext">
								<img src="<%=path%>/img/mem-sp-img02.png"
									alt="MEGABOX CLASSIC SOCIETY">
								<p>
									<span>메가박스</span><strong>클래식 소사이어티</strong>
								</p>
							</div>

							<!-- 2019-06-28 : 수정 -->
							<div class="con-inner">
								<p>
									<strong>스크린으로 만나는 세계의 모든 클래식</strong> 클래식소사이어티는 전 세계의 클래식 명작을
									영화관에서 감상할 수 있는<br /> 메가박스의 클래식 공연 큐레이션 브랜드 입니다.
								</p>

								<div class="mebership-con">
									<p class="tit">CLASSIC SOCIETY MEMBERSHIP</p>
									<ul class="decimal-list">
										<li>멤버십 회원 전용 온라인 10% 할인 쿠폰 발행 <span>(클래식 라이브 제외)</span>
											<a href="#member_special_tool_layer03"
											class="btn-member-special-tool"
											title="멤버십 회원 전용 온라인 10% 할인 쿠폰 발행 (클래식 라이브 제외) 안내 팝업 보기">
												<i class="iconset ico-exclamation"></i>
										</a>
										</li>
										<li>클래식 소사이어티 프로그램 10% 할인 <span>(팝콘 클래식)</span> <a
											href="#member_special_tool_layer04"
											class="btn-member-special-tool"
											title="클래식 소사이어티 프로그램 10% 할인 (팝콘 클래식) 안내 팝업 보기"> <i
												class="iconset ico-exclamation"></i></a>
										</li>
										<li>SMS 미리알림 서비스</li>
									</ul>
								</div>

								<ul class="dot-list gray">
									<li>상기 멤버십 서비스 혜택은 변경 및 종료될 수 있습니다.</li>
									<li>할인율은 상이하오니 해당 이벤트 페이지에서 확인해 주세요.</li>
								</ul>

								<div class="btn-group">
									<a href="#classic_join" class="button btn-modal-open"
										w-data="850" h-data="650" style="display: none;"
										title="클래식소사이어티 가입하기">가입하기</a> <a href="#"
										class="button regBtn" data-param='{"type":"classic"}'
										title="클래식소사이어티 가입하기">가입하기</a>
								</div>

								<div id="member_special_tool_layer03"
									class="member-special-tool-layer">
									<div class="wrap">
										<div class="tit-area">
											<p class="tit">멤버십 회원 전용 온라인 10% 할인 쿠폰 발행</p>
										</div>

										<div class="cont-area">
											<div>
												<strong>뉴욕 메트로폴리탄 오페라</strong><br /> 최고의 아티스트들이 선보이는 뉴욕
												메트로폴리탄 극장의 오페라<br> - 클래식 라이브 제외<br> - 할인 쿠폰 발행은 가입
												기준 익월 발행
											</div>

											<div class="box-gray v2 mt05">
												<ul class="dot-list">
													<li><strong>상영일정</strong><br /> 화 19:00(센트럴,목동
														14:00), 토 14:00 (각 지점 동일)</li>
													<li><strong>상영지점</strong><br /> 코엑스, 센트럴, 목동, 킨텍스, 분당
													</li>
												</ul>
											</div>

											<div class="mt10">
												<strong>유니텔 오페라</strong><br /> 유럽 오페라의 정수를 만끽하는 오페라
											</div>

											<div class="box-gray v2 mt05">
												<ul class="dot-list">
													<li><strong>상영일정</strong><br /> 수 19:00(센트럴, 목동
														14:00), 일 14:00(각 지점 동일)</li>
													<li><strong>상영지점</strong><br /> 코엑스, 센트럴, 목동, 킨텍스, 분당
													</li>
													<li><strong>티켓가격</strong><br /> 일반 30,000원 / 청소년 및
														대학생 50% 할인<br /> (지점 별 티켓 가격이 상이 할 수 있습니다.)</li>
												</ul>
											</div>
										</div>

										<button type="button" class="btn-close-tooltip">툴팁 닫기</button>
									</div>
								</div>
								<!--// 레이어 : 멤버십 회원 전용 온라인 10% 할인 쿠폰 발행 -->

								<!-- 레이어 : 클래식 소사이어티 프로그램 10% 할인 -->
								<div id="member_special_tool_layer04"
									class="member-special-tool-layer">
									<div class="wrap">
										<div class="tit-area">
											<p class="tit">클래식 소사이어티 프로그램 10% 할인</p>
										</div>

										<div class="cont-area">
											<strong>팝콘 클래식</strong><br /> 더 가볍게, 더 즐겁게 영화관에서 처음 만나는 클래식
											미니팝콘과 함께 즐기는 렉쳐 콘서트<br /> ※ 상세 프로그램은 추후 홈페이지를 통해 확인하실 수
											있습니다.
										</div>

										<button type="button" class="btn-close-tooltip">툴팁 닫기</button>
									</div>
								</div>
								<!--// 레이어 : 클래식 소사이어티 프로그램 10% 할인 -->
							</div>
							<!--// 2019-06-28 : 수정 -->
						</div>
						<!--// classic-con -->
					</div>
					<!--// qr-decal -->

					<div class="qr-wrap content film filmContent"
						style="display: none;">
						<span class="badge-img"><img
							src="<%=path%>/img/img-film-society-badge.png"
							alt="MEGABOX FILM SOCIET"></span>

						<p class="tit">MEGABOX FILM SOCIETY</p>
						<div class="text">
							수많은 영화가 상영되는 오늘날 우리가 잊지 않아야 할 것은 한편의 영화가 가진 가치입니다.<br /> 위로를 건네고
							아름다움을 보여주며 진실을 밝히는 한 편의 영화.<br /> 이로써 누군가에게 인생의 영화가 될 그 한편의 영화를
							소개합니다.
						</div>
						<div class="text">
							소사이어티는 메가박스가 추천하는 좋은영화, 명작 클래식 공연을 큐레이션하여 다양한 기획프로그램과 멤버십 서비스를
							제공합니다. <br /> 소사이어티 멤버가 되세요! 메가박스 회원이라면 누구나 무료로 쉽게 가입하고 멤버만의 특별한
							혜택을 누릴 수 있습니다.
						</div>
					</div>




<c:if test="${page eq film}">
					<div class="movie-list-util mt40 content filmContent"
						style="display: block;">
						<!-- 검색결과 있을 때, 검색 하기 전  -->
						<div class="movie-sorting" id="sortFilmTab">
							<span><button type="button" class="btn on"
									sort-type="ticketing" data-ord="" data-cd="">전체</button></span> <span>
								<button type="button" class="btn" data-cd="MVCT01">일반콘텐트</button>
							</span> <span>
								<button type="button" class="btn" data-cd="MVCT10">굿즈패키지</button>
							</span> <span>
								<button type="button" class="btn" data-cd="MVCT11">GV</button>
							</span>

						</div>
					</div>
					<div class="movie-list content filmContent" style="display: block;">
						<ol class="list movieList">
							<c:if test="${not empty list }">
								<c:forEach var="dto" items="${list}">
									<li tabindex="0" class="no-img"><div
											class="movie-list-info">
											<p class="rank" style="">
												1<span class="ir">위</span>
											</p>
											<img src="<%=path%>/img/poster/${dto.name}.jpg" alt="사진"
												class="poster lozad">
											<div class="curation">
												<%
													if (page.equals("film")) {
												%>
												<p class="film">필름 소사이어티</p>
												<%
													} else if (page.equals("classic")) {
												%>
												<p class="classic">클래식 소사이어티</p>
												<%
													}
												%>
											</div>
											<div class="screen-type2">
												<p name="mxScreen" style="display: none">
													<img src="<%=path%>/img/mov_top_tag_mx.png" alt="mx">
												</p>
											</div>
											<div class="movie-score" style="opacity: 0;">
												<a href="#" class="wrap movieBtn" data-no="20026200"
													title="영화 상세보기">
													<div class="summary">${dto.summary}</div>
													<div class="my-score big">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">
																0<span class="ir">점</span>
															</p>
														</div>
													</div>
												</a>
											</div>
										</div>
										<div class="tit-area">
											<p class="movie-grade age-15">,</p>
											<p title="${dto.name}" class="tit">${dto.name}</p>
										</div>
										<div class="rate-date">
											<span class="rate">예매율 0%</span> <span class="date">개봉일
												${dto.date}</span>
										</div>
										<div class="btn-util">
											<button type="button" class="button btn-like"
												data-no="20026200">
												<i title="보고싶어 안함"
													class="iconset ico-heart-toggle-gray intrstType"></i><span>좋아요</span>
											</button>
												<p class="txt movieStat1" style="display: none">상영예정</p>
												<p class="txt movieStat2" style="display: none">7월 개봉예정</p>
												<p class="txt movieStat5" style="display: none">개봉예정</p>
												<p class="txt movieStat6" style="display: none">상영종료</p>
											<div class="case col-2 movieStat3" style="display: none">
												<a href="#" class="button purple bokdBtn" data-no="20026200"
													title="영화 예매하기">예매</a> <a href="#"
													class="button purple img splBtn" data-no="20026200"> <img
													src="https://www.megabox.co.kr/static/pc/images/common/btn/mov_list_db_btn.png"
													alt="dolby 버튼"></a>
											</div>
											<div class="case movieStat4" style="">
												<a href="#" class="button purple bokdBtn" data-no="20026200"
													title="영화 예매하기">예매</a>
											</div>
										</div>
										</li>
								</c:forEach>
							</c:if>
						</ol>
					</div>
					<div class="btn-more" id="addMovieDiv" style="display: none;">
						<button type="button" class="btn" id="btnFilmAddMovie">
							더보기 <i class="iconset ico-btn-more-arr"></i>
						</button>
					</div>
<!-- 필름 상영영화 없을떄 -->

					<c:if test="${empty list}">
						<div class="movie-list-no-result content filmContent" id="noDataDiv">
							<p>현재 상영중인 영화가 없습니다.</p>
						</div>
					</c:if>
						<h3 class="tit mt60 content filmContent">관련이벤트</h3>
						<div class="event-box content filmContent">
							<ul>
							<c:forEach var="dto" items="${event}">
								<li>
									<a href="#" class="eventBtn" data-netfunnel="N" title="이벤트 상세보기">
									<img src="${dto.img}" alt="${dto.event} 스페셜 예매 이벤트 ">
									</a>
								</li>
							</c:forEach>
							</ul>
						</div>
</c:if>



<c:if test="${page eq classic}">
					<div class="qr-wrap classic content classicContent">
						<span class="badge-img">
						<img src="<%=path%>/img/img-classic-society-badge.png" alt="MEGABOX CLASSIC SOCIETY"></span>
						<p class="tit">MEGABOX CLASSIC SOCIETY</p>
						<div class="text">
							영화관이 전세계의 오페라와 클래식 페스티벌을 생생하게 감상할 수 있는 공연장이 됩니다. <br />
							스크린으로 국경없는 문화생활을 만나보세요.<br />
							메가박스 클래식 소사이어티는 당신에게 클래식한 영화같은 순간들을 제안합니다.
						</div>
						<div class="text">
							누구나 쉽고 가볍게 클래식과 가까워 질 수 있습니다. <br />
							클래식의 울림과 감동이 여러분에게 전해지길 바랍니다.
						</div>
					</div>
					
					<div class="movie-list-util mt40 content classicContent"
						style="display: block;">
						<div class="movie-sorting" id="sortClassicTab">
							<span><button type="button" class="btn on"
									sort-type="ticketing" data-ord="" data-cd="">전체</button></span> <span>
								<button type="button" class="btn" data-cd="MVCT05">렉처</button>
							</span> <span>
								<button type="button" class="btn" data-cd="MVCT06">클래식콘텐트</button>
							</span> <span>
								<button type="button" class="btn" data-cd="MVCT08">스페셜콘텐트</button>
							</span>
						</div>
					</div>
					<!--// movie-list-util -->

					<div class="movie-list content classicContent">
						<ol class="list movieList">

						</ol>
					</div>
					
					<div class="btn-more" id="addMovieDiv" style="display: none;">
						<button type="button" class="btn" id="btnClassicAddMovie">
							더보기 <i class="iconset ico-btn-more-arr"></i>
						</button>
					</div>
				<c:if test="${empty list}">
					<div class="movie-list-no-result content classicContent" id="noDataDiv" style="display: none;">
						<p>현재 상영중인 영화가 없습니다.</p>
					</div>
				</c:if>

					<h3 class="tit mt60 content classicContent">관련이벤트</h3>
					<div class="event-box content classicContent" >
						<ul>
						<c:forEach var="dto" items="${event}">
							<li>
								<a href="#" class="eventBtn" data-netfunnel="N" title="이벤트 상세보기">
								<img src="${dto.img}" alt="${dto.event} 스페셜 예매 이벤트 ">
								</a>
							</li>
						</c:forEach>
						</ul>
					</div>
</c:if>
				</div>
			</div>
		</div>




		
		
		<div class="quick-area">
			<a href="" class="btn-go-top" title="top">top</a>
		</div>
		<footer id="footer">
			<div class="footer-top">
				<div class="inner-wrap">
					<ul class="fnb">
						<li><a href="<%=path%>/megaboxinfo.do" title="회사소개 페이지로 이동">회사소개</a></li>
						<li><a href="<%=path%>/recruit.do" title="인재채용 페이지로 이동">인재채용</a></li>
						<li><a href="<%=path%>/socialcontribution.do" title="사회공헌 페이지로 이동">사회공헌</a></li>
						<li><a href="<%=path%>/partner.do" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
						<li><a href="<%=path%>/support/terms.do" title="이용약관 페이지로 이동">이용약관</a></li>
						<li class="privacy"><a href="<%=path%>/support/privacy.do" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="https://jebo.joonganggroup.com/main.do"
							target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#layer_looking_theater" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
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
						<p class="copy">COPYRIGHT &copy; MegaboxJoongAng, Inc. All rights reserved</p>
					</div>

					<div class="footer-sns">
						<a href="https://twitter.com/megaboxon" target="_blank" title="MEGABOX 트위터 페이지로 이동">
							<i class="iconset ico-twitter">트위터</i></a>
						<a href="https://www.facebook.com/megaboxon" target="_blank" title="MEGABOX 페이스북 페이지로 이동">
							<i class="iconset ico-facebook">페이스북</i></a>
						<a href="http://instagram.com/megaboxon" target="_blank" title="MEGABOX 인스타그램 페이지로 이동">
							<i class="iconset ico-instagram">인스타그램</i></a>
						<a href="https://play.google.com/store/apps/details?id=com.megabox.mop" target="_blank" title="MEGABOX 구글플레이 페이지로 이동">
							<i class="iconset ico-googleplay">구글플레이</i></a>
						<a href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8" target="_blank" title="MEGABOX 앱스토어 페이지로 이동">
							<i class="iconset ico-appstore">앱스토어</i></a>
					</div>
				</div>
			</div>
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
	<div class="bg-modal" ></div>
</body>
</html>