<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<head>
<link rel="stylesheet" href="../css/main.css" media="all" />
<link rel="stylesheet" href="../css/megabox.min.css" media="all" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="shortcut icon" href="/static/pc/images/favicon.ico" />


		<title>멤버십 안내 < 혜택 | 라이프씨어터, 메가박스</title>
		<meta property="name"			id="metaTagTitle"	content="멤버십 안내"/>
		<meta property="description"	id="metaTagDtls"	content="메가박스의 VIP 멤버십과 혜택을 확인해보세요."/>
		<meta property="keywords"		id="metaTagKeyword"	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox"/>
		<meta property="fb:app_id" 		id="fbAppId" 	content="546913502790694"/>
		<meta property="og:site_name" 	id="fbSiteName"	content="메가박스"/>
		<meta property="og:type" 		id="fbType"		content="movie"/>
		<meta property="og:url" 		id="fbUrl"		content="https://www.megabox.co.kr/benefit/membership" />
		<meta property="og:title" 		id="fbTitle"	content="멤버십 안내" />
		<meta property="og:description"	id="fbDtls"		content="메가박스의 VIP 멤버십과 혜택을 확인해보세요."/>
		<meta property="og:image" 		id="fbImg"		content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />
     		<link rel="stylesheet" href="/static/pc/dist/megabox.min.css" media="all" />
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
			<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
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
										      <a href="#" title="휴대폰 간편 로그인 선택" target="_blank" title="새창 열림"><span>휴대폰 간편로그인<!--휴대폰 간편로그인--></span> <em>광고<!--광고--></em></a>
												</div>
											</div>
										</div>
										<!--// chk-util -->

										<button id="btnLogin" type="button" class="button purple large btn-login">로그인<!--로그인--></button>

										<div class="link">
											<a href="#" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
											<a href="#" title="회원가입 선택">회원가입<!--회원가입--></a>
											<a href="#" title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
										</div>

										<div class="sns-login">
											<a href="#" lnkgTy="FACEBOOK" title="페이스북으로 로그인 선택"><img src="../../../static/pc/images/member/ico-facebook.png"  alt="페이스북"><!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a>
											<a href="#" lnkgTy="NAVER"    title="네이버로 로그인 선택"><img src="../../../static/pc/images/member/ico-naver.png"     alt="네이버"><!--네이버-->   네이버로 로그인<!--네이버로 로그인--></a>
											<a href="#" lnkgTy="KAKAO"    title="카카오톡으로 로그인 선택" ><img src="../../../static/pc/images/member/ico-kakao.png"    alt="카카오톡"><!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a>
											<a href="#" lnkgTy="PAYCO"    title="페이코로 로그인 선택"><img src="../../../static/pc/images/member/ico-payco.png"     alt="페이코"><!--페이코-->   페이코로 로그인<!--페이코로 로그인--></a>
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
								<a id="aNonMbLogin" href="#" class="button purple btn-modal-open" w-data='600' h-data='320' style="display: none;"></a>
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

