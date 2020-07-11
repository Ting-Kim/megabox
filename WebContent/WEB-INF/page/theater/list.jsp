<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!Doctype html>
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!-->
<html lang="ko">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="shortcut icon" href="../static/pc/images/favicon.ico" />





<title>전체극장 | 라이프씨어터, 메가박스</title>
<meta property="name" id="metaTagTitle" content="전체극장" />
<meta property="description" id="metaTagDtls"
	content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. " />
<meta property="keywords" id="metaTagKeyword"
	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox" />

<meta property="fb:app_id" id="fbAppId" content="546913502790694" />


<meta property="og:site_name" id="fbSiteName" content="메가박스" />
<meta property="og:type" id="fbType" content="movie" />
<meta property="og:url" id="fbUrl"
	content="https://www.megabox.co.kr/theater/list" />
<meta property="og:title" id="fbTitle" content="전체극장" />
<meta property="og:description" id="fbDtls"
	content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. " />
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../static/pc/dist/megabox.min.css"
	media="all" />
<!-- 
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(argumen\ts);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="/static/pc/dist/megabox.api.min.js"></script>
<script src="/static/mb/js/lozad.min.js"></script>
<script src="/js/common/dist/megabox.common.min.js"></script>
<script src="/js/netfunnel/dist/megabox.netfunnel.min.js"></script>
<script src="//cast.imp.joins.com/persona.js" async></script> 
-->

<!-- Global site tag (gtag.js) - Google Analytics -->
</head>

