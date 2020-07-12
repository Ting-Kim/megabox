<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!--><html lang="ko"><!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="shortcut icon" href="/static/pc/images/favicon.ico" />

    
	




		<title>(강남)극장정보 | 라이프씨어터, 메가박스</title>
		<meta property="name"			id="metaTagTitle"	content="극장정보 &lt; 극장"/>
		<meta property="description"	id="metaTagDtls"	content="반갑습니다. 메가박스 (강남)점 입니다."/>
		<meta property="keywords"		id="metaTagKeyword"	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox"/>

		<meta property="fb:app_id" 		id="fbAppId" 	content="546913502790694"/>
		

		<meta property="og:site_name" 	id="fbSiteName"	content="메가박스"/>
		<meta property="og:type" 		id="fbType"		content="movie"/>
		<meta property="og:url" 		id="fbUrl"		content="https://www.megabox.co.kr/theater?brchNo=1372" />
		<meta property="og:title" 		id="fbTitle"	content="극장정보 &lt; 극장" />
		<meta property="og:description"	id="fbDtls"		content="반갑습니다. 메가박스 (강남)점 입니다."/>
		<meta property="og:image" 		id="fbImg"		content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />
		


	
	
     	
     		<link rel="stylesheet" href="../static/pc/dist/megabox.min.css" media="all" />
     		<!-- Global site tag (gtag.js) - Google Analytics -->
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
			<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(argumen\ts);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
		    <script src="/static/pc/dist/megabox.api.min.js"></script>
			<script src="/static/mb/js/lozad.min.js"></script>
			<script src="/js/common/dist/megabox.common.min.js"></script>
     		<script src="/js/netfunnel/dist/megabox.netfunnel.min.js"></script>
			<script src="//cast.imp.joins.com/persona.js" async></script>
		
</head>

<body>

    <div class="skip" title="스킵 네비게이션">
        <a href="#contents" title="본문 바로가기">본문 바로가기</a>
        <a href="#footer" title="푸터 바로가기">푸터 바로가기</a>
    </div>

    <div class="body-wrap">

       








<!-- <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script> -->
<script src="/static/mb/js/hmac-sha256.js"></script>
<script src="/static/mb/js/enc-base64-min.js"></script>


<form id="loginForm">
	<input type='hidden' name='redisKey' value='' />
	<input type='hidden' name='menuId' value='' />
	<input type='hidden' name='mappingId' value='' />
	<input type='hidden' name='rtnParam' value='' />
	<input type='hidden' name='certType' value='' />
	<input type='hidden' name='preUrl' value='' />

	<!-- 좌석도 로그인 프로세스 여부PARAM-->
	<input type='hidden' name='bokdLoginAt' value='' />
	<input type='hidden' name='bokdLoginParam' value='' />

	<input type='hidden' name='nonMbCertRedisKey' value='' />
	<input type='hidden' name='nonMbCertedMblpNo' value='' />

	<input type='hidden' name='reloadYn' value='' />
	<input type='hidden' name='validDataRevisnYn' value='N' />

</form>