<header id="header" >
    <h1 class="ci"><a href="../main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>

    <div class="util-area">
        <div class="left-link">
            <a href="viplounge.do" 	title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="membership.do"	title="멤버십">멤버십</a>
            <a href="#"				title="고객센터">고객센터</a>
        </div>


        <div class="right-link">
            <!-- 로그인전 -->
            <div class="before" style="display:none">
                <a href="#" title="로그인">로그인</a>
                <a href="#" title="회원가입">회원가입</a>
            </div>

            <!-- 로그인후 -->
            <div class="after" style="display:none">
                <a href="#" class="" title="로그아웃">로그아웃</a>
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

    <div class="link-area">
        <a href="#" class="header-open-layer btn-layer-sitemap"	title="사이트맵">사이트맵</a>
        <a href="#" class="header-open-layer btn-layer-search"	title="검색">검색</a>
        <a href="#" class="link-ticket" 						title="상영시간표">상영시간표</a>
        <a href="#" class="header-open-layer btn-layer-mymega" 	title="나의 메가박스">나의 메가박스</a>
    </div>

    <nav id="gnb">
        <ul class="gnb-depth1">
            <li><a href="../movie.do" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="../movie.do"	title="전체영화">전체영화</a></li>
                        <li><a href="#"	title="큐레이션">큐레이션</a></li>
                        <li id="festivalArea" style="display: none;"><a href="/festival" title="영화제">영화제</a></li>
                        <li><a href="#"	title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            
            <li><a href="booking.do" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="#"	title="빠른예매">빠른예매</a></li>
                        <li><a href="#"	title="상영시간표">상영시간표</a></li>
                        <li><a href="#"	title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            
            <li><a href="../theater/list.do" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="../theater/list.do" title="전체극장">전체극장</a></li>
                        <li><a href="../specialtheater/list.do" title="특별관">특별관</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="../event.do" class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="../event.do" title="진행중 이벤트">진행중 이벤트</a></li>
                        <li><a href="#" title="지난 이벤트">지난 이벤트</a></li>
                        <li><a href="#" title="당첨자발표">당첨자발표</a></li>
                    </ul>
                </div>
            </li>
            <!--  스토어 넣음 -->
            <li><a href="../store.do" title="스토어">스토어</a></li>
            <!--  혜택 넣음 -->
            <li><a href="membership.do" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="membership.do" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="discount.do" title="제휴/할인">제휴/할인</a></li>
                    </ul>
                </div>
            </li>
            
        </ul>
    </nav>

	<div id="layer_sitemap" class="header-layer layer-sitemap">
        <!-- wrap -->
        <div class="wrap">
            <a href="" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>

            <p class="tit">SITEMAP</p>

            <div class="list position-1">
                <p class="tit-depth">영화</p>

                <ul class="list-depth">
                    <li><a href="../movie.do" title="전체영화">전체영화</a></li>
                    <li><a href="#" title="큐레이션">큐레이션</a></li>
                    <li><a href="#" title="영화제">영화제</a></li>
                    <li><a href="#" title="무비포스트">무비포스트</a></li>
                </ul>
            </div>


            <div class="list position-2">
                <p class="tit-depth">예매</p>
                <ul class="list-depth">
                    <li><a href="#" title="빠른예매">빠른예매</a></li>
                    <li><a href="#" title="상영시간표">상영시간표</a></li>
                    <li><a href="#" title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
                </ul>
            </div>

            <div class="list position-3">
                <p class="tit-depth">극장</p>

                <ul class="list-depth">
                    <li><a href="../theater/list.do" title="전체극장">전체극장</a></li>
                    <li><a href="../specialtheater/list.do" title="특별관">특별관</a></li>
                </ul>
            </div>

            <div class="list position-4">
                <p class="tit-depth">이벤트</p>

                <ul class="list-depth">
                    <li><a href="../event.do" title="진행중 이벤트">진행중 이벤트</a></li>
                    <li><a href="#" title="지난 이벤트">지난 이벤트</a></li>
                    <li><a href="#" title="당첨자발표">당첨자발표</a></li>
                </ul>
            </div>



            <div class="list position-5">
                <p class="tit-depth">스토어</p>
                <ul class="list-depth">
                    <li><a href="../store.do" title="새로운 상품">새로운 상품</a></li>
                    <li><a href="#" title="메가티켓">메가티켓</a></li>
                    <li><a href="#" title="메가찬스">메가찬스</a></li>
                    <li><a href="#" title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
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
		                    <li><a href=# title="회원정보">회원정보</a></li>
            			
            			
            		
                </ul>
            </div>

            <div class="list position-7">
                <p class="tit-depth">혜택</p>

                <ul class="list-depth">
                    <li><a href="membership.do" title="멤버십 안내">멤버십 안내</a></li>
                    <li><a href="viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a></li>
                    <li><a href="discount.do" title="제휴/할인">제휴/할인</a></li>
                </ul>
            </div>

            <div class="list position-8">
                <p class="tit-depth">고객센터</p>

                <ul class="list-depth">
                    <li><a href="#" 			title="고객센터 홈">고객센터 홈</a></li>
                    <li><a href="#"		title="자주묻는질문">자주묻는질문</a></li>
                    <li><a href="#"	title="공지사항">공지사항</a></li>
                    <li><a href="#"	title="1:1문의">1:1문의</a></li>
                    <li><a href="#"		title="단체/대관문의">단체/대관문의</a></li>
                    <li><a href="#"		title="분실물문의">분실물문의</a></li>
                </ul>
            </div>

            <div class="list position-9">
                <p class="tit-depth">회사소개</p>

                <ul class="list-depth">
                    <li><a href="#" 			target="_blank" title="메가박스소개">메가박스소개</a></li>
                    <li><a href="#" 	target="_blank" title="사회공헌">사회공헌</a></li>
                    <li><a href="#" 			target="_blank" title="홍보자료">홍보자료</a></li>
                    <li><a href="#" 				target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
                    <li><a href="#" 		target="_blank" title="온라인제보센터">온라인제보센터</a></li>
                    <li><a href="#" 					target="_blank" title="자료">IR자료</a></li>
                    <li><a href="#" 				target="_blank" title="인재채용림">인재채용</a></li>
                    <li><a href="#" target="_blank" title="윤리경영">윤리경영</a></li>
                </ul>
            </div>

            <div class="list position-10">
                <p class="tit-depth">이용정책</p>

                <ul class="list-depth">
                    <li><a href="#"	title="이용약관">이용약관</a></li>
                    <li><a href="#"	title="개인정보처리방침">개인정보처리방침</a></li>
                    <li><a href="#"	title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
                </ul>
            </div>

            <div class="ir">
                <a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
            </div>
        </div>
    </div>
    <div id="layer_header_search" class="header-layer layer-header-search"></div>

    



	<div id="layer_mymega" class="header-layer layer-mymege">
    	<a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>
        <div class="wrap" style="display:none">

            <div class="login-after">
                <div class="user-info">
                    <p class="txt">안녕하세요!</p>

                    <p class="info">
                        <!--
                            vip 일때만 출력
                            vip 아닐때는 태그 자체 삭제
                        -->
                       <em class="vip">VIP PREMIUM</em>
                        <em class="name"></em>
                        <span>회원님</span>
                    </p>

                    <div class="last-date">마지막 접속일 : <em></em></div>

                    <!-- vip, 멤버십 없을때는 미 출력  -->
                    <div class="membership">
                        <!-- <i class="iconset ico-header-vip"></i>
                        <i class="iconset ico-header-film"></i>
                        <i class="iconset ico-header-classic"></i> -->
                    </div>

                    <div class="btn-fixed">
                        <a href="#" class="button" title="나의  메가박스">나의  메가박스</a>
                    </div>
                </div>

                <div class="box">
                    <div class="point">
                        <p class="tit">Point</p>

                        <p class="count">
                            0
                        </p>

                        <div class="btn-fixed">
                            <a href="#" class="button" title="멤버십 포인트" >멤버십 포인트</a>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="coupon">
                        <p class="tit">쿠폰/관람권 <!-- <i class="iconset ico-header-new"></i> --></p>

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
                        <p class="tit">예매 <!-- <i class="iconset ico-header-new"></i> --></p>

                        <p class="txt"></p>

                        <div class="btn-fixed">
                            <a href="#" class="button" title="예매내역">예매내역 </a>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="buy">
                        <p class="tit">구매 <!-- <i class="iconset ico-header-new"></i> --></p>

                        <p class="count">
                            <em>0</em>
                            <span>건</span>
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
                    로그인 하시면 나의 메가박스를 만날 수 있어요.<br />
                    영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해 보세요!
                </p>

                <div class="mb50">
                    <a href="#" id="moveLogin" title="로그인" class="button w120px btn-modal-open" w-data='850' h-data='484'>로그인</a>
                </div>

                <a href="#" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
            </div>
        </div>
        <!--// wrap -->

        <div class="ir">
            <a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
        </div>
	</div>
    <!--// 레이어 : 마이페이지 -->