<body>

	<div class="skip" title="스킵 네비게이션">
		<a href="#" title="본문 바로가기">본문 바로가기</a> <a href="#" title="푸터 바로가기">푸터
			바로가기</a>
	</div>

	<div class="body-wrap">

		<!-- <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script> -->
		<!-- 		<script src="/static/mb/js/hmac-sha256.js"></script>
		<script src="/static/mb/js/enc-base64-min.js"></script> -->

		<form id="loginForm">
			<input type='hidden' name='redisKey' value='' /> <input
				type='hidden' name='menuId' value='' /> <input type='hidden'
				name='mappingId' value='' /> <input type='hidden' name='rtnParam'
				value='' /> <input type='hidden' name='certType' value='' /> <input
				type='hidden' name='preUrl' value='' />

			<!-- 좌석도 로그인 프로세스 여부PARAM-->
			<input type='hidden' name='bokdLoginAt' value='' /> <input
				type='hidden' name='bokdLoginParam' value='' /> <input
				type='hidden' name='nonMbCertRedisKey' value='' /> <input
				type='hidden' name='nonMbCertedMblpNo' value='' /> <input
				type='hidden' name='reloadYn' value='' /> <input type='hidden'
				name='validDataRevisnYn' value='N' />

		</form>








		<!-- 로그인 레이어팝업 시작 -->
		<!-- 화면ID  M-ME-LO-01 -->
		<!-- 화면ID  M-ME-CC-01 -->
		<div style="display: none;">
			<a id="loginPupupATag" href="#" class="button active btn-modal-open"
				w-data="850" h-data="484"></a>
		</div>

		<section id="layer_login_select" class="modal-layer"
			style="z-index: 501;">
			<a href="#" class="focus" title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨<!--레이어로 포커스 이동 됨--></a>
			<div class="wrap"
				style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
				<header class="layer-header">
					<h3 class="tit">로그인</h3>
				</header>

				<div class="layer-con" style="height: 511px;">

					<div class="tab-list tab-layer">
						<ul>
							<li class="on"><a href="#" title="회원 로그인 선택">회원 로그인<!--회원 로그인-->
							</a></li>
							<li><a href="#" title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
						</ul>
					</div>

					<!-- tab-cont-wrap -->
					<div class="tab-cont-wrap">
						<!-- tab 회원 로그인 -->
						<div id="login_tab_01" class="tab-cont on">
							<a href="" class="ir" title="로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">
										<div class="login-input-area">
											<input autocomplete="off" id="ibxLoginId" maxlength="20"
												type="text" placeholder="아이디" title="아이디를 입력하세요"
												class="input-text strTrim">
											<!--아이디-->
											<!--아이디를 입력하세요-->
											<input autocomplete="off" id="ibxLoginPwd" maxlength="20"
												type="password" placeholder="비밀번호" title="비밀번호를 입력하세요"
												class="input-text mt15">
											<!--비밀번호-->
											<!--비밀번호를 입력하세요-->
											<div class="alert"></div>

											<!-- chk-util -->
											<div class="chk-util">
												<div class="left">
													<input id="chkIdSave" type="checkbox"> <label
														for="chkIdSave">아이디 저장<!--아이디 저장--></label>
												</div>

												<div class="right">
													<div class="hp-ad">
														<a href="#" title="휴대폰 간편 로그인 선택" target="_blank"
															title="새창 열림"><span>휴대폰 간편로그인<!--휴대폰 간편로그인-->
														</span> <em>광고<!--광고--></em></a>
													</div>
												</div>
											</div>
											<!--// chk-util -->

											<button id="btnLogin" type="button"
												class="button purple large btn-login">
												로그인
												<!--로그인-->
											</button>

											<div class="link">
												<a href="#" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
												<a href="#" title="회원가입 선택">회원가입<!--회원가입--></a> <a href="#"
													title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
											</div>

											<div class="sns-login">
												<a href="#" lnkgTy="FACEBOOK" title="페이스북으로 로그인 선택"><img
													src="../static/pc/images/member/ico-facebook.png"
													alt="페이스북"> <!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
													href="#" lnkgTy="NAVER" title="네이버로 로그인 선택"><img
													src="../static/pc/images/member/ico-naver.png" alt="네이버">
													<!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a href="#"
													lnkgTy="KAKAO" title="카카오톡으로 로그인 선택"><img
													src="../static/pc/images/member/ico-kakao.png" alt="카카오톡">
													<!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a href="#"
													lnkgTy="PAYCO" title="페이코로 로그인 선택"><img
													src="../static/pc/images/member/ico-payco.png" alt="페이코">
													<!--페이코--> 페이코로 로그인<!--페이코로 로그인--></a>
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
						<div id="login_tab_02" class="tab-cont">
							<a href="" class="ir" title="비회원 로그인"></a>

							<div class="login-member col-2">
								<!-- col-wrap -->
								<div class="col-wrap">
									<div class="col left">

										<div class="no-member-login-table">
											<table
												summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
												<caption>
													이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표
													<!--이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표-->
												</caption>
												<colgroup>
													<col style="width: 110px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><label for="ibxNonMbNm">이름<!--이름--></label>
														</th>
														<td><input maxlength="20" id="ibxNonMbNm" type="text"
															placeholder="이름" class="input-text"> <!--이름--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label>
														</th>
														<td><input maxlength="6" id="ibxNonMbByymmdd"
															type="text" placeholder="생년월일 앞6자리" class="input-text">
															<!--주민번호 앞 6자리--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label>
														</th>
														<td>
															<div class="hp-input">
																<input maxlength="11" id="ibxNonMbTelno" type="text"
																	placeholder="- 없이 입력" class="input-text">
																<!--- 없이 입력-->
																<button id="nonMbCertNoSend" type="button"
																	class="button gray" disabled="disabled">
																	인증요청
																	<!--인증요청-->
																</button>
															</div>
															<div id="mblpInput-error-text" class="alert"></div>
														</td>
													</tr>
													<tr id="nonMbCertRow">
														<th scope="row"><label for="mblpCharCertNo">인증번호<!--인증번호--></label>
														</th>
														<td>
															<div class="chk-num">
																<div class="line">
																	<input maxlength="4" id="mblpCharCertNo" type="text"
																		class="input-text">

																	<div class="time-limit" id="timer">3:00</div>
																</div>

																<button id="btnMblpCharCert" type="button"
																	class="button purple" disabled="disabled">
																	확인
																	<!--확인-->
																</button>
															</div>
															<div id="nonMbCert-error-text" class="alert"></div>
														</td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwd">비밀번호</label>
															<!--비밀번호--></th>
														<td><input maxlength="4" id="ibxNonMbPwd"
															type="password" placeholder="비밀번호(숫자 4자리)"
															class="input-text"> <!--비밀번호(숫자 4자리)--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
														</th>
														<td><input maxlength="4" id="ibxNonMbPwdConfirm"
															type="password" placeholder="비밀번호(숫자 4자리) 확인"
															class="input-text"> <!--비밀번호(숫자 4자리) 확인-->
															<div id="nonMbPwdErrText" class="alert"></div></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="col right">

										<div class="no-member-privacy-rule">
											<p class="tit">
												비회원예매 개인정보 처리방침
												<!--비회원예매 개인정보 처리방침-->
											</p>

											<div class="cont">
												<dl>
													<dt>수집목적</dt>
													<dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및 결제</dd>
													<dt>수집항목</dt>
													<dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd>
													<dt>보유기간</dt>
													<dd>관람 또는 취소 후 7일 이내</dd>
													<!--<dt>수집목적</dt><dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및  결제</dd><dt>수집항목</dt><dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd><dt>보유기간</dt><dd>관람 또는 취소 후 7일 이내</dd>-->
												</dl>

												<div class="btn-agree">
													<input type="radio" id="chkNonMbBokdPersonInfoProcTrue"
														name="chkNonMbBokdPersonInfoProc"> <label
														for="chkNonMbBokdPersonInfoProcTrue">동의<!--동의--></label> <input
														type="radio" id="chkNonMbBokdPersonInfoProcFalse"
														name="chkNonMbBokdPersonInfoProc" class="ml20"> <label
														for="chkNonMbBokdPersonInfoProcFalse">미동의<!--미동의--></label>
												</div>

												<ul class="dot-list gblue mt20">
													<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우
														비회원 예매서비스를 이용하실 수 없습니다.<!--정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.-->
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!--// col-wrap -->

								<div class="btn-group">
									<button id="btnChkNonMbLogin" type="button"
										class="button purple">확인</button>
									<a id="aNonMbLogin" href="#"
										class="button purple btn-modal-open" w-data='600' h-data='320'
										style="display: none;"></a>
								</div>
							</div>
						</div>
						<!--// tab 비회원 로그인 -->
					</div>
					<!--// tab-cont-wrap -->
				</div>

				<button type="button" class="btn-modal-close">
					레이어 닫기
					<!--레이어 닫기-->
				</button>
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
						<table class="data-table"
							summary="이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표">
							<caption>이름, 생년월일, 휴대폰번호 항목을 가진 비회원 티켓 발권을 위한 입력정보 표</caption>
							<colgroup>
								<col style="width: 80px;" />
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
					<button id="btnNonMbLogin" type="button"
						class="button purple small">확인</button>
				</div>

				<button id="btnNonMbModalClose" type="button"
					class="btn-modal-close">레이어 닫기</button>
			</div>
		</section>




		<!-- 메인에만 광고영역 노출 -->

		<!-- 메인 영화에만 광고영역 노출 -->


		<!-- header -->
		<header id="header">
			<h1 class="ci">
				<a href="#" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<!-- 브라우저 다운로드 -->



			<!-- ie-update : ie 9 이하 일때만 출력 -->
			<div class="ie-update">
				<div class="dimd"></div>
				<div class="wrap">
					<p class="tit">
						<img src="../static/pc/images/ie/txt-update.png"
							alt="megabox 홈페이지는 internet explrer10이상에서 최적화된 서비스 이용이 가능합니다. ie9 이하에서는 예매가 정상적으로 진행되지 않을 수 있으니, 브라우저를 업그레이드하시거나 다른 예매수단을 이용해 주세요!" />
					</p>

					<div class="box">
						<div class="col">
							<p class="txt">
								브라우저를 최신 버전으로<br>업그레이드 해보세요!
							</p>

							<div class="link">
								<a href="#" title="internet explorer 새 버전 다운로드" target="_blank">
									<img src="../static/pc/images/ie/btn-ie.png"
									alt="internet explorer 새 버전 다운로드" />
								</a>
							</div>

							<div class="link">
								<a href="#" title="chrome 다운로드" target="_blank"> <img
									src="../static/pc/images/ie/btn-chrome.png" alt="chrome 다운로드">
								</a>
							</div>
						</div>

						<div class="col">
							<p class="txt">
								megabox 모바일 app을<br>이용해 보세요!
							</p>

							<div class="link">
								<a href="#" title="available on the app store" target="_blank">
									<img src="../static/pc/images/ie/btn-appstore.png"
									alt="available on the app store">
								</a>
							</div>

							<div class="link">
								<a href="#" title="available on the google play" target="_blank">
									<img src="../static/pc/images/ie/btn-google.png"
									alt="available on the google play">
								</a>
							</div>
						</div>
					</div>

					<div class="close-chk">
						<input type="checkbox" id="one_month_no_update" /> <label
							for="one_month_no_update" class="ml05">한 달 동안 이 창을 열지 않음</label>

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
					<a href="#" title="VIP LOUNGE">VIP LOUNGE</a> <a
						href="/benefit/membership" title="멤버십">멤버십</a> <a href="/support"
						title="고객센터">고객센터</a>
				</div>

				<div class="right-link">
					<!-- 로그인전 -->
					<div class="before" style="display: none">
						<a href="#'default','pc')" title="로그인">로그인</a> <a href="#"
							title="회원가입">회원가입</a>
					</div>

					<!-- 로그인후 -->
					<div class="after" style="display: none">
						<a href="#" class="" title="로그아웃">로그아웃</a> <a href=""
							class="notice" title="알림">알림</a>

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

					<a href="#">빠른예매</a>
				</div>
			</div>
			<!--// 2019-04-15 마크업 수정 : 고객요청  -->

			<div class="link-area">
				<a href="#" class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
				<a href="#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="#" class="link-ticket" title="상영시간표">상영시간표</a> <a href="#"
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
					<li><a href="#" class="gnb-txt-movie" title="영화">영화</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="#" title="전체영화">전체영화</a></li>
								<li><a href="#" title="큐레이션">큐레이션</a></li>

								<li id="festivalArea" style="display: none;"><a href="#"
									title="영화제">영화제</a></li>
								<li><a href="#" title="무비포스트">무비포스트</a></li>
							</ul>
						</div></li>
					<li><a href="#" class="gnb-txt-reserve" title="예매">예매</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="#" title="빠른예매">빠른예매</a></li>
								<li><a href="#" title="상영시간표">상영시간표</a></li>
								<li><a href="#" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
							</ul>
						</div></li>
					<li><a href="#" class="gnb-txt-theater" title="극장">극장</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="#" title="전체극장">전체극장</a></li>
								<li><a href="/specialtheater/list.do" title="특별관">특별관</a></li>
							</ul>
						</div></li>
					<li><a href="#"
						onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
						class="gnb-txt-event" title="이벤트">이벤트</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="#"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
									title="진행중 이벤트">진행중 이벤트</a></li>
								<li><a href="#"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
									title="지난 이벤트">지난 이벤트</a></li>
								<li><a href="#"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
									title="당첨자발표">당첨자발표</a></li>
							</ul>
						</div></li>
					<li><a href="#"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
						class="gnb-txt-store" title="스토어">스토어</a></li>
					<li><a href="#" class="gnb-txt-benefit" title="혜택">혜택</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="#" title="메가박스 멤버십">메가박스 멤버십</a></li>
								<li><a href="#" title="제휴/할인">제휴/할인</a></li>
							</ul>
						</div></li>
				</ul>
			</nav>

			<!-- 레이어 : 사이트맵 -->




			<div id="layer_sitemap" class="header-layer layer-sitemap">
				<!-- wrap -->
				<div class="wrap">
					<a href="" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>

					<p class="tit">SITEMAP</p>

					<div class="list position-1">
						<p class="tit-depth">영화</p>

						<ul class="list-depth">
							<li><a href="#" title="전체영화">전체영화</a></li>
							<li><a href="#" title="큐레이션">큐레이션</a></li>
							<li><a href="#"
								onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();"
								title="영화제">영화제</a></li>
							<li><a href="#" title="무비포스트">무비포스트</a></li>
						</ul>
					</div>

					<div class="list position-2">
						<p class="tit-depth">예매</p>

						<ul class="list-depth">
							<li><a href="#" title="빠른예매">빠른예매</a></li>
							<li><a href="#" title="상영시간표">상영시간표</a></li>
							<li><a href="#" title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
							<!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
						</ul>
					</div>

					<div class="list position-3">
						<p class="tit-depth">극장</p>

						<ul class="list-depth">
							<li><a href="#" title="전체극장">전체극장</a></li>
							<li><a href="/specialtheater/list.do" title="특별관">특별관</a></li>
						</ul>
					</div>

					<div class="list position-4">
						<p class="tit-depth">이벤트</p>

						<ul class="list-depth">
							<li><a href="#"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
								title="진행중 이벤트">진행중 이벤트</a></li>
							<li><a href="#"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
								title="지난 이벤트">지난 이벤트</a></li>
							<li><a href="#"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
								title="당첨자발표">당첨자발표</a></li>
						</ul>
					</div>

					<div class="list position-5">
						<p class="tit-depth">스토어</p>

						<ul class="list-depth">
							<li><a href="#"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
								title="새로운 상품">새로운 상품</a></li>
							<li><a href="#"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/megaticket');return false;"
								title="메가티켓">메가티켓</a></li>
							<li><a href="#"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/megachance');return false;"
								title="메가찬스">메가찬스</a></li>
							<li><a href="#"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/popcorn');return false;"
								title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
							<!-- <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/e-giftcard');return false;" title="기프트카드">기프트카드</a></li> -->
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
							<li><a href="#" title="멤버십 안내">멤버십 안내</a></li>
							<li><a href="#" title="VIP LOUNGE">VIP LOUNGE</a></li>
							<li><a href="#" title="제휴/할인">제휴/할인</a></li>
						</ul>
					</div>

					<div class="list position-8">
						<p class="tit-depth">고객센터</p>

						<ul class="list-depth">
							<li><a href="#" title="고객센터 홈">고객센터 홈</a></li>
							<li><a href="#" title="자주묻는질문">자주묻는질문</a></li>
							<li><a href="#" title="공지사항">공지사항</a></li>
							<li><a href="#" title="1:1문의">1:1문의</a></li>
							<li><a href="#" title="단체/대관문의">단체/대관문의</a></li>
							<li><a href="#" title="분실물문의">분실물문의</a></li>
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
							<li><a href="/support/terms" title="이용약관">이용약관</a></li>
							<li><a href="/support/privacy" title="개인정보처리방침">개인정보처리방침</a></li>
							<li><a href="/support/screenrule" title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
						</ul>
					</div>

					<div class="ir">
						<a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
					</div>
				</div>
				<!--// wrap -->
			</div>
			<!--// 레이어 : 사이트맵 -->

			<!-- 레이어 : 검색 -->
			<div id="layer_header_search"
				class="header-layer layer-header-search"></div>
			<!--// 레이어 : 검색 -->

			<!-- 레이어 : 마이페이지 -->




			<div id="layer_mymega" class="header-layer layer-mymege">
				<a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>

				<!-- wrap -->
				<div class="wrap" style="display: none">

					<div class="login-after">
						<div class="user-info">
							<p class="txt">안녕하세요!</p>

							<p class="info">
								<!--
                            vip 일때만 출력
                            vip 아닐때는 태그 자체 삭제
                        -->
								<em class="vip">VIP PREMIUM</em> <em class="name"></em> <span>회원님</span>
							</p>

							<div class="last-date">
								마지막 접속일 : <em></em>
							</div>

							<!-- vip, 멤버십 없을때는 미 출력  -->
							<div class="membership">
								<!-- <i class="iconset ico-header-vip"></i>
                        <i class="iconset ico-header-film"></i>
                        <i class="iconset ico-header-classic"></i> -->
							</div>

							<div class="btn-fixed">
								<a href="#" class="button" title="나의  메가박스">나의 메가박스</a>
							</div>
						</div>

						<div class="box">
							<div class="point">
								<p class="tit">Point</p>

								<p class="count">0</p>

								<div class="btn-fixed">
									<a href="#" class="button" title="멤버십 포인트">멤버십 포인트</a>
								</div>
							</div>
						</div>

						<div class="box">
							<div class="coupon">
								<p class="tit">
									쿠폰/관람권
									<!-- <i class="iconset ico-header-new"></i> -->
								</p>

								<p class="count">
									<em title="쿠폰 수" class="cpon">0</em> <span title="관람권 수"
										class="movie">0</span>
								</p>

								<div class="btn-fixed">
									<a href="#" class="button" title="쿠폰">쿠폰</a> <a href="#"
										class="button" title="관람권">관람권</a>
								</div>
							</div>
						</div>

						<div class="box">
							<div class="reserve">
								<p class="tit">
									예매
									<!-- <i class="iconset ico-header-new"></i> -->
								</p>

								<p class="txt"></p>

								<div class="btn-fixed">
									<a href="#" class="button" title="예매내역">예매내역 </a>
								</div>
							</div>
						</div>

						<div class="box">
							<div class="buy">
								<p class="tit">
									구매
									<!-- <i class="iconset ico-header-new"></i> -->
								</p>

								<p class="count">
									<em>0</em> <span>건</span>
								</p>
							</div>

							<div class="btn-fixed">
								<a href="#" class="button" title="구매내역">구매내역</a>
							</div>
						</div>
					</div>

					<!-- 로그인 전 -->
					<div class="login-before">
						<p class="txt">
							로그인 하시면 나의 메가박스를 만날 수 있어요.<br /> 영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해
							보세요!
						</p>

						<div class="mb50">
							<a href="#" id="moveLogin" title="로그인"
								class="button w120px btn-modal-open" w-data='850' h-data='484'>로그인</a>
						</div>

						<a href="#" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이
							아니신가요?</a>
					</div>
				</div>
				<!--// wrap -->

				<div class="ir">
					<a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
				</div>
			</div>
			<!--// 레이어 : 마이페이지 -->

		</header>
		<!--// header -->

		<!-- 
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

	$(function() {

		// 이벤트 버블현상 공통 제거
		$('#contents').on('click', 'a', function(e) {

			if (($(this).attr('href') || '').indexOf('/') == -1) {
				e.preventDefault();
			}
		});

		// 전체극장 > 지역 선택
		$('.sel-city').on('click', function() {

			$("div.theater-place li.on").removeClass('on');
			$(this).parent().addClass('on');

			var _h1 = $('.user-theater').outerHeight();
			var _h2 = $('.theater-place').outerHeight();
			var _h0 = $("div.theater-place li.on .theater-list").outerHeight();
			var _hAll = _h0 + _h1 + _h2;

			$('.theater-box').outerHeight(_hAll);
		});

		// 로그인 버튼
		$('#moveLogin').click(function() {

			fn_viewLoginPopup('default','pc');
		});

		// 전체극장 > 선호영화관 관리
		$('.user-theater a.float-r').click(function() {

			// 선호극장 호출 및 콜백
			gfn_favorBrchReg(function(param){

				var $li;

				// 선호극장 목록 삭제
				$('.theater-circle li').remove();

				// 선호극장 class 전체 삭제
				$('.theater-list span.favorit-theater').remove();

				// 선호극장 처리
				$.each(param, function(i, data){

					// 전체극장에서 관련 극장 찾기
					$li = $('.theater-list li[data-brch-no="'+ data.favorCdVal +'"]');

					if ($li.length != 0) {

						// 선호극장 class 추가
						$li.prepend('<span class="favorit-theater"><i class="iconset ico-favo-theater"></i></span>');

						// 선호영화관 추가
						$('ul.theater-circle').append(' '); //기존 줄바꿈이 스페이스 영역이라 추가
						$('ul.theater-circle').append($('<li>').html($li.find('a, input').clone()));
					}
				})
			});
		});
	});

