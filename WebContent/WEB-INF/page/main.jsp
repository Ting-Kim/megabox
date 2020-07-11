<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="name"			id="metaTagTitle"	content="라이프시어터,메가박스"/>
<meta property="description"	id="metaTagDtls"	content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. "/>
<meta property="keywords"		id="metaTagKeyword"	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox"/>
<meta property="fb:app_id" 		id="fbAppId" 	content="546913502790694"/>
<meta property="og:site_name" 	id="fbSiteName"	content="메가박스"/>
<meta property="og:type" 		id="fbType"		content="movie"/>
<meta property="og:url" 		id="fbUrl"		content="main.html" />
<meta property="og:title" 		id="fbTitle"	content="라이프시어터,메가박스" />
<meta property="og:description"	id="fbDtls"		content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. "/>
<meta property="og:image" 		id="fbImg"		content="../img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />
<link rel="stylesheet" href="css/megabox.min.css" media="all" />
<link rel="stylesheet" href="css/main.css" media="all" />
<link rel="stylesheet" href="css/megabox.netfunnel.min.css" media="all" />
<script src="static/pc/dist/jquery-1.12.4.min.js"></script>
<script src="static/pc/dist/jquery-ui.1.12.1.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="shortcut icon" href="static/pc/images/favicon.ico" />
<title>라이프시어터, 메가박스</title>
</head>
<body>
<form id="loginForm">
	<input type="hidden" name="redisKey" value="">
	<input type="hidden" name="menuId" value="">
	<input type="hidden" name="mappingId" value="">
	<input type="hidden" name="rtnParam" value="">
	<input type="hidden" name="certType" value="">
	<input type="hidden" name="preUrl" value="">

	<!-- 좌석도 로그인 프로세스 여부PARAM-->
	<input type="hidden" name="bokdLoginAt" value="">
	<input type="hidden" name="bokdLoginParam" value="">

	<input type="hidden" name="nonMbCertRedisKey" value="">
	<input type="hidden" name="nonMbCertedMblpNo" value="">
	<input type="hidden" name="reloadYn" value="">
	<input type="hidden" name="validDataRevisnYn" value="N">
</form>