</header>

		<div class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span>
						<a href="membership.do" title="혜택 메인 페이지로 이동">혜택</a>
						<a href="membership.do" title="멤버십 안내 페이지로 이동">메가박스 멤버십</a>
						<a href="membership.do" title="멤버십 안내 페이지로 이동">멤버십 안내</a>
					</div>
<div class="sns-share">
	<a href="#" class="btn btn-common-share" title="공유하기">공유하기 <i class="iconset ico-share-toggle"></i></a>
	<div class="btn-sns-share-wrap">
		<div class="cont-area">
			<div class="btn-sns-share-group">
				<button type="button" title="페이스북 공유하기" class="btn btnSns face">페이스북 <!-- 페이스북 --></button>
				<button type="button" title="밴드 공유하기" class="btn btnSns band">밴드 <!-- 밴드 --></button>
				<button type="button" title="트위터 공유하기" class="btn btnSns twitter">트위터 <!-- 트위터 --></button>
				<button type="button" title="링크 공유하기" class="btn btnSns link">링크공유 <!-- 링크공유 --></button>
			</div>
		</div>
	</div>
</div>
				</div>
			</div>

			<!-- contents -->
			<div id="contents">
				<div class="inner-wrap">

					<h2 class="tit">메가박스 멤버십</h2>

					<div class="tab-list">
						<ul>
							<li class="on"><a href="membership.do" title="멤버십 안내 탭으로 이동">멤버십 안내</a></li>
							<li><a href="viplounge.do" title="VIP LOUNGE 탭으로 이동">VIP LOUNGE</a></li>
						</ul>
					</div>

					<div class="box-slash mt40">
						<p class="tit-pr">MEGABOX MEMBERSHIP</p>

						<p>
							메가박스 멤버십 회원에게만 제공되는 다양한 혜택
						</p>
					</div>

					<h3 class="tit mt70">메가박스 멤버십 혜택</h3>

					<!-- benefit-membership -->
					<div class="benefit-membership" id="mbshipBenefit">
						<div class="box bg-point-save">
							<p class="tit">포인트 적립</p>

							<p class="txt">
								영화 티켓, 매점 상품 구매 시 등급에 따라<br />
								5 ~ 10&#37; 포인트를 적립할 수 있어요
							</p>

							<div class="btn">
								<a href="javascript:void(0)" class="button purple" data-target="#pointSave" title="포인트 적립 상세보기">자세히 보기</a>
							</div>
						</div>

						<div class="box bg-point-present">
							<p class="tit">포인트 선물</p>

							<p class="txt">
								사랑하는 가족, 친구에게 포인트를 선물하세요<br />
								<span>* 상세 내용은 모바일앱에서 확인해 주세요!</span>
							</p>
