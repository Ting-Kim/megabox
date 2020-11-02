<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%String path = request.getContextPath(); 

String group = request.getParameter("group");
String title = "";
if(group == null || group.equals('0') ){
	title="전체상품";
}else if(group.equalsIgnoreCase("1")){
	title="메가티켓";
}else if(group.equalsIgnoreCase("2")){
	title="메가찬스";
}else if(group.equalsIgnoreCase("3")){
	title="팝콘/음료/굿즈";
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
<!doctype html>
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!--><html lang="ko"><!--<![endif]-->
<head>
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
<!-- 		<div id="bodyContent"> -->
        

<form id="storeForm" name="storeForm" method="post">

</form>

<!-- container -->
<div class="container   no-padding-bottom has-lnb">

    <div class="page-util">
        <div class="inner-wrap">
            <div class="location">
                <span>Home</span>
                <a href="store.do?group=0" onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;" title="스토어">스토어</a>
            </div>

        </div>
    </div>

    <div id="storeMainList">
    <!-- 엄예지 코드 -->

    <div id="storeDtl">


<form id="loginForm" method="post">
    <input type="hidden" name="menuId">
    <input type="hidden" name="mappingId">
    <input type="hidden" name="rtnParam" value="cmbndKindNo:20001326">
</form>

<form id="storeDtlForm" method="post">
    <input type="hidden" name="btnId" id="btnId">
</form>

<input type="hidden" name="prdtExpoAmt" id="prdtExpoAmt" value="${dto.PRODUCT_CHARGE}">
<input type="hidden" name="prdtPurcCancelAbleAt" id="prdtPurcCancelAbleAt" value="Y">

<!-- 2019.08.12 hjchoi 수량제한 체크 -->
<input type="hidden" id="prdtTotSellLmtQty" name="prdtTotSellLmtQty" value="-1">   <!-- 상품_총_판매_제한_수량 -->
<input type="hidden" id="prdtPurc1DayLmtQty" name="prdtPurc1DayLmtQty" value="4">  <!-- 상품_구매_1_일_제한_수량 -->
<input type="hidden" id="prdtPurc1PsnLmtQty" name="prdtPurc1PsnLmtQty" value="4">  <!-- 상품_구매_1_사람_제한_수량 -->

<!-- contents -->
<div id="contents" class="">
    <div class="inner-wrap">

        <!-- store-view -->
        <div class="store-view">
            <h2 class="tit">${dto.PRODUCT_NAME}
                
            </h2>
            <div class="sub-info">${dto.DESCRIPTION}</p>
                    <p class="date">
                        <span>판매기간</span>  <em>2020.04.29 ~ 2020.09.18</em>
                    </p>          
            </div>

            <!-- box-store-view -->
            <div class="box-store-view">
                         
                 <% %>
            
                <div class="left">
                    <div class="img">
				
                        <p>

          <c:if test = "${dto.SEQ_PRODUCT lt 10}">
			 <img src="/megabox/img/storeimg/${dto.SEQ_PRODUCT}.jpg" alt ="" onerror="noImg(this);" />
		 		</c:if>
		 
		 	 <c:if test = "${dto.SEQ_PRODUCT gt 9}">
		 		<img src="/megabox/img/storeimg/${dto.SEQ_PRODUCT}.png" alt ="" onerror="noImg(this);" />
				 </c:if> 
         			  </p>
              
                    </div>

                    <p class="origin">    
                    </p>
                </div>

                <!-- right -->
                <div class="right">
                    <!-- goods-info -->
                    <div class="goods-info">
                        <div class="line">
                            <p class="tit"><span class="line32">사용극장</span></p>
                            <div class="cont">                                   
                                        <a href="#" class="a-link" name="brchList">사용가능극장</a>
                                    <p class="store_alert">ㅋㅋㅋ생각좀 해서 써보도록하지</p>
                                
                            </div>
                        </div>

                        <div class="line">
                            <p class="tit">유효기간</p>
								<div class="cont">
                                <p class="txt">   2020.09.19 ~ 2020.09.20 사용 가능 </p><p class="txt min">본 티켓은 9월 19일(토)과 20일(일) 모두 관람 가능한 티켓입니다.</p>      
                                <p></p>
                            </div>
                        </div>
                            <div class="line">
                                <p class="tit">판매수량</p>

                                <div class="cont">
                                    <div class="sale-count">
                    					  <span> 1회 4개 구매가능	</span>      <span> 1인 4개 구매가능	</span>
                                
                                    </div>
                                </div>
                            </div>
                        <div class="line">
                            
                                <p class="tit">구매 후 취소</p>

                                <div class="cont">
                                    <p class="txt">   2020.09.09 이내 취소 가능하며, 부분취소는 불가능합니다. </p>
									<p class="txt min">2020년 9월 10일 이전 취소 시 수수료 없이 환불 가능합니다.</p>
                                </div>
                        </div>
                    </div>
                    <!--// goods-info -->

                    <!--
                        판매종료일때는 각 select, button 에 disabled 처리
                    -->
                    <!-- type -->
                    <div class="type">
                        <!-- 수량 금액 일 때 -->

                        <!--// 수량 금액 일 때 -->

<!-- 기프트카드  -->

                        <div class="receipt">
                            <div class="line">
                                <p class="tit"><span class="line32">수량/금액</span></p>

                                <div class="cont">
                                    <button type="button" class="btn minus" title="수량감소" onclick="minus();">
                                  
                                    <i class="iconset ico-minus"></i></button>
                                    <input type="text" title="수량 입력" class="input-text" readonly="readonly" value="1">
                                    
                                    
                                    
                                    <button type="button" class="btn plus" title="수량증가" onclick="plus();">
                                    <i class="iconset ico-plus"></i></button>
                                    
                                    <script>   
                                    var input_d = $(".line .cont input[type='text']");
                                    
                                    function minus(){
               
                                        var input_num = Number(input_d.val());
                                       
                                    	input_d.val(input_num-1);                    	
                                    	if (input_num<2) {
                                    		input_d.val(1);          
										}
	
                                    	 var preAmt =Number($('#prdtExpoAmt').val());
                                     	var tot_amt2 =String(preAmt*Number(input_d.val())) ;
                                     	$('#prdtSumAmt').html(tot_amt2);
                                         
                                    }
                  
                                    function plus(){
                               
                                        var input_num = Number(input_d.val());                  
                                 	  	input_d.val(input_num+1);
                                   	
                                    	if (input_num>3) {
                                    		input_d.val(4);
										}
                                    	
                                    	 var preAmt =Number($('#prdtExpoAmt').val());
                                     	var tot_amt2 =String(preAmt*Number(input_d.val())) ;
                                     	$('#prdtSumAmt').html(tot_amt2);
                                         
                                    }
                                    
                                    
                                   
                                    </script>
                                  
                                    <div class="money">
                                    
                                        <em name = "payment" id="prdtSumAmt">${dto.PRODUCT_CHARGE} </em>		    <span>원</span>	
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--// type -->
                    
         <%--            <%=path %>/payment.do?product=${dto.PRODUCT_NAME}&payment="+$('#payment').html() --%>
                    
                    
                    <div class="btn-group">
                  <!--  <a href="#" id="btnGift" class="button large" w-data="500" h-data="410" title="선물">선물</a> -->
                           
                           
                           <!-- 로그인을 해야 구매할 수 있음 -->
                           
                           <c:if test="${empty sessionScope.auth}">
            			<div class="before">
            			   <a href="javascript:void(0)" id="login" class="button purple large" w-data="500" h-data="410" title="구매">구매</a>
            			</div>
  						 </c:if>
                  
                   <c:if test="${not empty sessionScope.auth}">
            			<div class="before">
            			    <button  id="btnPurc" class="button purple large" w-data="500" h-data="410" title="구매">구매</button>  
            			</div>
  						 </c:if>
                               
 
                    </div>
                    
    		
                    		<script>              
							$('#btnPurc').on('click', function(){
								var count = Number( $(".line .cont input[type='text']").val());
								var sum= $('#prdtSumAmt').html();
								console.log(sum);
 
                	  	 window.location.href=" <%=path %>/payment.do?seq_product=${dto.SEQ_PRODUCT}&product=${dto.PRODUCT_NAME}&count="+count+"&payment="+$('#prdtSumAmt').html();
                	   
                 		  }) 
                  			  </script>
                  			  
                  			  
                  			  
                  			  
                </div>
                <!--// right -->
            </div>
            <!--// box-store-view -->
        </div>
        <!--// store-view -->

        <!-- 레이어 : 극장확인 -->
        <section id="layer_chk01" class="modal-layer"> </section>
        <!--// 레이어 : 극장확인 -->

        <!-- 레이어 : 지점확인 -->
        <section id="layer_chk02" class="modal-layer"></section>
        <!--// 레이어 : 지점확인 -->

        <!-- 레이어 : 취소불가 -->
        <section id="layer_chk03" class="modal-layer"></section>
        <!--// 레이어 : 지점확인 -->
            <!-- box-pulldown -->
            <div class="box-pulldown">
                <div class="tit">                   
                </div>

                <div class="cont">         
                        <p>본 티켓은 관람일 하루 전까지 예매 취소 및 환불 신청이 가능하며, 관람 당일 취소 및 환불은 불가합니다.<br>
&nbsp;</p>

<p>2020년 9월 10일 이전&nbsp;취소 시 수수료 없이 환불 가능합니다.<br>
&nbsp;</p>

<p>2020년 9월 9일 이후 취소 시 일자별 수수료가 발생되며, 환불 처리에 7일(영업일 기준) 이상의 시간이 소요될 수 있습니다.<br>
<br>
2020년 9월 9일까지 : 취소 수수료 없음<br>
2020년 9월 10일 ~ 12일&nbsp;: 티켓 금액의 10%<br>
2020년 9월 13일 ~ 16일 : 티켓 금액의 20%<br>
2020년 9월 17일 ~ 18일 : 티켓 금액의 30%<br>
2020년 9월 19일 이후 : 취소 및 환불 불가<br>
&nbsp;</p>

<p>구매한 관람권은 일괄 환불만 가능하며, 부분 환불 불가합니다.<br>
(예, 2매 이상 한번에 구매 시 모든 관람권을 일괄 취소해야 하며, 낱장의 취소는 불가합니다.)<br>
&nbsp;</p>

<p>개인 사정이나 변심으로 인한 취소 및 변경 시에도 예매 취소와 동일한 취소 규정이 적용됩니다.<br>
<br>
※ 환불 문의/접수처: 1544-0070</p>
                    
                </div>
            </div>
            <!--// box-pulldown -->
            <!-- box-pulldown -->
            <div class="box-pulldown on">
                <div class="tit"> 
<script>         
$(document).ready(function()
 {
  $("#content1").css("display",'none');
  $("#content2").css("display",'none');
 
  });
  var toggle = 0;
  
  function btn1(){
	  if(toggle==0){ $("#content1").css("display",'block'); toggle =1;}
	  else{ $("#content1").css("display",'none'); toggle= 0;}
  }
  
  function btn2(){
	  if(toggle==0){ $("#content2").css("display",'block'); toggle =1;}
	  else{ $("#content2").css("display",'none'); toggle= 0;}
  }
  
  
</script>


<button id="btn1" class="btn-toggle" onclick="btn1();">구매 후 취소 <i class="iconset ico-arr-toggle-down">내용보기</i></button>
 <div id="content1">

                    
                        <p>본 티켓은 관람일 하루 전까지 예매 취소 및 환불 신청이 가능하며, 관람 당일 취소 및 환불은 불가합니다.<br>
&nbsp;</p>

<p>2020년 9월 10일 이전&nbsp;취소 시 수수료 없이 환불 가능합니다.<br>
&nbsp;</p>

<p>2020년 9월 9일 이후 취소 시 일자별 수수료가 발생되며, 환불 처리에 7일(영업일 기준) 이상의 시간이 소요될 수 있습니다.<br>
<br>
2020년 9월 9일까지 : 취소 수수료 없음<br>
2020년 9월 10일 ~ 12일&nbsp;: 티켓 금액의 10%<br>
2020년 9월 13일 ~ 16일 : 티켓 금액의 20%<br>
2020년 9월 17일 ~ 18일 : 티켓 금액의 30%<br>
2020년 9월 19일 이후 : 취소 및 환불 불가<br>
&nbsp;</p>

<p>구매한 관람권은 일괄 환불만 가능하며, 부분 환불 불가합니다.<br>
(예, 2매 이상 한번에 구매 시 모든 관람권을 일괄 취소해야 하며, 낱장의 취소는 불가합니다.)<br>
&nbsp;</p>

<p>개인 사정이나 변심으로 인한 취소 및 변경 시에도 예매 취소와 동일한 취소 규정이 적용됩니다.<br>
<br>
※ 환불 문의/접수처: 1544-0070</p>
                    

  </div>
<button id="btn2" class="btn-toggle" onclick="btn2();">상품 이용 안내 <i class="iconset ico-arr-toggle-down">내용보기</i></button>

  <!-- <i class="iconset ico-arr-toggle-down">내용보기</i> -->

  <div id="content2">

                  
본 티켓은 관람 당일 티켓부스에서 예매내역 및 본인 확인(신분증 지참) 후 입장 팔찌로 수령 가능합니다.</p>

<p>입장 팔찌를 반드시 착용한 상태로 입장하셔야 하며, 양일 중 하루를 타인에게 양도할 수 없습니다.</p>

<p>메가박스 관람권은 상품 구매 시 등록하신 연락처로 2020년 9월 21일 개별 발송되며, 관람권의 유효기간은 2021년 6월 30일까지입니다.</p>

<p>티켓의 임의적인 상거래는 불법행위로, 양도받거나 개인적인 경로를 통해 구매/취득한 티켓은 취소 및 환불이 불가합니다.&nbsp;</p>

<p>이로 인해 발생한 피해의 책임은 전적으로 당사자에게 있으며, 공연 주최/주관/예매처는 어떠한 책임도 지지 않음을 알려드립니다.&nbsp;<br>
<br>
<strong>[입장 및 관람 안내]</strong></p>

<p>본 공연은 현장 선착순 입장이며, 안전을 위해 밤샘 및 노숙행위를 엄격히 제한하고 있습니다.</p>

<p>자세한 입장 시간 및 공연 시간은 추후에 공개되는 타임테이블을 통해 확인해 주시기 바랍니다.</p>

<p>공연 중 아티스트 및 관객의 모습을 담은 공식 포토 및 영상이 촬영되며, 촬영된 장면은 홍보 자료로 활용될 예정입니다.</p>

<p>소지품을 분실하셨을 경우 티켓 부스로 문의해주시기 바라며, 페스티벌 현장에서 분실물을 습득하셨을 경우 티켓부스 및 가까운 진행 요원에게 전달해주시기 바랍니다.</p>

<p>응급상황이 발생할 경우 가까운 진행 요원에게 문의해주시기 바라며, 진행 요원의 안내에 협조해주시기 바랍니다.</p>

<p>본 페스티벌은 야외에서 진행되며, 우천 시에는 우비와 소형 및 접이식 우산을 지참하시기 바랍니다.<br>
<br>
<strong>[반입 불가 품목]</strong></p>

<p>KB RAPBEAT FESTIVAL 2020 각 스테이지 내 입장 시 물품 검사가 진행될 예정이오니 반입 불가 품목 및 가방을 반드시 사전에 확인해주시기 바랍니다.</p>

<p>페스티벌의 원활한 운영 및 관람객 안전을 위해 백팩, 캐리어, 더플백 등 가로 36cm×세로36cm×폭16cm 이상의 모든 가방은 스테이지 내 반입이 금지됩니다. 이를 소지하고 계실 경우 물품보관소에 보관해주시기 바랍니다.</p>

<p>KB RAPBEAT FESTIVAL 2020 각 스테이지 내로 500ml 이하의 생수병 외 외부 음식물은 반입이 금지되어 있습니다.</p>

<p>공연 중 다른 사람의 관람을 방해하는 행동(호루라기, 개인 방송 촬영 등)은 진행 요원에 의해 제재 받을 수 있습니다.</p>

<p>DSLR, 고배율 줌렌즈, 캠코더 등의 전문 촬영 및 녹음 장비는 스테이지 내 반입이 금지되어 있으며, 전문 장비를 활용한 촬영 및 녹취 또한 금지합니다.</p>

<p>관람객 안전을 위해 장우산 반입이 불가합니다. 우천 시 작은 사이즈의 우산이나 접이식 우산을 사용해주시기 바랍니다.<br>
<br>
<strong>[KB RAPBEAT FESTIVAL 2020 공식계정]</strong><br>
<a href="https://www.instagram.com/rapbeatfestival"><span style="color:#3498db;">▶인스타그램 바로가기◀</span></a><br>
<a href="https://www.facebook.com/RAPBEATFESTIVAL"><span style="color:#3498db;">▶페이스북 바로가기◀</span></a><br>
<a href="https://vt.tiktok.com/htb9eL"><span style="color:#3498db;">▶틱톡 바로가기◀</span></a><br>
<br>
자세한 사항은 이벤트 페이지를 참고바랍니다.</p>

  </div>
  
                                 
                </div>                
            </div>
            <!--// box-pulldown -->
    </div>
</div>
<!--// contents --></div>
    
<!--     엄예지 코드 끝 -->
    </div>



</div>
<!--// container -->


<!-- 		</div> -->
        
>

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
                        <li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <BR>12자리를 입력해주세요.(Yes24, 네이버, 맥스무비, 인터파크, SKT, KT, 다음)</li>
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





<div class="quick-area" display ="block">
	<a href="" class="btn-go-top" title="top" style="position: absolute;">top</a>
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
<!--// footer -->

<!-- 모바일 때만 출력 -->
<div class="go-mobile">
	<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i class="iconset ico-go-mobile"></i></a>
</div>
    </div>
    <form id="mainForm">
    </form>
 <div class="bg-modal" ></div>  
</body>
</html>