<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%String path = request.getContextPath(); 
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
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!--><html lang="ko"><!--<![endif]-->
<head>ㄹ
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="shortcut icon" href="/static/pc/images/favicon.ico" />



		<title>고객센터 | 라이프씨어터, 메가박스</title>
	
     	
     		<link rel="stylesheet" href="/static/pc/dist/megabox.min.css" media="all" />
     		<!-- Global site tag (gtag.js) - Google Analytics -->
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
			<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
		    <script src="/static/pc/dist/megabox.api.min.js"></script>
			<script src="/static/mb/js/lozad.min.js"></script>
			<script src="/js/common/dist/megabox.common.min.js"></script>
     		<script src="/js/netfunnel/dist/megabox.netfunnel.min.js"></script>
			<script src="//cast.imp.joins.com/persona.js" async></script>
			
	
		
		<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="<%=path %>/css/megabox.min.css" media="all" />

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
                        <a href="<%=path%>/user-find.do" title="ID/PW 찾기 선택">ID/PW 찾기</a>
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
                        <li><a href="<%=path%>/"  title="당첨자발표">당첨자발표</a></li>
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
                    <li><a href="<%=path%>/"  title="당첨자발표">당첨자발표</a></li>
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
                    <li><a href="<%=path%>/support/lost.do" title="분실물문의">분실물문의</a></li>
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
</head>

<body>
	<form name="moveFrm" method="post">
		<input type="hidden" name="idx" />
		<input type="hidden" name="artiNo" />
		<input type="hidden" name="searchTxt" />
		<input type="hidden" name="currentPage" />
	</form>

	<!-- container -->
	<div class="container no-padding-bottom has-lnb">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
					<a href="#" title="고객센터 페이지로 이동">고객센터</a>
					<a href="#" title="고객센터 페이지로 이동">고객센터 홈</a>
				</div>

			</div>
		</div>

		<div class="inner-wrap">
			<div class="lnb-area">
				<nav id="lnb">
					<p class="tit"><a href="<%=path %>/support.do" title="고객센터">고객센터</a></p>
					<ul>
						<li><a href="<%=path %>/support.do" title="고객센터 홈">고객센터 홈</a></li>
						<li><a href="<%=path %>/support/faq.do" title="자주 묻는 질문">자주 묻는 질문</a></li>
						<li><a href="<%=path %>/support/notice.do" title="공지사항">공지사항</a></li>
						<li><a href="<%=path %>/support/inquiry.do" title="1:1문의">1:1문의</a></li>
						<li><a href="<%=path %>/support/rent.do" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li>
						<li><a href="<%=path %>/support/lostQna.do" title="분실물 문의">분실물 문의</a></li>
						<li><li class="on"><a href="<%=path %>/support/terms.do" title="이용약관">이용약관</a></li>
						<li><a href="<%=path %>/support/privacy.do" title="개인정보처리방침">개인정보처리방침</a></li>
						<li><a href="<%=path %>/support/screenrule.do" title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
					</ul>

					<!-- 고객센터 메뉴일때만 출력 -->
					<div class="left-customer-info">
						<p class="tit">
							메가박스 고객센터
							<span>Dream center</span>
						</p>
						<p class="tel">1544-0070</p>
						<p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
					</div>
				</nav>
			</div>
			
			
			
			엄예지
			
			
			
			<div id="contents">
				<h2 class="tit">이용약관</h2>

				<!-- input-search-area -->

						
					</div>
				</div>
				<!--// input-search-area -->


			</div>
		</div>
	</div>
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
                <li class="privacy"><a href="#" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
                <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
            </ul>

            <a href="#" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
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
    <script type="text/javascript">
		(function(w, d, a){
		    w.__beusablerumclient__ = {
		        load : function(src){
		            var b = d.createElement("script");
		            b.src = src; b.async=true; b.type = "text/javascript";
		            d.getElementsByTagName("head")[0].appendChild(b);
		        }
		    };w.__beusablerumclient__.load(a);
		})(window, document, "//rum.beusable.net/script/b200617e104748u388/bc4af2fa1e");
	</script>
	<div class="bg-modal" ></div>
</body>
</html>