</script>
 -->


		<!-- 		<div id="bodyContent"> -->


		<div class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="#" title="극장 페이지로 이동">극장</a> <a
							href="#" title="전체극장 페이지로 이동">전체극장</a>
					</div>
				</div>
			</div>

			<!-- content -->
			<div id="contents" class="no-padding">


				<!-- theater-main -->
				<div class="theater-main mb40">
					<div class="inner-wrap">
						<div class="left">
							<p class="slogun">megabox life theater</p>
							<p class="txt">
								메가박스<br />새로운 지점을<br />소개합니다.
							</p>

							<!-- swiper-control -->
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
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>

											<!-- 
											
											
											<li data-brch-no="1372"><a href="/theaterInfo.do"
												title="강남 상세보기">강남</a></li>

											<li data-brch-no="1359"><a href="#"
												title="강남대로&#40;씨티&#41; 상세보기">강남대로&#40;씨티&#41;</a></li>

											<li data-brch-no="1341"><a href="#" title="강동 상세보기">강동</a></li>

											<li data-brch-no="1431"><a href="#" title="군자 상세보기">군자</a></li>

											<li data-brch-no="1003"><a href="#" title="동대문 상세보기">동대문</a></li>

											<li data-brch-no="1572"><a href="#" title="마곡 상세보기">마곡</a></li>

											<li data-brch-no="1581"><a href="#" title="목동 상세보기">목동</a></li>

											<li data-brch-no="1311"><a href="#" title="상봉 상세보기">상봉</a></li>

											<li data-brch-no="1211"><a href="#"
												title="상암월드컵경기장 상세보기">상암월드컵경기장</a></li>

											<li data-brch-no="1331"><a href="#" title="성수 상세보기">성수</a></li>

											<li data-brch-no="1371"><a href="#" title="센트럴 상세보기">센트럴</a></li>

											<li data-brch-no="1381"><a href="#" title="송파파크하비오 상세보기">송파파크하비오</a></li>

											<li data-brch-no="1202"><a href="#" title="신촌 상세보기">신촌</a></li>

											<li data-brch-no="1221"><a href="#" title="은평 상세보기">은평</a></li>

											<li data-brch-no="1561"><a href="#" title="이수 상세보기">이수</a></li>

											<li data-brch-no="1321"><a href="#" title="창동 상세보기">창동</a></li>

											<li data-brch-no="1351"><a href="#" title="코엑스 상세보기">코엑스</a></li>

											<li data-brch-no="1212"><a href="#" title="홍대 상세보기">홍대</a></li>

											<li data-brch-no="1571"><a href="#" title="화곡 상세보기">화곡</a></li>

											<li data-brch-no="1562"><a href="#" title="ARTNINE 상세보기">ARTNINE</a></li>
 -->
										</ul>
									</div>
								</li>


								<li>
									<button type="button" class="sel-city" id="seq_loc2">경기</button>

									<div class="theater-list">
										<ul>
										
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 2 }">
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
										