<div style="display:none;">
<a id="loginPupupATag" href="#layer_login_select" class="button active btn-modal-open" w-data="850" h-data="484"></a>
</div>
<section id="layer_login_select" class="modal-layer" style="z-index: 501;">
<a href="" class="focus">레이어로 포커스 이동 됨</a>
<a href="#" class="focus" title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨</a>

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
		<div class="tab-cont-wrap">
					<!-- tab 회원 로그인 -->
		<div id="login_tab_01" class="tab-cont on"><a href="" class="ir"></a><a href="" class="ir" title="로그인"></a>

			<div class="login-member col-2">
					<!-- col-wrap -->
				<div class="col-wrap">
					<div class="col left">
						<div class="login-input-area">
						<input autocomplete="off" id="ibxLoginId" maxlength="20" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim">
						<input autocomplete="off" id="ibxLoginPwd" maxlength="20" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15">
							<div class="alert"></div>
										<!-- chk-util -->
							<div class="chk-util">
								<div class="left">
									<input id="chkIdSave" type="checkbox"> <label for="chkIdSave">아이디 저장<!--아이디 저장--></label>
								</div>

								<div class="right">
								</div>
							</div>
										<!--// chk-util -->
							<button id="btnLogin" type="button" class="button purple large btn-login" disabled="disabled">로그인</button>

							<div class="link">
								<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
								<a href="/join" title="회원가입 선택">회원가입<!--회원가입--></a>
								<a href="/on/oh/ohg/MbLogin/viewNonMbLogin.rest" title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
							</div>

							<div class="sns-login">
								<a href="javaScript:void(0)" lnkgty="FACEBOOK" title="페이스북으로 로그인 선택"><img src="" alt="페이스북"> 페이스북으로 로그인</a>
								<a href="javaScript:void(0)" lnkgty="NAVER" title="네이버로 로그인 선택"><img src="" alt="네이버">  네이버로 로그인</a>
								<a href="javaScript:void(0)" lnkgty="KAKAO" title="카카오톡으로 로그인 선택"><img src="" alt="카카오톡"> 카카오톡으로 로그인</a>
								<a href="javaScript:void(0)" lnkgty="PAYCO" title="페이코로 로그인 선택"><img src="" alt="페이코"> 페이코로 로그인</a>
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

					<!-- tab 비회원 로그인 -->
					<div id="login_tab_02" class="tab-cont"><a href="" class="ir"></a><a href="" class="ir" title="비회원 로그인"></a>

						<div class="login-member col-2">
							<!-- col-wrap -->
							<div class="col-wrap">
								<div class="col left">

									<div class="no-member-login-table">
										<table summary="이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
											<caption>이름, 생년월일, 휴대폰번호, 인증번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표</caption>
											<colgroup>
												<col style="width:110px;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">	<label for="ibxNonMbNm">이름</label></th>
													<td><input maxlength="20" id="ibxNonMbNm" type="text" placeholder="이름" class="input-text"></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbByymmdd">생년월일<!--생년월일--></label></th>
													<td><input maxlength="6" id="ibxNonMbByymmdd" type="text" placeholder="생년월일 앞6자리" class="input-text"></td>
												</tr>
												<tr>
													<th scope="row"><label for="ibxNonMbTelno">휴대폰번호<!--휴대폰번호--></label></th>
													<td>
													<div class="hp-input">
														<input maxlength="11" id="ibxNonMbTelno" type="text" placeholder="- 없이 입력" class="input-text">
														<button id="nonMbCertNoSend" type="button" class="button gray" disabled="disabled">인증요청</button>
													</div>
													<div id="mblpInput-error-text" class="alert"></div>
													</td>
												</tr>
												<tr id="nonMbCertRow">
													<th scope="row"><label for="mblpCharCertNo">인증번호</label></th>
													<td>
														<div class="chk-num">
															<div class="line">
																<input maxlength="4" id="mblpCharCertNo" type="text" class="input-text">
																<div class="time-limit" id="timer">3:00</div>
															</div>
															<button id="btnMblpCharCert" type="button" class="button purple" disabled="disabled">확인</button>
														</div>
														<div id="nonMbCert-error-text" class="alert"></div>
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbPwd">비밀번호</label>
													</th>
													<td>
														<input maxlength="4" id="ibxNonMbPwd" type="password" placeholder="비밀번호(숫자 4자리)" class="input-text">
													</td>
												</tr>
												<tr>
													<th scope="row">
														<label for="ibxNonMbPwdConfirm">비밀번호확인</label>
													</th>
													<td>
														<input maxlength="4" id="ibxNonMbPwdConfirm" type="password" placeholder="비밀번호(숫자 4자리) 확인" class="input-text">
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
												<input type="radio" id="chkNonMbBokdPersonInfoProcTrue" name="chkNonMbBokdPersonInfoProc">
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
								<button id="btnChkNonMbLogin" type="button" class="button purple" disabled="disabled">확인</button>
								<a id="aNonMbLogin" href="#layer_no_member_chk" class="button purple btn-modal-open" w-data="600" h-data="320" style="display: none;"></a>
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

	<section id="layer_no_member_chk" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
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
							<col style="width:80px;">
							<col>
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
				<button id="btnNonMbLogin" type="button" class="button purple small" disabled="disabled">확인</button>
			</div>

			<button id="btnNonMbModalClose" type="button" class="btn-modal-close">레이어 닫기</button>
		</div>
	</section>

<header id="header" class="main-header no-bg none-ad">
    <h1 class="ci"><a href="main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
    <div class="util-area">
        <div class="left-link">
            <a href="#" title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="#" title="멤버십">멤버십</a>
            <a href="#" title="고객센터">고객센터</a>
        </div>
	
        <div class="right-link">
            <!-- 로그인전 -->
            <div class="before" style="">
                <a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a>
                <a href="#" title="회원가입">회원가입</a>
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
						<div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
							<ul class="list">
								<li class="no-list">
									알림 내역이 없습니다.
								</li>
							</ul>
						</div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
						<div class="notice-list-more">
							<button type="button" class="button btn-more-notice-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
						</div>
						<!--// scroll -->
						<button type="button" class="btn-close-header-notice">알림 닫기</button>
				</div>

            </div>

            <a href="#">빠른예매</a>
        </div>
    </div>
    </div>
     <div class="link-area">
        <a href="#" class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
        <a href="#" class="header-open-layer btn-layer-search" title="검색">검색</a>
        <a href="#" class="link-ticket" title="상영시간표">상영시간표</a>
        <a href="#" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
    </div>
    <nav id="gnb" class="">
        <ul class="gnb-depth1">
            <li><a href="movie.do" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="movie.do" title="전체영화">전체영화</a></li>
                        <li><a href="#" title="큐레이션">큐레이션</a></li>
                        
                        <li id="festivalArea" style="display: none;"><a href="#" title="영화제">영화제</a></li>
                        <li><a href="#" title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="#" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="#" title="빠른예매">빠른예매</a></li>
                        <li><a href="#" title="상영시간표">상영시간표</a></li>
                        <li><a href="#" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="theater/list.do" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="theater/list.do" title="전체극장">전체극장</a></li>
                        <li><a href="specialtheater/list.do" title="특별관">특별관</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="event.do"  class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="event.do"  title="진행중 이벤트">진행중 이벤트</a></li>
                        <li><a href="#"  title="지난 이벤트">지난 이벤트</a></li>
                        <li><a href="#"  title="당첨자발표">당첨자발표</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="store.do"  class="gnb-txt-store" title="스토어">스토어</a></li>
            <li><a href="benefit/membership.do" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="benefit/membership.do" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="benefit/discount.do" title="제휴/할인">제휴/할인</a></li>
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
                    <li><a href="movie.do" title="전체영화">전체영화</a></li>
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