<!-- 로그인 레이어팝업 시작 -->
<!-- 화면ID  M-ME-LO-01 -->
<!-- 화면ID  M-ME-CC-01 -->
<div style="display:none;"><a id="loginPupupATag" href="#layer_login_select" class="button active btn-modal-open" w-data="850" h-data="484"></a></div>

	<section id="layer_login_select" class="modal-layer" style="z-index: 501;"><a href="#" class="focus" title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
		<div class="wrap" style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
			<header class="layer-header">
				<h3 class="tit">로그인</h3>
			</header>

			<div class="layer-con" style="height: 511px;">

				<div class="tab-list tab-layer">
					<ul>
						<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원 로그인<!--회원 로그인--></a></li>
						<li><a href="#login_tab_02" title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
					</ul>
				</div>

				<!-- tab-cont-wrap -->
				<div class="tab-cont-wrap">
					<!-- tab 회원 로그인 -->
					<div id="login_tab_01" class="tab-cont on"><a href="" class="ir" title="로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">
									<div class="login-input-area">
										<input autocomplete="off" id="ibxLoginId" maxlength="20" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim"><!--아이디--><!--아이디를 입력하세요-->
										<input autocomplete="off" id="ibxLoginPwd" maxlength="20" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15"><!--비밀번호--><!--비밀번호를 입력하세요-->
										<div class="alert"></div>

										<!-- chk-util -->
										<div class="chk-util">
											<div class="left">
												<input id="chkIdSave" type="checkbox"> <label for="chkIdSave">아이디 저장<!--아이디 저장--></label>
											</div>

											<div class="right">
												<div class="hp-ad">
										      <a href="https://www.sepay.org/spm/join?regSiteCode=XF&ctgCode=1&subCode=1" title="휴대폰 간편 로그인 선택" target="_blank" title="새창 열림"><span>휴대폰 간편로그인<!--휴대폰 간편로그인--></span> <em>광고<!--광고--></em></a>
												</div>
											</div>
										</div>
										<!--// chk-util -->

										<button id="btnLogin" type="button" class="button purple large btn-login">로그인<!--로그인--></button>

										<div class="link">
											<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
											<a href="/join" title="회원가입 선택">회원가입<!--회원가입--></a>
											<a href="/on/oh/ohg/MbLogin/viewNonMbLogin.rest" title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
										</div>

										<div class="sns-login">
											<a href="javaScript:void(0)" lnkgTy="FACEBOOK" title="페이스북으로 로그인 선택"><img src="../../../static/pc/images/member/ico-facebook.png"  alt="페이스북"><!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a>
											<a href="javaScript:void(0)" lnkgTy="NAVER"    title="네이버로 로그인 선택"><img src="../../../static/pc/images/member/ico-naver.png"     alt="네이버"><!--네이버-->   네이버로 로그인<!--네이버로 로그인--></a>
											<a href="javaScript:void(0)" lnkgTy="KAKAO"    title="카카오톡으로 로그인 선택" ><img src="../../../static/pc/images/member/ico-kakao.png"    alt="카카오톡"><!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a>
											<a href="javaScript:void(0)" lnkgTy="PAYCO"    title="페이코로 로그인 선택"><img src="../../../static/pc/images/member/ico-payco.png"     alt="페이코"><!--페이코-->   페이코로 로그인<!--페이코로 로그인--></a>
										</div>
									</div>
								</div>

								<div class="col right">
									<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw"></div>
								</div>
							</div>
							<!--// col-wrap -->
						</div>
					</div>
					<!--// tab 회원 로그인 -->

					<!-- tab 비회원 로그인 -->
					<div id="login_tab_02" class="tab-cont"><a href="" class="ir" title="비회원 로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">

									<div class="no-member-login-table">
										<table summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
											<caption>이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표--></caption>
											<colgroup>
												<col style="width:110px;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">
														<label for="ibxNonMbNm">이름<!--이름--></label>
													</th>
													<td>
														<input maxlength="20" id="ibxNonMbNm" type="text" placeholder="이름" class="input-text"><!--이름-->
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
													</th>
													<td>
														<input maxlength="6" id="ibxNonMbByymmdd" type="text" placeholder="생년월일 앞6자리" class="input-text"><!--주민번호 앞 6자리-->
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
													</th>
													<td>
														<div class="hp-input">
															<input maxlength="11" id="ibxNonMbTelno" type="text" placeholder="- 없이 입력" class="input-text"><!--- 없이 입력-->
															<button id="nonMbCertNoSend" type="button" class="button gray" disabled="disabled">인증요청<!--인증요청--></button>
														</div>
														<div id="mblpInput-error-text" class="alert" ></div>
													</td>
												</tr>
												<tr id="nonMbCertRow">
													<th scope="row">
														<label for="mblpCharCertNo">인증번호<!--인증번호--></label>
													</th>
													<td>
														<div class="chk-num">
															<div class="line">
																<input maxlength="4" id="mblpCharCertNo" type="text" class="input-text">

																<div class="time-limit" id="timer">
																	3:00
																</div>
															</div>

															<button id="btnMblpCharCert" type="button" class="button purple" disabled="disabled">확인<!--확인--></button>
														</div>
														<div id="nonMbCert-error-text" class="alert"></div>
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbPwd">비밀번호</label><!--비밀번호-->
													</th>
													<td>
														<input  maxlength="4" id="ibxNonMbPwd" type="password" placeholder="비밀번호(숫자 4자리)" class="input-text"><!--비밀번호(숫자 4자리)-->
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
													</th>
													<td>
														<input maxlength="4" id="ibxNonMbPwdConfirm" type="password" placeholder="비밀번호(숫자 4자리) 확인" class="input-text"><!--비밀번호(숫자 4자리) 확인-->
														<div id="nonMbPwdErrText" class="alert"></div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div class="col right">

									<div class="no-member-privacy-rule">
										<p class="tit">비회원예매 개인정보 처리방침<!--비회원예매 개인정보 처리방침--></p>

										<div class="cont">
											<dl>
												<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd><!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
											</dl>

											<div class="btn-agree">
												<input type="radio"  id="chkNonMbBokdPersonInfoProcTrue" name="chkNonMbBokdPersonInfoProc">
												<label for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label>

												<input type="radio" id="chkNonMbBokdPersonInfoProcFalse" name="chkNonMbBokdPersonInfoProc" class="ml20">
												<label for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
											</div>

											<ul class="dot-list gblue mt20">
												<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.--></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--// col-wrap -->

							<div class="btn-group">
								<button id="btnChkNonMbLogin" type="button" class="button purple">확인</button>
								<a id="aNonMbLogin" href="#layer_no_member_chk" class="button purple btn-modal-open" w-data='600' h-data='320' style="display: none;"></a>
							</div>
						</div>
					</div>
					<!--// tab 비회원 로그인 -->
				</div>
				<!--// tab-cont-wrap -->
			</div>

			<button type="button" class="btn-modal-close">레이어 닫기<!--레이어 닫기--></button>
		</div>
	</section>

	<section id="layer_no_member_chk" class="modal-layer">
		<div class="wrap">
			<header class="layer-header">
				<h3 class="tit">알림</h3>
			</header>

			<div class="layer-con">
				<p>티켓 발권을 위한 입력정보를 확인해 주세요.</p>

				<div class="table-wrap v1">
					<table class="data-table" summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
						<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
						<colgroup>
							<col style="width:80px;" />
							<col />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="a-l">이름</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row" class="a-l">생년월일</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row" class="a-l">휴대폰번호</th>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="btn-group-fixed">
				<button type="button" class="button close-layer small">취소</button>
				<button id="btnNonMbLogin" type="button" class="button purple small">확인</button>
			</div>

			<button id="btnNonMbModalClose" type="button" class="btn-modal-close">레이어 닫기</button>
		</div>
	</section>