<!-- 
											<li data-brch-no="4121"><a href="#" title="고양스타필드 상세보기">고양스타필드</a></li>

											<li data-brch-no="4152"><a href="#" title="김포한강신도시 상세보기">김포한강신도시</a></li>

											<li data-brch-no="4721"><a href="#" title="남양주 상세보기">남양주</a></li>

											<li data-brch-no="4451"><a href="#" title="동탄 상세보기">동탄</a></li>

											<li data-brch-no="4652"><a href="#" title="미사강변 상세보기">미사강변</a></li>

											<li data-brch-no="4113"><a href="#" title="백석 상세보기">백석</a></li>

											<li data-brch-no="4722"><a href="#" title="별내 상세보기">별내</a></li>

											<li data-brch-no="4221"><a href="#"
												title="부천스타필드시티 상세보기">부천스타필드시티</a></li>

											<li data-brch-no="4631"><a href="#" title="분당 상세보기">분당</a></li>

											<li data-brch-no="4411"><a href="#" title="수원 상세보기">수원</a></li>

											<li data-brch-no="4421"><a href="#" title="수원남문 상세보기">수원남문</a></li>

											<li data-brch-no="4291"><a href="#" title="시흥배곧 상세보기">시흥배곧</a></li>

											<li data-brch-no="4253"><a href="#" title="안산중앙 상세보기">안산중앙</a></li>

											<li data-brch-no="4821"><a href="#" title="양주 상세보기">양주</a></li>

											<li data-brch-no="4431"><a href="#" title="영통 상세보기">영통</a></li>

											<li data-brch-no="0012"><a href="#" title="용인기흥 상세보기">용인기흥</a></li>

											<li data-brch-no="4462"><a href="#" title="용인테크노밸리 상세보기">용인테크노밸리</a></li>

											<li data-brch-no="4804"><a href="#" title="의정부민락 상세보기">의정부민락</a></li>

											<li data-brch-no="4111"><a href="#" title="일산 상세보기">일산</a></li>

											<li data-brch-no="4104"><a href="#" title="일산벨라시타 상세보기">일산벨라시타</a></li>

											<li data-brch-no="4112"><a href="#" title="킨텍스 상세보기">킨텍스</a></li>

											<li data-brch-no="4132"><a href="#" title="파주금촌 상세보기">파주금촌</a></li>

											<li data-brch-no="4115"><a href="#" title="파주운정 상세보기">파주운정</a></li>

											<li data-brch-no="4131"><a href="#" title="파주출판도시 상세보기">파주출판도시</a></li>

											<li data-brch-no="4501"><a href="#" title="평택 상세보기">평택</a></li>

											<li data-brch-no="4651"><a href="#" title="하남스타필드 상세보기">하남스타필드</a></li>
 -->
 
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc3">인천</button>

									<div class="theater-list">
										<ul>
	
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 3 }">
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
											
											<!-- 
											<li data-brch-no="4041"><a href="#" title="검단 상세보기">검단</a></li>

											<li data-brch-no="4062"><a href="#" title="송도 상세보기">송도</a></li>

											<li data-brch-no="4001"><a href="#" title="영종 상세보기">영종</a></li>

											<li data-brch-no="4051"><a href="#" title="인천논현 상세보기">인천논현</a></li>

											<li data-brch-no="4042"><a href="#" title="청라 상세보기">청라</a></li>

											<li data-brch-no="4043"><a href="#" title="청라지젤 상세보기">청라지젤</a></li>
 -->

										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc4">대전/충청/세종</button>

									<div class="theater-list">
										<ul>
											
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 4 }">
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
											