<!--  극장 끝!! -->
            <div class="list position-3">
                <p class="tit-depth">극장</p>
                <ul class="list-depth">
                    <li><a href="theater/list.do" title="전체극장">전체극장</a></li>
                    <li><a href="specialtheater/list.do" title="특별관">특별관</a></li>
                </ul>
            </div>
<!--  !!극장 끝!! -->


            <div class="list position-4">
                <p class="tit-depth">이벤트</p>
                <ul class="list-depth">
                    <li><a href="event.do"  title="진행중 이벤트">진행중 이벤트</a></li>
                    <li><a href="#"  title="지난 이벤트">지난 이벤트</a></li>
                    <li><a href="#"  title="당첨자발표">당첨자발표</a></li>
                </ul>
            </div>

            <div class="list position-5">
                <p class="tit-depth">스토어</p>
                <ul class="list-depth">
                    <li><a href="store.do"  title="새로운 상품">새로운 상품</a></li>
                    <li><a href="#"  title="메가티켓">메가티켓</a></li>
                    <li><a href="#"  title="메가찬스">메가찬스</a></li>
                    <li><a href="#"  title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
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
                    <li><a href="benefit/membership.do" title="멤버십 안내">멤버십 안내</a></li>
                    <li><a href="benefit/viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a></li>
                    <li><a href="benefit/discount.do" title="제휴/할인">제휴/할인</a></li>
                </ul>
            </div>
		<!-- !!!!멤버쉽끝!!! -->


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
    <div id="layer_mymega" class="header-layer layer-mymege">
    	<a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>

        <!-- wrap -->
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
                            <a href="#" class="button" title="멤버십 포인트">멤버십 포인트</a>
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
                        <p class="tit">예매</p>

                        <p class="txt"></p>

                        <div class="btn-fixed">
                            <a href="#" class="button" title="예매내역">예매내역 </a>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="buy">
                        <p class="tit">구매</p>

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
                    로그인 하시면 나의 메가박스를 만날 수 있어요.<br>
                    영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해 보세요!
                </p>

                <div class="mb50">
                    <a href="#layer_login_common" id="moveLogin" title="로그인" class="button w120px btn-modal-open" w-data="850" h-data="484">로그인</a>
                </div>
                <a href="#" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
            </div>
        </div>

        <div class="ir">
            <a href="" class="layer-close" title="레이어닫기">레이어닫기</a>
        </div>
	</div>