<!-- PC는 포인트 선물 기능 없어져서 상세 버튼 삭제 -->
<!-- 							<div class="btn"> -->
<!-- 								<a href="" class="button purple">자세히 보기</a> -->
<!-- 							</div> -->
						</div>

						<div class="box bg-point-use">
							<p class="tit">포인트 사용</p>

							<p class="txt">
								보유한 포인트로 원하는 영화 보고<br />
								팝콘도 구매하세요
							</p>

							<div class="btn">
								<a href="javascript:void(0)" class="button purple" data-target="#pointUse" title="포인트 사용 상세보기">자세히 보기</a>
							</div>
						</div>

						<div class="box bg-point-birthday">
							<p class="tit">생일 축하 쿠폰</p>

							<p class="txt">
								회원이라면 누구나 생일 축하 쿠폰을 드려요
							</p>

							<div class="btn">
								<a href="javascript:void(0)" class="button purple" data-target="#birthDayCp" title="생일 축하 쿠폰 상세보기">자세히 보기</a>
							</div>
						</div>

						<div class="box bg-point-vip">
							<p class="tit">VIP LOUNGE</p>

							<p class="txt">
								VIP 회원이라면<br />
								더 많은 추가 혜택을 받을 수 있어요
							</p>

							<div class="btn">
								<a href="/benefit/viplounge" class="button purple" data-target="#vipLounge" title="VIP LOUNGE 상세보기">VIP LOUNGE</a>
							</div>
						</div>

						<div class="box bg-point-special">
							<p class="tit">스페셜 멤버십</p>

							<p class="txt">
								메가박스 멤버십 혜택에<br />
								스페셜 멤버십 추가혜택도 받을 수 있어요
							</p>

							<div class="btn">
								<a href="/curation/specialcontent" class="button purple" title="스페셜 멤버십 상세보기">스페셜멤버십 안내</a>
							</div>
						</div>
					</div>
					<!--// benefit-membership -->


					<h3 class="tit mt70">메가박스 멤버십 포인트 제도 변경</h3>

					<ul class="dot-list">
						<li>2020년 2월 4일부터 ‘신포인트’가 적립됩니다. 새로워진 포인트제도와 혜택을 확인해보세요!</li>
					</ul>

					<!-- benefit-membership -->
					<div class="benefit-membership new mt15">
						<div class="box bg-new-point-save">
							<p class="tit">적립</p>

							<ul class="dot-list">
								<li>영화 예매 시 5&#37; 적립(VIP 최대 10&#37;)</li>
								<li>매점 상품 2&#37; 적립</li>
							</ul>
						</div>

						<div class="box bg-new-point-use">
							<p class="tit">사용</p>

							<ul class="dot-list">
								<li>영화 티켓 또는 매점 구매(부분 사용 불가)</li>
								<li>포토카드 구매</li>
							</ul>
						</div>
					</div>
					<!--// benefit-membership -->


					<ul class="dot-list mt20 mb10">
						<li>기존 메가박스 멤버십 포인트 안내</li>
					</ul>

					<div class="box-gray benefit-point-info">
						<p class="txt">2020년 2월 4일부터 기존 메가박스 멤버십 포인트 적립이 종료됩니다.<br />기존에 적립된 구포인트는 사용만 가능하며, 새롭게 적립되는 포인트로 합치거나 이관하여 사용할 수 없습니다.</p>
					</div>

					<h3 class="tit mt70" id="pointSave">포인트 적립</h3>

					<h4 class="tit">포인트 기본 적립</h4>

					<ul class="dot-list">
						<li>영화 티켓 구매 시 유료 결제 금액의 <em class="font-gblue">5~10%</em> 적립
							<ul class="dash-list font-gray">
								<li>일반회원 : 5% 적립</li>
								<li>VIP회원 : 10% 적립 (단, VIP 선정 기준은 5%만 반영)</li>
							</ul>
						</li>
						<li>매점 유료 결제 금액의 <em class="font-gblue">2%</em> 적립</li>
						<li>결제가 완료된 후 적립 예정 포인트로 적립되며 <em class="font-gblue">영화의 경우 상영일 익일, 매점의 경우 구매일 익일</em> 사용 가능한 포인트(가용 포인트) 로 전환됩니다.</li>
						<li>회원이 로그인 후 온라인 서비스를 이용 하거나 현장 매표소, 키오스크에서 멤버십 카드 제시 또는 회원임을 확인 할 수 있는 정보를 제공하여야 포인트가 적립됩니다.</li>
						<li>메가박스 및 제휴사 할인, 포인트 결제 등을 통해 할인 받은 금액을 제외한 실제 고객님께서 현금, 신용카드 등으로 유료 결제한 금액 기준으로 적립됩니다.</li>
						<li>일부 영화, 상품, 극장, 결제 수단의 경우 적립이 되지 않거나 별도의 적립률이 적용될 수 있으며 상세 내용은 해당 상품, 극장 등에 별도 공지합니다.</li>
						<li>VIP 선정 시 기준이 되는 포인트입니다.</li>
						<li>포인트 적립은 티켓에 노출된 영화 시작 시간 이전까지만 가능하며, 영화 상영 및 매점 상품 구매 이후 사후 적립은 불가능합니다.</li>
					</ul>

					<h4 class="tit mt30">포인트 적립 제외 극장</h4>
					<ul class="dot-list">
						<li>일부 극장의 경우 매점 구매 시 포인트 적립이 불가합니다.
							<ul class="dash-list font-gray">
								<li>매점 적립 제외 극장: 경산하양, 경주, 공주, 김천, 남양주, 남원, 남춘천, 북대구(칠곡), 속초, 순천, 아트나인, 안산중앙, 원주, 인천논현, 제천, 진천, 첨단, 청주사창, 충주, 파주금촌</li>
							</ul>
						</li>
						<li>더 부티크 프라이빗 관람 시 포인트 적립이 불가합니다.</li>
					</ul>

					<h4 class="tit mt30">기타 적립 안내</h4>
					<ul class="dot-list">
						<li>단체 영화 관람 및 매점 구매를 통해 가격 할인을 받은 경우 포인트는 적립되지 않습니다.</li>
						<li>메가박스에서 발행된 관람권은 영화 가격과 무관하게 관람권이 판매된 가격 기준으로 포인트가 적립됩니다.</li>
						<li>모바일 쿠폰(기프티콘, 쇼 등)으로 결제된 티켓은 포인트 적립이 제외됩니다.</li>
						<li>위탁예매사(인터파크, YES24 등)을 통한 티켓 예매 시 회원정보가 동일할 경우 포인트가 적립됩니다.</li>
					</ul>

					<h3 class="tit mt70" id="pointUse">포인트 사용</h3>

					<h4 class="tit">포인트 사용</h4>

					<ul class="dot-list">
						<li>적립된 포인트는 사용 가능한 보유포인트 내에서 영화, 매점, 포토카드 상품 구매 시 <span class="font-gblue">상품 정가 전액을 기준</span>으로 포인트를 차감하여 사용할 수 있습니다.</li>
					</ul>

					<div class="table-wrap mt10">
						<table class="data-table a-c">
							<caption>회원상품, 구분, 구포인트, 신포인트 항목을 가진 포인트 사용 표</caption>
							<colgroup>
								<col style="width:140px;" />
								<col />
								<col />
								<col />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">회원상품</th>
									<th scope="col">구분</th>
									<th scope="col">구포인트</th>
									<th scope="col">신포인트</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td rowspan="2">영화</td>
									<td>사용 가능 요일</td>
									<td>월~금(공휴일 제외)</td>
									<td>월~일(요일 무관)</td>
								</tr>
								<tr>
									<td>차감 포인트</td>
									<td>티켓 정가 100%</td>
									<td>티켓 정가 100%</td>
								</tr>
								<tr>
									<td rowspan="2">매점</td>
									<td>사용 가능 상품</td>
									<td>직원 통해 포인트 차감 &rarr; 쿠폰으로 변경 후 사용<br />(오리지널 팝콘 R, 콤보 2천원 할인 쿠폰)</td>
									<td>매점 전체(일부 상품 제외)</td>
								</tr>
								<tr>
									<td>차감 포인트</td>
									<td>상품별로 지정</td>
									<td>매점 상품 정가 100%<br />(업그레이드 금액 제외)</td>
								</tr>
								<tr>
									<td>포토카드</td>
									<td>차감 포인트</td>
									<td>1,000 P</td>
									<td>1,000 P</td>
								</tr>
							</tbody>
						</table>
					</div>

					<ul class="dot-list mt10">
						<li>예시)
							<ul class="dash-list font-gray">
								<li>평일 조조 영화 정가 7천원 관람 시 7천 포인트 차감</li>
								<li>매점 러브콤보 구매 시 기본 판매가 8천5백원에 대한 8천5백 포인트 차감</li>
							</ul>
						</li>
						<li>포인트는 현금 또는 신용카드 등 다른 결제 수단과 합산하여 사용할 수 없습니다.</li>
						<li>메가박스 및 제휴사 할인, 포인트 결제 등 할인 수단이 적용된 티켓, 매점 상품은 포인트로 구매하실 수 없습니다.</li>
						<li>오프라인에서 포인트 사용 시 멤버십 카드 제시가 필수이며, 개인별로 설정된 포인트 비밀번호 인증이 필요합니다.</li>
						<li>특별콘텐트(오페라, 팝콘클래식, 기획전, GV, 라이브중계 등) 의 경우 포인트로 영화관람이 불가합니다.</li>
						<li>매점 상품 중 극장에 따라 일부 상품은 포인트 사용이 불가합니다.</li>
						<li>더 부티크 프라이빗 관람 시 포인트 사용이 불가합니다. </li>
					</ul>

					<h4 class="tit mt30">포인트 사용 제외 극장</h4>

					<ul class="dot-list">
						<li>일부 극장의 경우 매점 상품 구매 시 포인트 사용이 불가합니다.
							<ul class="dash-list font-gray">
								<li>사용 제외 극장: 경산하양, 경주, 공주, 김천, 남양주, 남원, 남춘천, 북대구(칠곡), 속초, 순천, 아트나인, 안산중앙, 원주, 인천논현, 제천, 진천, 첨단, 청주사창, 충주, 파주금촌</li>
							</ul>
						</li>
					</ul>

					<h3 class="tit mt70">유효기간 및 소멸</h3>

					<h4 class="tit">포인트 유효기간</h4>

					<ul class="dot-list">
						<li>기본 적립 포인트 : 적립일로부터 24개월이 지난 해당월 말일  (티켓 및 매점 유료 구매 시)</li>
						<li>선물 받은 포인트 : 선물 받은 날로부터 3개월이 지난 해당월 말일</li>
						<li>이벤트 적립 포인트 : 이벤트 마다 유효기간이 상이(개별 확인 필요)</li>
					</ul>

					<h4 class="tit mt30">포인트 소멸</h4>

					<ul class="dot-list">
						<li>유효기간이 경과된 포인트는 매월 말일 영업 종료 후 포인트가 자동 소멸됩니다.</li>
						<li>소멸 기준은 잔여 가용 포인트 중 유효기간이 가장 짧은 포인트부터 소멸되며, 소멸된 포인트는 복구되지 않습니다.</li>
						<li>
							보유 포인트의 소멸 예정일이 도래할 경우, 포인트 소멸과 관련된 내용을 최소 15일 전에 문자 또는 이메일 등으로 고지합니다.<br />
							또한, 홈페이지 및 모바일 웹/앱 로그인 시 소멸 예정 포인트를 확인하실 수 있습니다.
						</li>
					</ul>

					<h3 class="tit mt70" id="birthDayCp" >생일 축하 쿠폰</h3>

					<h4 class="tit">생일 축하 쿠폰 증정!</h4>

					<ul class="dot-list">
						<li>생일 쿠폰은 메가박스 회원에게만 제공됩니다.</li>
						<li>생일 쿠폰은 1년에 1회 지급되며, 한 번 발급되면 추가 발급되지 않습니다.</li>
						<li>
							생일 쿠폰은 회원정보에 등록된 생일을 기준으로 발급됩니다.
							<ul class="dash-list font-gray">
								<li>생일 2주전 쿠폰이 발행되며, 유효기간은 발행일로부터 4주입니다. (예 : 3월 16일 생일인 경우 3월 2일 발급, 3월 30일까지 사용 가능)</li>
							</ul>
						</li>
						<li>발행된 쿠폰은 로그인 후 ‘나의 메가박스 &gt; 쿠폰’에서 확인 가능합니다.</li>
						<li>쿠폰 발급일 기준, 정상 회원에게만 제공됩니다. (쿠폰 발급일 이후 가입, 휴면 회원 상태 고객 등 제외)</li>
						<li>쿠폰 내용, 지급 일정, 사용 방법 등은 내부 사정에 따라 변경될 수 있습니다.</li>
					</ul>

					<h3 class="tit mt70">멤버십 카드</h3>

					<ul class="dot-list">
						<li>극장 이용 시 멤버십 카드를 꼭 제시해주세요!</li>
					</ul>

					<h4 class="tit mt30">모바일 카드</h4>

					<div class="box-benefit-membership-card mt05">
						<img src="../../../static/pc/images/benefit/img-card-mobile.png" alt="모바일 카드" />
					</div>

					<ul class="dot-list mt05">
						<li>메가박스 회원가입 시 모바일 카드가 자동 발급됩니다.</li>
					</ul>

					<h4 class="tit mt30">실물 카드</h4>

					<div class="box-benefit-membership-card mt05">
						<img src="../../../static/pc/images/benefit/img-card-real-01.png" alt="실물 카드 : vip" onerror="noImg(this);"/>
						<img src="../../../static/pc/images/benefit/img-card-real-02.png" alt="실물 카드 : vvip" onerror="noImg(this);"/>
					</div>

					<ul class="dot-list mt05">
						<li>플라스틱 카드 수령을 원하시는 분은 메가박스 현장 매표소에서 받으실 수 있습니다.</li>
						<li>플라스틱 카드를 수령하신 경우 홈페이지 ‘나의 메가박스>멤버십 포인트>멤버십 카드관리’에서 등록 후 이용하실 수 있습니다.</li>
					</ul>
				</div>
			</div>
		</div>

        



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
                <li><a href="#" title="회사소개 페이지로 이동">회사소개</a></li>
                <li><a href="#" title="인재채용 페이지로 이동">인재채용</a></li>
                <li><a href="#" title="사회공헌 페이지로 이동">사회공헌</a></li>
                <li><a href="#" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
                <li><a href="#" title="이용약관 페이지로 이동">이용약관</a></li>
                <li class="privacy"><a href="/support/privacy" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
                <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
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
                <a href="#" target="_blank" title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
                <a href="#" target="_blank" title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
                <a href="#" target="_blank" title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagram">인스타그램</i></a>
                <a href="#" target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i class="iconset ico-googleplay">구글플레이</i></a>
                <a href="#" target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i class="iconset ico-appstore">앱스토어</i></a>
            </div>
        </div>
    </div>
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
    </div>
    <form id="mainForm">
    </form>
</body>
</html>