<!-- 
											<li data-brch-no="3141"><a href="#" title="공주 상세보기">공주</a></li>

											<li data-brch-no="3021"><a href="#" title="대전 상세보기">대전</a></li>

											<li data-brch-no="0009"><a href="#" title="대전유성 상세보기">대전유성</a></li>

											<li data-brch-no="3011"><a href="#" title="대전중앙로 상세보기">대전중앙로</a></li>

											<li data-brch-no="0017"><a href="#" title="대전현대아울렛 상세보기">대전현대아울렛</a>
												<i class="iconset ico-theater-new"></i></li>

											<li data-brch-no="3391"><a href="#"
												title="세종&#40;조치원&#41; 상세보기">세종&#40;조치원&#41;</a></li>

											<li data-brch-no="3392"><a href="#" title="세종나성 상세보기">세종나성</a></li>

											<li data-brch-no="0008"><a href="#" title="세종청사 상세보기">세종청사</a>
												<i class="iconset ico-theater-new"></i></li>

											<li data-brch-no="3631"><a href="#" title="오창 상세보기">오창</a></li>

											<li data-brch-no="3901"><a href="#" title="제천 상세보기">제천</a></li>

											<li data-brch-no="3651"><a href="#" title="진천 상세보기">진천</a></li>

											<li data-brch-no="3301"><a href="#" title="천안 상세보기">천안</a></li>

											<li data-brch-no="0013"><a href="#" title="청주사창 상세보기">청주사창</a>
												<i class="iconset ico-theater-open"></i></li>

											<li data-brch-no="3801"><a href="#" title="충주 상세보기">충주</a></li>

											<li data-brch-no="3501"><a href="#" title="홍성내포 상세보기">홍성내포</a></li>
 -->

										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc5">부산/대구/경상</button>

									<div class="theater-list">
										<ul>

											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 5 }">
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
											