</header>
<form name="detailForm" id="detailForm" method="post">
<input type="hidden" name="rpstMovieNo" id="rpstMovieNo">
</form>
<form name="boxoForm" id="boxoForm" method="post" onsubmit="return fn_chkBoxOffice();">
<input type="hidden" name="ibxMovieNmSearch" id="ibxMovieNmSearch">
</form>
<div class="container main-container area-ad">

	<div id="contents">
		<div class="main-page">
			<div class="main-notice-layer" style="display:none;">
							<div class="img">
								<a title="<메가7포인트 위크> 포인트로 최대 77% OFF!" href="https://megabox.co.kr/event/detail?eventNo=8485"><img src="https://img.megabox.co.kr/SharedImg/frontBanner/2020/07/01/wTDhcssdkkFuRJdrhbnNrbpanpSecvav.jpg" alt="<메가7포인트 위크> 포인트로 최대 77% OFF!" onerror="noImg(this, 'main');"></a>
							</div>
						<div class="util">
						<input type="checkbox" id="no_see">
						<label for="no_see" id="label_no_see">다시 보지 않기</label>
						<button type="button" class="btn-close-main-notice">메인 공지 닫기</button>
					</div>
				</div>
			<div id="main_section01" class="section main-movie on">
				<div class="bg">
					<div class="bg-pattern"></div>
					<img src="https://img.megabox.co.kr/SharedImg/2020/06/26/Iqs6FGbxVHJoFt0yIkWs16RsfjnyWIEu_380.jpg" alt="반도_2차포스터_01.jpg" onerror="noImg(this, 'main');">
					</div>

				<div class="cont-area">
					<div class="tab-sorting">
						<button type="button" class="on" sort="boxoRankList" name="btnSort">박스오피스</button>
					</div>

					<a href="movie.do" class="more-movie" title="더 많은 영화보기">
						더 많은 영화보기 <i class="iconset ico-more-corss gray"></i>
					</a>
					<div class="main-movie-list">
						<ol class="list">
										<li name="li_accmAdncList" style="display:none;" class="first">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">1<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/06/02/xIBdAOS5lJNBe1CBXovcV1WYE9Q6DWPV_420.jpg" alt="#살아있다" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">내용</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">6.9<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20019200">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수
														</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
										<li name="li_accmAdncList" style="display:none;" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">2<span class="ir">위</span></p>
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/06/15/pjraLryYt5zQ1HEf6axtAdkXRhfhRZTZ_420.jpg" alt="결백" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">내용</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">8.6<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20003500">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
										<li name="li_accmAdncList" style="display:none;" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">3<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/05/07/FPu782r61QMPQ44Yr0YdHbBTwF5Ags94_420.jpg" alt="트롤: 월드 투어" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">내용</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20003900">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>

										<li name="li_accmAdncList" style="display:none;" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">4<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2018/C6/013959-C07F-401A-AAC0-CA9A76DB48AE.large.jpg" alt="스타 이즈 본" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">내용</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9.1<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="01438700">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수
														</button>
                                                <div class="case">
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
										<li name="li_boxoRankList" class="first">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">1<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/06/26/IMRLp64rBXADlKOBW8GecnH6f4ggmFcG_420.jpg" alt="반도" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap" style="display: none; opacity: 1;">
														<div class="summary">내용</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">0<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20021300">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

										<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
										<li name="li_boxoRankList" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">2<span class="ir">위</span></p>
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/06/25/3gb42ssCByzttkbWdwXtePY3L4DIQjTW_420.jpg" alt="밤쉘: 세상을 바꾼 폭탄선언" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap" style="display: none;">
													<div class="summary">내용</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9.5<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20007000">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
										<li name="li_boxoRankList" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">3<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/06/02/xIBdAOS5lJNBe1CBXovcV1WYE9Q6DWPV_420.jpg" alt="#살아있다" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap" style="display: none; opacity: 1;">
													<div class="summary">내용</div>

													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">6.9<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20019200">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수
														</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
										<li name="li_boxoRankList" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">4<span class="ir">위</span></p>
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/06/23/4jr7i0mDwxOpILVarLlS05gmjZt8GiPp_420.jpg" alt="[시네도슨트] 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap" style="display: none; opacity: 1;">
													<div class="summary">
														내용
													</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">0<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20028000">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                    <!-- 상영예정 예매 -->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
						
										<li name="li_megaScoreList" style="display:none;" class="first">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">1<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2019/02/2B617F-FEDB-4722-B3D2-C8238C1339D0.large.jpg" alt="보희와 녹양" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">
														내용
													</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9.9<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="01568700">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

										<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
										<li name="li_megaScoreList" style="display:none;" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">2<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2019/E1/3AEA44-BAD3-4D2E-BB68-8490F6523BA7.large.jpg" alt="가버나움" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">
														내용
													</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9.9<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="01502700">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수
														</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

										<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
										<li name="li_megaScoreList" style="display:none;" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">3<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2016/BB/613A6D-2389-4946-BD85-29155BDEE2FF.large.jpg" alt="다가오는 것들" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">
														내용
													</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9.9<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="01092700">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
										<li name="li_megaScoreList" style="display:none;" class="">
											<a href="#" class="movie-list-info" title="영화상세 보기">
												<p class="rank">4<span class="ir">위</span></p>
										      	<img src="https://img.megabox.co.kr/SharedImg/2020/06/15/mkuTBD77ntyhS0FQUuZcYX03Fh3Cur6K_420.jpg" alt="[오페라] 아크나텐 @The Met" class="poster" onerror="noImg(this, 'main');">
							                      	<div class="wrap">
													<div class="summary">
														내용
													</div>
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9.6<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="20025700">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														좋아요한수</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="#" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 박스오피스 종료 -->
								</ol>
					</div>
					<!--// main-movie-list -->

					<div class="search-link">
						<div class="cell">
							<div class="search">
								<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" class="input-text" id="movieName">
								<button type="button" class="btn" id="btnSearch"><i class="iconset ico-search-w"></i> 검색</button>
							</div>
						</div>

						<div class="cell"><a href="#" title="상영시간표 보기"><i class="iconset ico-schedule-main"></i> 상영시간표</a></div>
						<div class="cell"><a href="movie.do" title="박스오피스 보기"><i class="iconset ico-boxoffice-main"></i> 박스오피스</a></div>
						<div class="cell"><a href="#" title="빠른예매 보기"><i class="iconset ico-quick-reserve-main"></i> 빠른예매</a></div>
					</div>
					<div class="moving-mouse">
						<img class="iconset" alt="" src="/img/ico-mouse.png" style="top: 10px;">
					</div>
				</div>
			</div>
			<div id="main_section02" class="section main-benefit">
				<!-- wrap -->
				<div class="wrap">
					<!-- 혜택 시작 -->
					<div class="tit-util">
							<h2 class="tit">혜택</h2>
							<a href="#"  class="btn-more-cross purple" title="혜택 더보기">더보기</a>
						</div>
						<div class="slider main-condition">
							<div class="slider-view" style="width: 1100px;">
								<div class="cell" style="display: block; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 0px; opacity: 1;"><a href="#" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/30/oH2Uzq7dWWj6sv3WyUleFH8qS8xbb9dZ.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 300px; opacity: 1;"><a href="#" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/30/VZXUprYvo8Qx3fUCa6Kzb1tlBxmYGowz.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="#" target="_self" title="메가박스 오리지널 티켓북 출시"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/jIx6azAbreahaBC4Ax1uCtovoUWu3Cky.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="#" target="_self" title="메가박스 오리지널 티켓북 출시"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/J907IQ97HGyZbAU8IYEijq0FAx2QckCd.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								</div>
							<div class="slider-control">

								<div class="page"><span class="on" style="width:50%"></span><span class="" style="width:50%"></span></div>

								<div class="util">
									<button type="button" class="btn-prev" disabled="true" style="opacity: 0.5;">이전 이벤트 보기</button>
									<button type="button" class="btn-next" style="opacity: 1;">다음 이벤트 보기</button>

									<button type="button" class="btn-pause on">일시정지</button>
									<button type="button" class="btn-play">자동재생</button>
								</div>

								<div class="page-count">1 / 2</div>

							</div>
						</div>


						<div class="brn-ad">
							<div class="banner">
								<div class="size">
											<a href="#" data-no="8355" data-netfunnel="N" class="eventBtn" title="">
												<img src="https://img.megabox.co.kr/SharedImg/event/2020/06/16/8HvrPS6EUBIVnqrk1CUBzmYvqbO7fY2L.jpg" alt="[KB RAPBEAT FESTIVAL 2020 X 메가박스] 관람 패키지 이벤트" onerror="noImg(this, 'main');">
												</a>
										</div>
										<div class="size small">
											<a href="#" data-no="8117" data-netfunnel="N" class="eventBtn" title="">
												<img src="https://img.megabox.co.kr/SharedImg/event/2020/02/11/ZDfCOz9hSvsotF2pjEuSdC8Lsl6R9jzH.jpg" alt="[코엑스] 더 부티크 프라이빗" onerror="noImg(this, 'main');">
												</a>
										</div>
									</div>
						</div>
					<!-- 혜택 종료 -->

					<div class="menu-link">
						<div class="cell vip"><a href="#" title="VIP LOUNGE 페이지로 이동">VIP LOUNGE</a></div>
						<div class="cell membership"><a href="#" title="멤버십 페이지로 이동">멤버십</a></div>
						<div class="cell card"><a href="#" title="할인카드안내 페이지로 이동">할인카드안내</a></div>
						<div class="cell event"><a href="#"  title="이벤트 페이지로 이동">이벤트</a></div>
						<div class="cell store"><a href="#"  title="스토어 페이지로 이동">스토어</a></div>
					</div>

					<!-- grand-open -->
					<div class="grand-open">
						<p class="tit">
							<span>LIFE THEATER MEGABOX</span>
							<strong>GRAND<br>OPENING</strong>
						</p>

						<div class="open-cont">

							<div class="open-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>

							<div class="open-control">
								<button type="button" class="open-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전 이벤트 보기</button>
								<button type="button" class="open-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음 이벤트 보기</button>

								<button type="button" class="open-pause on">일시정지</button>
								<button type="button" class="open-play">자동재생</button>
							</div>

							<div class="count-num">
								<span title="현재 페이지" class="active">1</span> /
								<span title="전체 페이지" class="total">1</span>
							</div>

							<div class="open-swiper swiper-container-initialized swiper-container-horizontal">
								<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
									<div class="cell swiper-slide swiper-slide-active" style="width: 242.333px;">
											<a href="#" data-no="8448" data-netfunnel="" class="eventBtn new" title="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label">
													<!-- 지점 상태에 따른 노출 문구 설정-->
													<em>신규오픈</em><!-- 코드선택일 경우 (신규오픈,리뉴얼오픈,오픈예정)-->
														</span>

												<p class="area">
													<span>부산/대구/경상</span>
													<strong> 창원내서</strong>
												</p>

												<p class="date">20.06.24</p>

												<img src="/static/pc/images/common/bg/bg-noimage-main.png" alt="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN!" onerror="noImg(this, 'main');"> <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
											</a>
										</div>
									<div class="cell swiper-slide swiper-slide-next" style="width: 242.333px;">
											<a href="#" data-no="8447" data-netfunnel="" class="eventBtn new" title="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label">
													<em>신규오픈</em>
														</span>
												<p class="area">
													<span>대전/충청/세종</span>
													<strong> 세종청사</strong>
												</p>

												<p class="date">20.06.24</p>

												<img src="/static/pc/images/common/bg/bg-noimage-main.png" alt="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN!" onerror="noImg(this, 'main');"> <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
											</a>
										</div>
									<div class="cell swiper-slide" style="width: 242.333px;">
											<a href="#" data-no="8446" data-netfunnel="" class="eventBtn new" title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label">
													<em>신규오픈</em>
														</span>

												<p class="area">
													<span>대전/충청/세종</span>
													<strong> 대전현대아울렛</strong>
												</p>

												<p class="date">20.06.24</p>

												<img src="/static/pc/images/common/bg/bg-noimage-main.png" alt="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN!" onerror="noImg(this, 'main');"> <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
											</a>
										</div>
									</div>
							<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
						</div>
					</div>
				</div>
			</div>
			<!-- ---------큐레이션 ------------------ -->
			<div id="main_section03" class="section main-curation">
				<div class="wrap">
					<div class="tit-util">
						<h2 class="tit">큐레이션</h2>
						<div class="right">
							<a href="#" title="큐레이션 더보기">큐레이션 더보기 <i class="iconset ico-more-corss gray"></i></a>
						</div>
					</div>

					<div class="curation-area">
								<div class="curr-img">
									<p class="bage classic">메가박스 클래식소사이어티</p>
										<div class="img">
										<a href="#" title="영화상세 보기">
											<img src="https://img.megabox.co.kr/SharedImg/2020/06/23/lepsjCKRQ84828xXV8miut1CmdnNG1X4_420.jpg" alt="[특별 상영] 베토벤 프로젝트" onerror="noImg(this, 'main');">
											</a>
									</div>

									<div class="btn-group justify">
										<div class="left">
											<a href="#" class="button" title="영화상세 보기">상세정보</a>
										</div>
										<div class="right">
											<a href="#" class="button gblue" title="영화 예매하기">예매</a>
												</div>
									</div>

									<div class="info classic">
										<p class="txt">#<span>클래식소사이어티</span></p>
											<p class="tit">[특별 상영] 베토벤 프로젝트</p>
										<p class="summary">
											[상영 정보]<br>- 상영 지점 : 코엑스, 센트럴, 목동, 킨텍스, 분당, 성수, 마산 (4주 상영)<br>- 추가 상영 지점 : 강남, 송도, 영통, 부산대, 대전현대아울렛, 세종청사 (2주 상영)<br>- 러닝 타임 : 140분     * 인터미션 없음<br>- 상영 일정 : 2020년 7월 12일 ~ 8월 5일 / 수, 일 (1회씩) 상영<br>- 배급사 사정에 따라 상영 일정 및 지점 등이 변경될 수 있습니다.<br><br>제작 및 출연<br>작곡: 루트비히 판 베토벤 Ludwig van Beethoven<br>안무: 존 노이마이어 John Neumeier<br>지휘: 시몬 휴잇 Simon Hewett<br>연주: 미할 비아르크 (피아노), 도이치 방송 오케스트라 Michal Bialk (Piano), Deutsche Radio Philharmonie<br>무용: 함부르크 발레단 Hamburg Ballett<br>공연 장소: 바덴-바덴 축제극장 Festspielhaus Baden-Baden<br><br>루트비히 판 베토벤: 알레시 마르티네즈 Aleix Martinez<br>베토벤의 ‘이루어지지 않은 사랑’: 안나 로더 Anna Laudere<br>베토벤의 ‘이상향’: 드윈 레바초프 Edvin Revazov<br>베토벤의 어머니: 패트리샤 프리차 Patricia Friza<br>베토벤의 조카: 보르하 베르무데즈 Borja Bermudez<br>크리스토퍼 에반스 Christopher Evans<br>마크 후베테 Marc Jubete<br>에밀 마종 Emilie Mazon<br>박윤수 Yun-Su Park<br><br>작품 소개<br>독일 바덴-바덴 축제극장에서 베토벤 탄생 250주년을 기념해 공연된 기념비적인 발레 실황이다. 함부르크 발레단의 총감독이자 세계적으로 유명한 천재 안무가, 존 노이마이어가 창작한 작품으로, 고난도 발레 테크닉으로 가득 찬 표현주의 발레를 선보인다. 인간 베토벤의 삶에서 영감 받은 1부는 베토벤의 자전적인 이야기를 통해 개인적인 고뇌와 좌절을 그리고 있으며, 자유로운 극작법을 따르는 2부는 현대무용과 정통발레 사이를 오가며 희망을 노래한다.<br>‘에로이카 변주곡’, 교향곡 3번 ‘영웅’과 더불어 쉽게 접하기 힘든 베토벤 작곡의 발레곡을 중심으로 구성되는 공연은 독일 정상급 교향악단의 연주로 진행된다. 특히 피아니스트 미할 비아르크가 무대 위 그랜드 피아노를 연주하며 피아노 음색을 무용 속에 완전히 녹여내는 장면은 인상적이다. 악성 베토벤이 남긴 위대한 걸작과 경이로운 선율에 맞춰 움직이는 세계적인 발레단의 몸짓은 베토벤의 삶과 음악을 짙은 예술성으로 엮어낸다.<br><br>주요 음악<br>-	변주곡과 푸가 Eb 장조, Op. 35 ‘에로이카 변주곡’<br>-	피아노 3중주 D 장조, Op. 70, No. 1 ‘유령’<br>-	피아노 소나타 D 장조, Op. 10, No. 3<br>-	프로메테우스의 창조물, Op. 43<br>-	교향곡 제3번, Eb 장조, Op. 55 ‘영웅’<br><br>수입/배급 케빈앤컴퍼니<br></p>
									</div>
								</div>
								<!--// curr-img -->

								<!--// list-area -->
								<div class="list">
							 	<ul>
									<li>
										<a href="#" title="영화상세 보기">
										<p class="bage classic">클래식소사이어티</p>
											<div class="img"><img src="https://img.megabox.co.kr/SharedImg/2020/06/23/4jr7i0mDwxOpILVarLlS05gmjZt8GiPp_230.jpg" alt="[시네도슨트] 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관" onerror="noImg(this, 'main');"></div>

											<p class="tit">[시네도슨트] 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관</p>

											<p class="summary">내용</p>
										</a>
									</li>
									<li>
										<a href="javascript:gfn_moveDetail('20022500');" title="영화상세 보기">
										<p class="bage film">필름소사이어티</p>
											<div class="img"><img src="https://img.megabox.co.kr/SharedImg/2020/06/23/UXvGh8i7KuMOZzLntFo88hmdcF7vPDvt_230.jpg" alt="트랜짓" onerror="noImg(this, 'main');"></div>

											<p class="tit">트랜짓</p>

											<p class="summary">내용</p>
										</a>
									</li>
									<li>
										<a href="javascript:gfn_moveDetail('20027700');" title="영화상세 보기">
										<p class="bage classic">클래식소사이어티</p>
											<div class="img"><img src="https://img.megabox.co.kr/SharedImg/2020/06/23/KUSs4KyOVlKT7SGGH9y6xLV6XvCjXuPR_230.jpg" alt="[팝콘클래식] 베토벤과 나폴레옹의 악연" onerror="noImg(this, 'main');"></div>

											<p class="tit">[팝콘클래식] 베토벤과 나폴레옹의 악연</p>

											<p class="summary">내용</p>
										</a>
									</li>
