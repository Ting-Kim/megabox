<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta name="viewport"content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="shortcut icon" href="static/pc/images/favicon.ico" />
<title>박스오피스 < 영화 | 라이프씨어터, 메가박스</title>
<meta property="name" id="metaTagTitle" content="박스오피스 &lt; 영화" />
<meta property="description" id="metaTagDtls"
	content="메가박스에서 상영중인 더 많은 영화를 만나보세요." />
<meta property="keywords" id="metaTagKeyword"
	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox" />
<meta property="fb:app_id" id="fbAppId" content="546913502790694" />


<meta property="og:site_name" id="fbSiteName" content="메가박스" />
<meta property="og:type" id="fbType" content="movie" />
<meta property="og:url" id="fbUrl" content="movie.html" />
<meta property="og:title" id="fbTitle" content="박스오피스 &lt; 영화" />
<meta property="og:description" id="fbDtls"
	content="메가박스에서 상영중인 더 많은 영화를 만나보세요." />
<meta property="og:image" id="fbImg"
	content="../img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />






<link rel="stylesheet" href="css/main.css" media="all" />
<link rel="stylesheet" href="css/megabox.min.css" media="all" />
</head>
<body>
	<div class="skip" title="스킵 네비게이션">
		<a href="#contents" title="본문 바로가기">본문 바로가기</a> <a href="#footer" title="푸터 바로가기">푸터 바로가기</a>
	</div>
	<div class="body-wrap">
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
	

		<div style="display: none;">
			<a id="loginPupupATag" href="#layer_login_select"
				class="button active btn-modal-open" w-data="850" h-data="484"></a>
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
							<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원
									로그인<!--회원 로그인-->
							</a></li>
							<li><a href="#login_tab_02" title="비회원 로그인 선택">비회원 로그인<!--비회원 로그인--></a></li>
						</ul>
					</div>

					<!-- tab-cont-wrap -->
					<div class="tab-cont-wrap">
						<!-- tab 회원 로그인 -->
						<div id="login_tab_01" class="tab-cont on">
							<a href="#" class="ir" title="로그인"></a>

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
														<a
															href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1"
															title="휴대폰 간편 로그인 선택" target="_blank" title="새창 열림"><span>휴대폰
																간편로그인<!--휴대폰 간편로그인-->
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
												<a href="user-find.html" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
												<a href="join.html" title="회원가입 선택">회원가입<!--회원가입--></a> <a
													href="on/oh/ohg/MbLogin/viewNonMbLogin.html"
													title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
											</div>

											<div class="sns-login">
												<a href="javaScript:void(0)" lnkgTy="FACEBOOK"
													title="페이스북으로 로그인 선택"><img
													src="static/pc/images/member/ico-facebook.png" alt="페이스북">
												<!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgTy="NAVER"
													title="네이버로 로그인 선택"><img
													src="static/pc/images/member/ico-naver.png" alt="네이버">
												<!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a
													href="javaScript:void(0)" lnkgTy="KAKAO"
													title="카카오톡으로 로그인 선택"><img
													src="static/pc/images/member/ico-kakao.png" alt="카카오톡">
												<!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgTy="PAYCO"
													title="페이코로 로그인 선택"><img
													src="static/pc/images/member/ico-payco.png" alt="페이코">
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
							<a href="#" class="ir" title="비회원 로그인"></a>

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
															placeholder="이름" class="input-text">
														<!--이름--></td>
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
															class="input-text">
														<!--비밀번호(숫자 4자리)--></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호<!--비밀번호-->확인<!--확인--></label>
														</th>
														<td><input maxlength="4" id="ibxNonMbPwdConfirm"
															type="password" placeholder="비밀번호(숫자 4자리) 확인"
															class="input-text">
														<!--비밀번호(숫자 4자리) 확인-->
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
													<li class="font-gblue">정보수집에 동의를 거부할 수 있으며, 동의하지 않을 경우 비회원 예매서비스를 이용하실 수 없습니다.
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>

								<div class="btn-group">
									<button id="btnChkNonMbLogin" type="button"
										class="button purple">확인</button>
									<a id="aNonMbLogin" href="#layer_no_member_chk"
										class="button purple btn-modal-open" w-data='600' h-data='320'
										style="display: none;"></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<button type="button" class="btn-modal-close">레이어 닫기</button>
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



		<header id="header">
			<h1 class="ci">
				<a href="main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life
					Theater</a>
			</h1>





			<div class="util-area">
				<div class="left-link">
					<a href="benefit/viplounge.html" title="VIP LOUNGE">VIP LOUNGE</a>
					<a href="benefit/membership.html" title="멤버십">멤버십</a> <a
						href="support.html" title="고객센터">고객센터</a>
				</div>

				<div class="right-link">
					<!-- 로그인전 -->
					<div class="before" style="display: none">
						<a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a>
						<a href="join.html" title="회원가입">회원가입</a>
					</div>

					<!-- 로그인후 -->
					<div class="after" style="display: none">
						<a href="index.html" class="" title="로그아웃">로그아웃</a> <a href="#"
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

						</div>

					</div>

					<a href="booking.html">빠른예매</a>
				</div>
			</div>

			<div class="link-area">
				<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
					title="사이트맵">사이트맵</a> <a href="#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="booking/timetable.html" class="link-ticket" title="상영시간표">상영시간표</a>
				<a href="#layer_mymega" class="header-open-layer btn-layer-mymega"
					title="나의 메가박스">나의 메가박스</a>
			</div>


			<nav id="gnb">
				<ul class="gnb-depth1">
					<li><a href="movie.html" class="gnb-txt-movie" title="영화">영화</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="movie.do" title="전체영화">전체영화</a></li>
								<li><a href="#" title="큐레이션">큐레이션</a></li>

								<li id="festivalArea" style="display: none;"><a
									href="#" title="영화제">영화제</a></li>
								<li><a href="moviepost/all.html" title="무비포스트">무비포스트</a></li>
							</ul>
						</div></li>
					<li><a href="booking.html" class="gnb-txt-reserve" title="예매">예매</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="booking.html" title="빠른예매">빠른예매</a></li>
								<li><a href="booking/timetable.html" title="상영시간표">상영시간표</a></li>
								<li><a href="booking/privatebooking.html"
									title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
							</ul>
						</div></li>
					<li><a href="theater/list.html" class="gnb-txt-theater"
						title="극장">극장</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="theater/list.html" title="전체극장">전체극장</a></li>
								<li><a href="specialtheater/list.html" title="특별관">특별관</a></li>
							</ul>
						</div></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
						class="gnb-txt-event" title="이벤트">이벤트</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="javascript:void(0)"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
									title="진행중 이벤트">진행중 이벤트</a></li>
								<li><a href="javascript:void(0)"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
									title="지난 이벤트">지난 이벤트</a></li>
								<li><a href="javascript:void(0)"
									onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
									title="당첨자발표">당첨자발표</a></li>
							</ul>
						</div></li>
					<li><a href="javascript:void(0)"
						onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
						class="gnb-txt-store" title="스토어">스토어</a></li>
					<li><a href="benefit/membership.html" class="gnb-txt-benefit"
						title="혜택">혜택</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="benefit/membership.html" title="메가박스 멤버십">메가박스
										멤버십</a></li>
								<li><a href="benefit/discount/guide.html" title="제휴/할인">제휴/할인</a></li>
							</ul>
						</div></li>
				</ul>
			</nav>
			<div id="layer_sitemap" class="header-layer layer-sitemap">
				<!-- wrap -->
				<div class="wrap">
					<a href="#" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어
						입니다.</a>

					<p class="tit">SITEMAP</p>

					<div class="list position-1">
						<p class="tit-depth">영화</p>

						<ul class="list-depth">
							<li><a href="movie.html" title="전체영화">전체영화</a></li>
							<li><a href="curation/specialcontent.html" title="큐레이션">큐레이션</a></li>
							<li><a href="javascript:void(0)"
								onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();"
								title="영화제">영화제</a></li>
							<li><a href="moviepost/all.html" title="무비포스트">무비포스트</a></li>
						</ul>
					</div>

					<div class="list position-2">
						<p class="tit-depth">예매</p>

						<ul class="list-depth">
							<li><a href="booking.html" title="빠른예매">빠른예매</a></li>
							<li><a href="booking/timetable.html" title="상영시간표">상영시간표</a></li>
							<li><a href="booking/privatebooking.html"
								title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
							<!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
						</ul>
					</div>

					<div class="list position-3">
						<p class="tit-depth">극장</p>

						<ul class="list-depth">
							<li><a href="theater/list.html" title="전체극장">전체극장</a></li>
							<li><a href="specialtheater/list.html" title="특별관">특별관</a></li>
						</ul>
					</div>

					<div class="list position-4">
						<p class="tit-depth">이벤트</p>

						<ul class="list-depth">
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;"
								title="진행중 이벤트">진행중 이벤트</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;"
								title="지난 이벤트">지난 이벤트</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;"
								title="당첨자발표">당첨자발표</a></li>
						</ul>
					</div>

					<div class="list position-5">
						<p class="tit-depth">스토어</p>

						<ul class="list-depth">
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;"
								title="새로운 상품">새로운 상품</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/megaticket');return false;"
								title="메가티켓">메가티켓</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/megachance');return false;"
								title="메가찬스">메가찬스</a></li>
							<li><a href="javascript:void(0)"
								onclick="NetfunnelChk.aTag('STORE_LIST','/store/popcorn');return false;"
								title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
						</ul>
					</div>
					<div class="list position-6">
						<p class="tit-depth">나의 메가박스</p>
						<ul class="list-depth mymage">


							<li><a
								href="javascript:movePage('/mypage',						'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="나의 메가박스 홈">나의 메가박스 홈</a></li>
							<li><a
								href="javascript:movePage('/mypage/bookinglist',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="예매/구매내역">예매/구매내역</a></li>
							<li><a
								href="javascript:movePage('/mypage/movie-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="영화관람권">영화관람권</a></li>
							<li><a
								href="javascript:movePage('/mypage/store-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="스토어교환권">스토어교환권</a></li>
							<li><a
								href="javascript:movePage('/mypage/discount-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>

							<li><a
								href="javascript:movePage('/mypage/point-list',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="멤버십포인트">멤버십포인트</a></li>
							<li><a
								href="javascript:movePage('/mypage/moviestory',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="나의 무비스토리">나의 무비스토리</a></li>
							<li><a
								href="javascript:movePage('/mypage/myevent',				'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
							<li><a
								href="javascript:movePage('/mypage/myinquiry',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');"
								title="나의 문의내역">나의 문의내역</a></li>
							<li><a href="#" title="자주쓰는 할인 카드">자주쓰는 할인 카드</a></li>
							<li><a
								href="javascript:movePage('/on/oh/ohh/Mypage/mainPage.do?returnURL=info','로그인이 필요한 서비스 입니다.');"
								title="회원정보">회원정보</a></li>



						</ul>
					</div>

					<div class="list position-7">
						<p class="tit-depth">혜택</p>

						<ul class="list-depth">
							<li><a href="benefit/membership.html" title="멤버십 안내">멤버십
									안내</a></li>
							<li><a href="benefit/viplounge.html" title="VIP LOUNGE">VIP
									LOUNGE</a></li>
							<li><a href="benefit/discount/guide.html" title="제휴/할인">제휴/할인</a></li>
						</ul>
					</div>

					<div class="list position-8">
						<p class="tit-depth">고객센터</p>

						<ul class="list-depth">
							<li><a href="support.html" title="고객센터 홈">고객센터 홈</a></li>
							<li><a href="support/faq.html" title="자주묻는질문">자주묻는질문</a></li>
							<li><a href="support/notice.html" title="공지사항">공지사항</a></li>
							<li><a href="support/inquiry.html" title="1:1문의">1:1문의</a></li>
							<li><a href="support/rent.html" title="단체/대관문의">단체/대관문의</a></li>
							<li><a href="support/lost.html" title="분실물문의">분실물문의</a></li>
						</ul>
					</div>

					<div class="list position-9">
						<p class="tit-depth">회사소개</p>

						<ul class="list-depth">
							<li><a href="#" target="_blank"
								title="메가박스소개">메가박스소개</a></li>
							<li><a href="#" target="_blank"
								title="사회공헌">사회공헌</a></li>
							<li><a href="#" target="_blank" title="홍보자료">홍보자료</a></li>
							<li><a href="#" target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
							<li><a href="#" target="_blank"
								title="온라인제보센터">온라인제보센터</a></li>
							<li><a href="#" target="_blank" title="자료">IR자료</a></li>
							<li><a href="#" target="_blank" title="인재채용림">인재채용</a></li>
							<li><a href="https://jebo.joonganggroup.com/main.do"
								target="_blank" title="윤리경영">윤리경영</a></li>
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
				<!--// wrap -->
			</div>
			<!--// 레이어 : 사이트맵 -->

			<!-- 레이어 : 검색 -->
			<div id="layer_header_search"
				class="header-layer layer-header-search"></div>
			<!--// 레이어 : 검색 -->

			<!-- 레이어 : 마이페이지 -->




			<div id="layer_mymega" class="header-layer layer-mymege">
				<a href="#" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>

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
								<a href="index.html" class="button" title="나의  메가박스">나의 메가박스</a>
							</div>
						</div>

						<div class="box">
							<div class="point">
								<p class="tit">Point</p>

								<p class="count">0</p>

								<div class="btn-fixed">
									<a href="index.html" class="button" title="멤버십 포인트">멤버십
										포인트</a>
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
									<a href="index.html" class="button" title="쿠폰">쿠폰</a> <a
										href="index.html" class="button" title="관람권">관람권</a>
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
									<a href="index.html" class="button" title="예매내역">예매내역 </a>
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
								<a href="index.html?tab=02" class="button" title="구매내역">구매내역</a>
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
							<a href="#layer_login_common" id="moveLogin" title="로그인"
								class="button w120px btn-modal-open" w-data='850' h-data='484'>로그인</a>
						</div>

						<a href="join.html" class="link" title="혹시 아직 회원이 아니신가요?">혹시
							아직 회원이 아니신가요?</a>
					</div>
				</div>
				<!--// wrap -->

				<div class="ir">
					<a href="#" class="layer-close" title="레이어닫기">레이어닫기</a>
				</div>
			</div>


		</header>

		<input type="hidden" id="currentPage" name="currentPage" value="1" />
		<input type="hidden" id="recordCountPerPage" name="recordCountPerPage"
			value="20" /> <input type="hidden" id="pageType" name="pageType"
			value="ticketing" /> <input type="hidden" id="onairYn" name="onairYn"
			value="N" /> <input type="hidden" id="specialType" name="specialType"
			value="" />

		<!-- container -->
		<div class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="movie.do" title="영화 페이지로 이동">영화</a> 
						<a href="movie.do" title="전체영화 페이지로 이동">전체영화</a>
					</div>


				</div>
			</div>

			<!-- contents -->
			<div id="contents">
				<!-- inner-wrap -->
				<div class="inner-wrap">
					<h2 class="tit">전체영화</h2>

					<div class="tab-list fixed">
						<ul id="topMenu">
							<li <%if(name ==null)%> class="on"<%; %>><a href="movie.do" title="박스오피스 탭으로 이동">박스오피스</a></li>
							<li <%if(name.equalsIgnoreCase("comingsoon"))%> class="on"<%; %>><a href="movie.do?name=comingsoon" title="상영예정작 탭으로 이동" >상영예정작</a></li>
							<li <%if(name.equalsIgnoreCase("file"))%> class="on"<%; %>><a href="movie.do?name=film" title="필름소사이어티 탭으로 이동">필름소사이어티</a></li>
							<li <%if(name.equalsIgnoreCase("classic"))%> class="on"<%; %>><a href="movie.do?name=classic" title="클래식소사이어티 탭으로 이동">클래식소사이어티</a></li>

						</ul>
					</div>

					<!-- movie-list-util -->
					<div class="movie-list-util mt40">
						<!-- 박스오피스 -->
						<div class="topSort">
							<div class="movie-sorting sortTab"></div>

							<div class="onair-condition">
								<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
							</div>
						</div>
						<!--// 박스오피스 -->

						<!-- 상영예정작 -->
						<div class="topSort">
							<div class="movie-sorting sortTab">
								<span><button type="button" class="btn on"
										sort-type="rfilmDe">개봉일순</button></span> <span><button
										type="button" class="btn" sort-type="title">가나다순</button></span>
							</div>
						</div>
						<!--// 상영예정작 -->

						<!-- 필름소사이어티 -->
						<div class="topSort" style="display: none;">
							<div class="movie-sorting sortTab">
								<span><button type="button" class="btn on"
										sort-type="ticketing" tab-cd="">전체</button></span>

							</div>

							<div class="onair-condition">
								<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
							</div>
						</div>
						<!--// 필름소사이어티 -->

						<!-- 클래식소사이어티 -->
						<div class="topSort" style="display: none;">
							<div class="movie-sorting sortTab">
								<span><button type="button" class="btn on"
										sort-type="ticketing" tab-cd="">전체</button></span>

							</div>

							<div class="onair-condition">
								<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
							</div>
						</div>
						<!--// 클래식소사이어티 -->

						<!-- 장르모아보기 -->
						<div class="topSort" style="display: none;">
							<div class="movie-sorting sortTab">
								<span><button type="button" class="btn on"
										sort-type="ticketing">예매율순</button></span> <span><button
										type="button" class="btn" sort-type="accmAdnc">누적관객순</button></span>
								<span><button type="button" class="btn"
										sort-type="megaScore">메가스코어순</button></span>
							</div>

							<div class="onair-condition">
								<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
							</div>
						</div>
						<!--// 장르모아보기 -->

						<!-- 검색결과 없을 때 -->
						<p class="no-result-count">
							<strong id="totCnt">0</strong>개의 영화가 검색되었습니다.
						</p>

						<div class="movie-search">
							<input type="text" title="영화명을 입력하세요" id="ibxMovieNmSearch"
								name="ibxMovieNmSearch" placeholder="영화명 검색" class="input-text" />
							<button type="button" class="btn-search-input" id="btnSearch">검색</button>
						</div>
					</div>

					<div class="bg-loading" style="display: none;">
						<div class="spinner-border" role="status">
							<span class="sr-only">Loading...</span>
						</div>
					</div>
					<div class="movie-list">
						<ol class="list" id="movieList"></ol>
					</div>
					<div class="btn-more v1" id="addMovieDiv" style="display: none;">
						<button type="button" class="btn" id="btnAddMovie">
							더보기 <i class="iconset ico-btn-more-arr"></i>
						</button>
					</div>
					<div class="movie-list-no-result" id="noDataDiv"
						style="display: none;">
						<p>현재 상영중인 영화가 없습니다.</p>
					</div>

					<div class="movie-list-no-favor" id="noMyGenre"
						style="display: none;">
						<p>선호장르가 등록되지 않았습니다. 선호하시는 장르를 등록해보세요.</p>
						<div class="btn-group center">
							<a href="index.html" class="button large purple"
								title="선호장르설정하기 페이지로 이동">선호장르설정하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="quick-area">
			<a href="#" class="btn-go-top" title="top">top</a>
		</div>

		<!-- footer -->
		<footer id="footer">
			<div class="footer-top">
				<div class="inner-wrap">
					<ul class="fnb">
						<li><a href="#" title="회사소개 페이지로 이동">회사소개</a></li>
						<li><a href="#" title="인재채용 페이지로 이동">인재채용</a></li>
						<li><a href="#" title="사회공헌 페이지로 이동">사회공헌</a></li>
						<li><a href="#" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
						<li><a href="#" title="이용약관 페이지로 이동">이용약관</a></li>
						<li class="privacy"><a href="#" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
						<li><a href="#" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
					</ul>

					<a href="#" class="btn-looking-theater" title="극장찾기"><i
						class="iconset ico-footer-search"></i> 극장찾기</a>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="inner-wrap">
					<div class="ci">MEGABOX : Life Theater</div>

					<div class="footer-info">
                <div>
                    <address>서울특별시 강남구 역삼동 테헤란로 132</address>
                </div>
                <p>팀장 이진권</p>
                <p>· 기술고문 김태호</p>
                <p>· 김진우, 이진석 </p>
                <p>· 하기싫다..</p> 
                <p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights reserved</p>
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
			<div id="layer_looking_theater" class="layer-looking-theater"></div>
		</footer>
	</div>
</body>
</html>