<!-- 
											<li data-brch-no="6701"><a href="#" title="거창 상세보기">거창</a></li>

											<li data-brch-no="7602"><a href="#" title="경북도청 상세보기">경북도청</a></li>

											<li data-brch-no="7122"><a href="#" title="경산하양 상세보기">경산하양</a></li>

											<li data-brch-no="7801"><a href="#" title="경주 상세보기">경주</a></li>

											<li data-brch-no="7303"><a href="#" title="구미강동 상세보기">구미강동</a></li>

											<li data-brch-no="7401"><a href="#" title="김천 상세보기">김천</a></li>

											<li data-brch-no="7901"><a href="#" title="남포항 상세보기">남포항</a></li>

											<li data-brch-no="7022"><a href="#"
												title="대구&#40;칠성로&#41; 상세보기">대구&#40;칠성로&#41;</a></li>

											<li data-brch-no="7011"><a href="#"
												title="대구신세계&#40;동대구&#41; 상세보기">대구신세계&#40;동대구&#41;</a></li>

											<li data-brch-no="7012"><a href="#" title="대구이시아 상세보기">대구이시아</a></li>

											<li data-brch-no="6161"><a href="#" title="덕천 상세보기">덕천</a></li>

											<li data-brch-no="6312"><a href="#" title="마산 상세보기">마산</a></li>

											<li data-brch-no="7451"><a href="#" title="문경 상세보기">문경</a></li>

											<li data-brch-no="6001"><a href="#" title="부산극장 상세보기">부산극장</a></li>

											<li data-brch-no="6906"><a href="#" title="부산대 상세보기">부산대</a></li>

											<li data-brch-no="7021"><a href="#"
												title="북대구&#40;칠곡&#41; 상세보기">북대구&#40;칠곡&#41;</a></li>

											<li data-brch-no="6641"><a href="#" title="사천 상세보기">사천</a></li>

											<li data-brch-no="6642"><a href="#" title="삼천포 상세보기">삼천포</a></li>

											<li data-brch-no="6261"><a href="#" title="양산 상세보기">양산</a></li>

											<li data-brch-no="6262"><a href="#" title="양산라피에스타 상세보기">양산라피에스타</a></li>

											<li data-brch-no="6811"><a href="#" title="울산 상세보기">울산</a></li>

											<li data-brch-no="6191"><a href="#" title="정관 상세보기">정관</a></li>

											<li data-brch-no="6421"><a href="#" title="창원 상세보기">창원</a></li>

											<li data-brch-no="0014"><a href="#" title="창원내서 상세보기">창원내서</a>
												<i class="iconset ico-theater-new"></i></li>

											<li data-brch-no="6121"><a href="#"
												title="해운대&#40;장산&#41; 상세보기">해운대&#40;장산&#41;</a></li>
 -->
 
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc6">광주/전라</button>

									<div class="theater-list">
										<ul>
											
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 6 }">
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
											
											<!-- 
											<li data-brch-no="5021"><a href="#" title="광주상무 상세보기">광주상무</a></li>

											<li data-brch-no="5061"><a href="#" title="광주하남 상세보기">광주하남</a></li>

											<li data-brch-no="5901"><a href="#" title="남원 상세보기">남원</a></li>

											<li data-brch-no="5302"><a href="#"
												title="목포하당&#40;포르모&#41; 상세보기">목포하당&#40;포르모&#41;</a></li>

											<li data-brch-no="5612"><a href="#" title="송천 상세보기">송천</a></li>

											<li data-brch-no="5401"><a href="#" title="순천 상세보기">순천</a></li>

											<li data-brch-no="5552"><a href="#" title="여수웅천 상세보기">여수웅천</a></li>

											<li data-brch-no="0010"><a href="#"
												title="전대&#40;광주&#41; 상세보기">전대&#40;광주&#41;</a></li>

											<li data-brch-no="5064"><a href="#" title="첨단 상세보기">첨단</a></li>
 -->
 
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc7">강원</button>

									<div class="theater-list">
										<ul>
											
											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 7 }">
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
											
											<!-- 
											<li data-brch-no="2001"><a href="#" title="남춘천 상세보기">남춘천</a></li>

											<li data-brch-no="2171"><a href="#" title="속초 상세보기">속초</a></li>

											<li data-brch-no="2201"><a href="#" title="원주 상세보기">원주</a></li>

											<li data-brch-no="2202"><a href="#" title="원주센트럴 상세보기">원주센트럴</a></li>
 -->
 
										</ul>
									</div>
								</li>

								<li>
									<button type="button" class="sel-city" id="seq_loc8">제주</button>

									<div class="theater-list">
										<ul>

											<c:forEach items="${ list }" var="dto">
												<c:if test="${ dto.seq_loc eq 8 }">
													<li><a href="#" title="">${dto.branch }</a></li>
												</c:if>
											</c:forEach>