<li>
<a href="javascript:gfn_moveDetail('20025700');" title="영화상세 보기">
<p class="bage classic">클래식소사이어티</p>
<div class="img"><img src="https://img.megabox.co.kr/SharedImg/2020/06/15/mkuTBD77ntyhS0FQUuZcYX03Fh3Cur6K_230.jpg" alt="[오페라] 아크나텐 @The Met" onerror="noImg(this, 'main');"></div>
<p class="tit">[오페라] 오페라명</p>
<p class="summary"> 정보</p>
</a>
</li>
</ul>
								</div>
								<!--// list-area -->
					</div>
					<!--// curation-area -->
				</div>
			</div>
			<!--// section main-curation : 큐레이션 -->
			<!-- section main-info : 메가박스 안내 -->
			<div id="main_section04" class="section main-info">
				<h2 class="tit">메가박스 안내</h2>
				<div class="info-special">
					<a href="#" title="부티크 페이지로 이동" class="bg-boutique">부티크</a>
					<a href="#" title="MX 페이지로 이동" class="bg-mx">MX</a>
					<a href="#" title="COMFORT 페이지로 이동" class="bg-comfort">COMFORT</a>
					<a href="#" title="MEGA KIDS BOX 페이지로 이동" class="bg-kids">MEGA KIDS BOX</a>
					<a href="#" title="THE FIRST CLUB 페이지로 이동" class="bg-first">THE FIRST CLUB</a>
					<!-- <a href="/specialtheater/balcony" title="발코니 페이지로 이동" class="bg-balcony">발코니</a>-->
				</div>

				<!--  공지 -->
				<div class="info-notice">
						<div class="wrap">
							<p class="tit">지점</p>
							<p class="link">
								<a href="#" title="공지사항 상세보기">
									<strong>
										[문경]
									</strong>
									 [문경] 7월휴관일 안내</a>
							</p>

							<p class="date">2020.07.06</p>

							<p class="more">
								<a href="#" title="전체공지 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
							</p>
						</div>
					</div>
				<div class="info-link">
				
				<!-- 질문 -->
					<div class="table">
					
						<div class="cell">
							<a href="#" title="고객센터 페이지로 이동">
								<i class="iconset ico-main-customer"></i>
								<span>고객센터</span>
							</a>
						</div>

						<div class="cell">
							<a href="#" title="자주 묻는 질문 페이지로 이동">
								<i class="iconset ico-main-faq"></i>
								<span>자주 묻는 질문</span>
							</a>
						</div>

						<div class="cell">
							<a href="#" title="1:1 문의 페이지로 이동">
								<i class="iconset ico-main-qna"></i>
								<span>1:1 문의</span>
							</a>
						</div>

						<div class="cell">
							<a href="#" title="단체/대관문의 페이지로 이동">
								<i class="iconset ico-main-group"></i>
								<span>단체/대관문의</span>
							</a>
						</div>

						<div class="cell">
							<a href="#" title="분실물 문의/접수 페이지로 이동">
								<i class="iconset ico-main-lost"></i>
								<span>분실물 문의/접수</span>
							</a>
						</div>

						<div class="cell">
							<a href="#" title="더 부티크 프라이빗 대관예매 페이지로 이동">
								<i class="iconset ico-main-boutique"></i>
								<span>더 부티크 프라이빗<br>대관예매</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </div>