<!-- 메인에만 광고영역 노출 -->

<!-- 메인 영화에만 광고영역 노출 -->


<!-- header -->
<header id="header" >
    <h1 class="ci"><a href="/" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>

	<!-- 브라우저 다운로드 -->
    

  
	<!-- ie-update : ie 9 이하 일때만 출력 -->
	<div class="ie-update">
		<div class="dimd"></div>
		<div class="wrap">
			<p class="tit">
				<img src="../../../static/pc/images/ie/txt-update.png" alt="megabox 홈페이지는 internet explrer10이상에서 최적화된 서비스 이용이 가능합니다. ie9 이하에서는 예매가 정상적으로 진행되지 않을 수 있으니, 브라우저를 업그레이드하시거나 다른 예매수단을 이용해 주세요!" />
			</p>

			<div class="box">
				<div class="col">
					<p class="txt">브라우저를 최신 버전으로<br>업그레이드 해보세요!</p>

					<div class="link">
						<a href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx" title="internet explorer 새 버전 다운로드" target="_blank">
							<img src="../../../static/pc/images/ie/btn-ie.png" alt="internet explorer 새 버전 다운로드" />
						</a>
					</div>

					<div class="link">
						<a href="http://www.google.com/chrome?hl=ko" title="chrome 다운로드" target="_blank">
							<img src="../../../static/pc/images/ie/btn-chrome.png" alt="chrome 다운로드">
						</a>
					</div>
				</div>

				<div class="col">
					<p class="txt">megabox 모바일 app을<br>이용해 보세요!</p>

					<div class="link">
						<a href="https://itunes.apple.com/us/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8" title="available on the app store" target="_blank">
							<img  src="../../../static/pc/images/ie/btn-appstore.png" alt="available on the app store">
						</a>
					</div>

					<div class="link">
						<a href="https://play.google.com/store/apps/details?id=com.megabox.mop&amp;hl=ko" title="available on the google play" target="_blank">
							<img src="../../../static/pc/images/ie/btn-google.png" alt="available on the google play">
						</a>
					</div>
				</div>
			</div>

			<div class="close-chk">
				<input type="checkbox" id="one_month_no_update" />
				<label for="one_month_no_update" class="ml05">한 달 동안 이 창을 열지 않음</label>

				<button type="button" class="closeDl button purple x-small ml20">닫기</button>
			</div>
		</div>
	</div>
	<!--// ie-update : ie 9 이하 일때만 출력 -->
    <!--// 브라우저 다운로드 -->

    <!-- topGnb -->
    



	<!-- 2019-04-15 마크업 수정 : 고객요청  -->
    <div class="util-area">
        <div class="left-link">
            <a href="/benefit/viplounge" 	title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="/benefit/membership"	title="멤버십">멤버십</a>
            <a href="/support"				title="고객센터">고객센터</a>
        </div>

        <div class="right-link">
            <!-- 로그인전 -->
            <div class="before" style="display:none">
                <a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a>
                <a href="/join" title="회원가입">회원가입</a>
            </div>

            <!-- 로그인후 -->
            <div class="after" style="display:none">
                <a href="/on/oh/ohg/MbLogin/mbLogout.do" class="" title="로그아웃">로그아웃</a>
                <a href="" class="notice" title="알림">알림</a>

                <!-- layer-header-notice -->
				<div class="layer-header-notice">
					<div class="notice-wrap">
						<p class="tit-notice">알림함</p>

						<div class="count">
							<p class="left">전체 <em class="totalCnt">0</em> 건</p>

							<p class="right">* 최근 30일 내역만 노출됩니다.</p>
						</div>

						<!-- scroll -->
						<div class="scroll m-scroll">
							<ul class="list">
								<li class="no-list">
									알림 내역이 없습니다.
								</li>
							</ul>
						</div>
						<div class="notice-list-more">
							<button type="button" class="button btn-more-notice-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
						</div>
						<!--// scroll -->
						<button type="button" class="btn-close-header-notice">알림 닫기</button>
					</div>
					<!--// notice-wrap -->
				<!--// layer-header-notice -->
				</div>

            </div>

            <a href="/booking">빠른예매</a>
        </div>
    </div>
    <!--// 2019-04-15 마크업 수정 : 고객요청  -->

    <div class="link-area">
        <a href="#layer_sitemap" 		class="header-open-layer btn-layer-sitemap"	title="사이트맵">사이트맵</a>
        <a href="#layer_header_search" 	class="header-open-layer btn-layer-search"	title="검색">검색</a>
        <a href="/booking/timetable" 	class="link-ticket" 						title="상영시간표">상영시간표</a>
        <a href="#layer_mymega" 		class="header-open-layer btn-layer-mymega" 	title="나의 메가박스">나의 메가박스</a>
    </div>

    <!-- gnb -->
    <!--
        2019-04-15 마크업 수정 : 고객요청
        1뎁스 a 태그에 각각 다른 class 추가
    -->
    
    <nav id="gnb">
        <ul class="gnb-depth1">
            <li><a href="/movie" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/movie"					title="전체영화">전체영화</a></li>
                        <li><a href="/curation/specialcontent"	title="큐레이션">큐레이션</a></li>
                        
                        <li id="festivalArea" style="display: none;"><a href="/festival" title="영화제">영화제</a></li>
                        <li><a href="/moviepost/all"			title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="/booking" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/booking"					title="빠른예매">빠른예매</a></li>
                        <li><a href="/booking/timetable"		title="상영시간표">상영시간표</a></li>
                        <li><a href="/booking/privatebooking"	title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="/theater/list" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/theater/list" title="전체극장">전체극장</a></li>
                        <li><a href="/specialtheater/list" title="특별관">특별관</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"		title="진행중 이벤트">진행중 이벤트</a></li>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"	title="지난 이벤트">지난 이벤트</a></li>
                        <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"	title="당첨자발표">당첨자발표</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;" class="gnb-txt-store" title="스토어">스토어</a></li>
            <li><a href="/benefit/membership" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="/benefit/membership" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="/benefit/discount/guide" title="제휴/할인">제휴/할인</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
    <!--// gnb -->
    