<!-- 
											<li data-brch-no="6901"><a href="#" title="제주 상세보기">제주</a></li>
 -->
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
//										console.log($('.theater-place ul .on').find('button').attr('id') );
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
						<a href=""
							onclick="NetfunnelChk.aTag('STORE_DTL','/event/theater');return false;"
							class="more" title="극장 이벤트 더보기">더보기 <i
							class="iconset ico-arr-right-gray"></i></a>
					</div>

					<div class="event-box">
						<ul>

							<li><a href="#" class="eventBtn" data-no="8204"
								data-netfunnel="N" title="[신촌 | 이벤트] 앵콜연장! 별별 닉네임 상영관 상세보기">
									<img
									src="https://img.megabox.co.kr/SharedImg/event/2020/03/17/x23DPxjY0lBYKEGgOv0au8URBgUTbDPb.jpg"
									alt="[신촌 | 이벤트] 앵콜연장! 별별 닉네임 상영관" onerror="noImg(this)" />
							</a></li>

							<li><a href="#" class="eventBtn" data-no="8483"
								data-netfunnel="N" title="[청라지젤 | 시즌권] 지젤M 하반기 시즌권 런칭 상세보기">
									<img
									src="https://img.megabox.co.kr/SharedImg/event/2020/06/29/I7zwF8YsPKpSB6OTJeYQWFveuxhgIvlr.jpg"
									alt="[청라지젤 | 시즌권] 지젤M 하반기 시즌권 런칭" onerror="noImg(this)" />
							</a></li>

						</ul>
					</div>


					<div class="tit-util mt70 mb15">
						<h3 class="tit">극장 공지사항</h3>
						<a href="#" class="more" title="극장 공지사항 더보기">더보기 <i
							class="iconset ico-arr-right-gray"></i>
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
									<th scope="row"><a href="#" title="[문경] 7월휴관일 안내 상세보기">
											[문경] 7월휴관일 안내 </a></th>
									<td>부산/대구/경상</td>
									<td>2020.07.06</td>
								</tr>

								<tr>
									<td>고양스타필드</td>
									<th scope="row"><a href="#"
										title="[고양스타필드지점] 7/7&#40;화&#41; 건물 내 법정 전기 안전검사 실시 안내 상세보기">
											[고양스타필드지점] 7/7&#40;화&#41; 건물 내 법정 전기 안전검사 실시 안내 </a></th>
									<td>경기</td>
									<td>2020.07.06</td>
								</tr>

								<tr>
									<td>대전현대아울렛</td>
									<th scope="row"><a href="#" title="지점 임시 휴점 안내 상세보기">
											지점 임시 휴점 안내 </a></th>
									<td>대전/충청/세종</td>
									<td>2020.07.03</td>
								</tr>

								<tr>
									<td>화곡</td>
									<th scope="row"><a href="#"
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

		<!-- 		</div> -->




		<section id="saw_movie_regi" class="modal-layer">
			<input type="hidden" id="isLogin" />
			<div class="wrap">
				<header class="layer-header">
					<h3 class="tit">본 영화 등록</h3>
				</header>

				<div class="layer-con">
					<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

					<div class="pop-gray mt10 mb30">
						<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label> <input
							type="text" id="movie_regi" class="input-text w280px numType"
							maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력" />
						<button class="button gray ml05" id="regBtn">등록</button>
					</div>

					<div class="box-border v1 mt30">
						<p class="tit-box">이용안내</p>

						<ul class="dot-list">
							<li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
							<li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <BR>12자리를
								입력해주세요.(Yes24, 네이버, 맥스무비, 인터파크, SKT, KT, 다음)
							</li>
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
						<li class="privacy"><a href="/support/privacy"
							title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="#" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#" class="btn-looking-theater" title="극장찾기"><i
						class="iconset ico-footer-search"></i> 극장찾기</a>
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
			<!--// footer-bottom -->
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
		<!--// footer -->

		<!-- 모바일 때만 출력 -->
		<div class="go-mobile">
			<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i
				class="iconset ico-go-mobile"></i></a>
		</div>
	</div>
	<form id="mainForm"></form>

	<script>
		
	</script>

</body>
</html>