<section id="saw_movie_regi" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
	<input type="hidden" id="isLogin">
	<div class="wrap">
		<header class="layer-header">
			<h3 class="tit">본 영화 등록</h3>
		</header>

		<div class="layer-con">
			<p class="reset">발권하신 티켓 하단의 거래번호 또는 예매번호를 입력해주세요.</p>

			<div class="pop-gray mt10 mb30">
				<label for="movie_regi" class="mr10">거래번호 또는 예매번호</label>
				<input type="text" id="movie_regi" class="input-text w280px numType" maxlength="20" placeholder="숫자만 입력해 주세요" title="티켓 거래번호 입력">
				<button class="button gray ml05" id="regBtn">등록</button>
			</div>

			<div class="box-border v1 mt30">
				<p class="tit-box">이용안내</p>

				<ul class="dot-list">
                        <li>극장에서 예매하신 내역을 본 영화(관람이력)로 등록하실 수 있습니다.</li>
                        <li>예매처를 통해 예매하신 고객님은 극장에서 발권하신 티켓 하단의 온라인 예매번호 <br>12자리를 입력해주세요.(Yes24, 네이버, 맥스무비, 인터파크, SKT, KT, 다음)</li>
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
    <!--// footer-top -->

    <!-- footer-bottom -->
    <div class="footer-bottom">
        <div class="inner-wrap">
            <div class="ci">MEGABOX : Life Theater</div>

            <div class="footer-info">
                <div>
                    <address>서울특별시 강남구 역삼동 테헤란로 132(한독약품빌딩 8층 쌍용교육센터)</address>
                </div>
                <p>팀장 이진권</p>
                <p>· 기술고문 김태호</p>
                <p>· 김진우, 이진석 </p>
                <p>· 하기싫다..</p> 
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
</body>
</html>