<form id="bokdMForm">
	<input type="hidden" name="returnURL" value="info"/>
</form>
<!-- container -->
<div id="bokdContainer" class="container" style="padding-bottom:200px; display:none">
<input type="hidden" id="playDe" name="playDe" value=""/>
    <div class="page-util">
        <div class="inner-wrap">
            <div class="location"></div>

        </div>
    </div>

    <div id="bokdMSeat" style="overflow:hidden; display:none; height:736px;">
        <iframe id="frameBokdMSeat" src="/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?megaboxLanguage=kr" title="관람인원선택 프레임" scrolling="no" frameborder="0" class="reserve-iframe" style="width:100%; height:736px;"></iframe>
	</div>

    <div id="bokdMPayBooking" style="overflow:hidden; display:none; height:736px;">
       <iframe id="framePayBooking" src="/on/oh/ohz/PayBooking/completeSeat.do?megaboxLanguage=kr" title="예매 결제" scrolling="no" frameborder="0" class="reserve-iframe" style="width:100%; height:736px;"></iframe>
	</div>

</div>
<!--// container -->
<script src="/js/megabox-brch.js"></script>
<script src="/js/megabox-simpleBokd.js"></script>



<div id="schdlContainer" class="container">
	<div class="page-util">
		<div class="inner-wrap">
			<div class="location">
				<span>Home</span>
				<a href="/theater/list" title="극장 페이지로 이동">극장</a>
				<a href="/theater/list" title="전체극장 페이지로 이동">전체극장</a>
				<a href="/theater" title="극장정보 페이지로 이동">극장정보</a>
			</div>
		</div>
	</div>

	<!-- contents -->
	<div id="contents" class="no-padding">

		<!-- theater-detail-page -->
		<div class="theater-detail-page">

			<div class="bg-img" style="background-image:url('/static/pc/images/theater/img-theater-detail.jpg');"></div>
			<div class="bg-pattern"></div>
			<div class="bg-mask"></div>

			<!-- theater-all -->
			<div class="theater-all">
				<!-- theater-area-list -->
				<div class="theater-area-list">
					<ul class="area-depth1">
						
							
							<li>
								<a href="" class="depth1" title="서울 선택">서울</a>
								<div class="area-depth2">
									<ul>
										
											<li class="on">
												<a href="/theater?brchNo=1372" title="강남 상세보기">강남

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1359" title="강남대로&#40;씨티&#41; 상세보기">강남대로&#40;씨티&#41;

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1341" title="강동 상세보기">강동

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1431" title="군자 상세보기">군자

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1003" title="동대문 상세보기">동대문

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1572" title="마곡 상세보기">마곡

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1581" title="목동 상세보기">목동

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1311" title="상봉 상세보기">상봉

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1211" title="상암월드컵경기장 상세보기">상암월드컵경기장

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1331" title="성수 상세보기">성수

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1371" title="센트럴 상세보기">센트럴

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1381" title="송파파크하비오 상세보기">송파파크하비오

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1202" title="신촌 상세보기">신촌

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1221" title="은평 상세보기">은평

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1561" title="이수 상세보기">이수

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1321" title="창동 상세보기">창동

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1351" title="코엑스 상세보기">코엑스

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1212" title="홍대 상세보기">홍대

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1571" title="화곡 상세보기">화곡

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=1562" title="ARTNINE 상세보기">ARTNINE

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
							
							<li>
								<a href="" class="depth1" title="경기 선택">경기</a>
								<div class="area-depth2">
									<ul>
										
											<li>
												<a href="/theater?brchNo=4121" title="고양스타필드 상세보기">고양스타필드

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4152" title="김포한강신도시 상세보기">김포한강신도시

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4721" title="남양주 상세보기">남양주

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4451" title="동탄 상세보기">동탄

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4652" title="미사강변 상세보기">미사강변

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4113" title="백석 상세보기">백석

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4722" title="별내 상세보기">별내

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4221" title="부천스타필드시티 상세보기">부천스타필드시티

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4631" title="분당 상세보기">분당

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4411" title="수원 상세보기">수원

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4421" title="수원남문 상세보기">수원남문

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4291" title="시흥배곧 상세보기">시흥배곧

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4253" title="안산중앙 상세보기">안산중앙

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4821" title="양주 상세보기">양주

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4431" title="영통 상세보기">영통

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=0012" title="용인기흥 상세보기">용인기흥

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4462" title="용인테크노밸리 상세보기">용인테크노밸리

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4804" title="의정부민락 상세보기">의정부민락

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4111" title="일산 상세보기">일산

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4104" title="일산벨라시타 상세보기">일산벨라시타

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4112" title="킨텍스 상세보기">킨텍스

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4132" title="파주금촌 상세보기">파주금촌

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4115" title="파주운정 상세보기">파주운정

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4131" title="파주출판도시 상세보기">파주출판도시

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4501" title="평택 상세보기">평택

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4651" title="하남스타필드 상세보기">하남스타필드

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
							
							<li>
								<a href="" class="depth1" title="인천 선택">인천</a>
								<div class="area-depth2">
									<ul>
										
											<li>
												<a href="/theater?brchNo=4041" title="검단 상세보기">검단

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4062" title="송도 상세보기">송도

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4001" title="영종 상세보기">영종

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4051" title="인천논현 상세보기">인천논현

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4042" title="청라 상세보기">청라

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=4043" title="청라지젤 상세보기">청라지젤

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
							
							<li>
								<a href="" class="depth1" title="대전/충청/세종 선택">대전/충청/세종</a>
								<div class="area-depth2">
									<ul>
										
											<li>
												<a href="/theater?brchNo=3141" title="공주 상세보기">공주

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3021" title="대전 상세보기">대전

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=0009" title="대전유성 상세보기">대전유성

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3011" title="대전중앙로 상세보기">대전중앙로

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=0017" title="대전현대아울렛 상세보기">대전현대아울렛

													
														
															
																<i class="iconset ico-theater-new"></i>
															
															
															
															
														
													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3391" title="세종&#40;조치원&#41; 상세보기">세종&#40;조치원&#41;

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3392" title="세종나성 상세보기">세종나성

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=0008" title="세종청사 상세보기">세종청사

													
														
															
																<i class="iconset ico-theater-new"></i>
															
															
															
															
														
													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3631" title="오창 상세보기">오창

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3901" title="제천 상세보기">제천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3651" title="진천 상세보기">진천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3301" title="천안 상세보기">천안

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=0013" title="청주사창 상세보기">청주사창

													
														
															
															
															
																<i class="iconset ico-theater-open"></i>
															
															
														
													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3801" title="충주 상세보기">충주

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=3501" title="홍성내포 상세보기">홍성내포

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
							
							<li>
								<a href="" class="depth1" title="부산/대구/경상 선택">부산/대구/경상</a>
								<div class="area-depth2">
									<ul>
										
											<li>
												<a href="/theater?brchNo=6701" title="거창 상세보기">거창

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7602" title="경북도청 상세보기">경북도청

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7122" title="경산하양 상세보기">경산하양

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7801" title="경주 상세보기">경주

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7303" title="구미강동 상세보기">구미강동

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7401" title="김천 상세보기">김천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7901" title="남포항 상세보기">남포항

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7022" title="대구&#40;칠성로&#41; 상세보기">대구&#40;칠성로&#41;

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7011" title="대구신세계&#40;동대구&#41; 상세보기">대구신세계&#40;동대구&#41;

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7012" title="대구이시아 상세보기">대구이시아

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6161" title="덕천 상세보기">덕천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6312" title="마산 상세보기">마산

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7451" title="문경 상세보기">문경

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6001" title="부산극장 상세보기">부산극장

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6906" title="부산대 상세보기">부산대

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=7021" title="북대구&#40;칠곡&#41; 상세보기">북대구&#40;칠곡&#41;

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6641" title="사천 상세보기">사천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6642" title="삼천포 상세보기">삼천포

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6261" title="양산 상세보기">양산

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6262" title="양산라피에스타 상세보기">양산라피에스타

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6811" title="울산 상세보기">울산

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6191" title="정관 상세보기">정관

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6421" title="창원 상세보기">창원

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=0014" title="창원내서 상세보기">창원내서

													
														
															
																<i class="iconset ico-theater-new"></i>
															
															
															
															
														
													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=6121" title="해운대&#40;장산&#41; 상세보기">해운대&#40;장산&#41;

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
							
							<li>
								<a href="" class="depth1" title="광주/전라 선택">광주/전라</a>
								<div class="area-depth2">
									<ul>
										
											<li>
												<a href="/theater?brchNo=5021" title="광주상무 상세보기">광주상무

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=5061" title="광주하남 상세보기">광주하남

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=5901" title="남원 상세보기">남원

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=5302" title="목포하당&#40;포르모&#41; 상세보기">목포하당&#40;포르모&#41;

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=5612" title="송천 상세보기">송천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=5401" title="순천 상세보기">순천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=5552" title="여수웅천 상세보기">여수웅천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=0010" title="전대&#40;광주&#41; 상세보기">전대&#40;광주&#41;

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=5064" title="첨단 상세보기">첨단

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
							
							<li>
								<a href="" class="depth1" title="강원 선택">강원</a>
								<div class="area-depth2">
									<ul>
										
											<li>
												<a href="/theater?brchNo=2001" title="남춘천 상세보기">남춘천

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=2171" title="속초 상세보기">속초

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=2201" title="원주 상세보기">원주

													
												</a>
											</li>
										
											<li>
												<a href="/theater?brchNo=2202" title="원주센트럴 상세보기">원주센트럴

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
							
							<li>
								<a href="" class="depth1" title="제주 선택">제주</a>
								<div class="area-depth2">
									<ul>
										
											<li>
												<a href="/theater?brchNo=6901" title="제주 상세보기">제주

													
												</a>
											</li>
										
									</ul>
								</div>
							</li>
						
					</ul>
				</div>
				<!--// theater-area-list -->

				<p class="name">강남</p>

				<div class="btn-util right">

					<div class="block">

						
							
							
								<button type="button" class="btn btn-like tooltip click">
									<i class="iconset ico-like-line"></i>
									<span>선호극장</span>

									<span class="ir" data-width="235">
										<span class="cont-area">
											<span class="login-alert-tooltip">
												로그인이 필요한 서비스 입니다.<br>
												<a href="" id="moveLogin" title="로그인하기">로그인하기 <i class="iconset ico-arr-right-green"></i></a>
											</span>
										</span>
									</span>
								</button>
							
						
					</div>
				</div>
			</div>
			<!--// theater-detail-cont -->
		</div>
		<!--// theater-detail-page -->

		<div class="inner-wrap pt40">

			<div class="tab-list fixed mb40 tab-layer">
				<ul>
					<li><a href="#tab01" title="극장정보 탭으로 이동">극장정보</a></li>
					<li><a href="#tab02" title="상영시간표 탭으로 이동">상영시간표</a></li>
					<li><a href="#tab03" title="관람료 탭으로 이동">관람료</a></li>
				</ul>
			</div>

			<div class="tab-cont-wrap">
				<div id="tab01" class="tab-cont">
				</div>

				<div id="tab02" class="tab-cont">
					<h2 class="tit small" style="display: none;">무대인사</h2>
					<div class="movie-greeting"></div>
					<h2 class="tit small mt40">상영시간표</h2>
				</div>
				<div id="tab03" class="tab-cont">
					<h2 class="tit small">영화관람료</h2>
				</div>
			</div>
		</div>
	</div>
	<!--// contents -->
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

<div class="quick-area">
	<a href="" class="btn-go-top" title="top">top</a>
</div>

<!-- footer -->
<footer id="footer">
    <!-- footer-top -->
    <div class="footer-top">
        <div class="inner-wrap">
            <ul class="fnb">
                <li><a href="/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
                <li><a href="/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
                <li><a href="/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
                <li><a href="/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
                <li><a href="/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
                <li class="privacy"><a href="/support/privacy" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
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


</body>
</html>