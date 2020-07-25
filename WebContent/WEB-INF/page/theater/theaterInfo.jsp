<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="megabox.mvc.model.TheaterInfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="megabox.mvc.dao.TheaterInfoDAO"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% 
	SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy.MM.dd");
	SimpleDateFormat format2 = new SimpleDateFormat ( "HH:mm");
	SimpleDateFormat format3 = new SimpleDateFormat ( "yyMMdd");
	Calendar cal = Calendar.getInstance();
	
	String nowTime = format1.format(cal.getTime());
	String screenDay = format3.format(cal.getTime());
	
	String path = request.getContextPath();
	int branchSeq = Integer.parseInt(request.getParameter("branchSeq"));
	
	String pageNum = "1";
	if(request.getParameter("pageNum") != null){
		pageNum = request.getParameter("pageNum");
	}
	try{
		Integer.parseInt(pageNum);
	} catch(Exception e){
		session.setAttribute("messageType", "오류 메시지");
		session.setAttribute("messageContent", "페이지 번호가 잘못되었습니다.");
		response.sendRedirect("theaterInfo.jsp");		
		return;
	}
	//ArrayList theaterceList = new ArrayList();
	ArrayList<TheaterInfoDTO> theaterNoticeList = (ArrayList)TheaterInfoDAO.getInstance().TheaterNoticeList(branchSeq, Integer.parseInt(pageNum));
%>
<!doctype html>
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!-->
<html lang="ko">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="shortcut icon" href="/static/pc/images/favicon.ico" />







<title>(<c:forEach items="${titleList}" var="titleDTO">${titleDTO.branch}</c:forEach>)
	극장정보 | 라이프씨어터, 메가박스
</title>
<meta property="name" id="metaTagTitle" content="극장정보 &lt; 극장" />
<meta property="description" id="metaTagDtls"
	content="반갑습니다. 메가박스 (강남)점 입니다." />
<meta property="keywords" id="metaTagKeyword"
	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox" />

<meta property="fb:app_id" id="fbAppId" content="546913502790694" />


<meta property="og:site_name" id="fbSiteName" content="메가박스" />
<meta property="og:type" id="fbType" content="movie" />
<meta property="og:url" id="fbUrl"
	content="https://www.megabox.co.kr/theater?brchNo=1372" />
<meta property="og:title" id="fbTitle" content="극장정보 &lt; 극장" />
<meta property="og:description" id="fbDtls"
	content="반갑습니다. 메가박스 (강남)점 입니다." />
<meta property="og:image" id="fbImg"
	content="https://img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />






<link rel="stylesheet" href="<%=path%>/static/pc/dist/megabox.min.css"
	media="all" />
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(argumen\ts);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="<%=path%>/static/pc/dist/megabox.api.min.js"></script>
<script src="<%=path%>/static/mb/js/lozad.min.js"></script>
<script src="<%=path%>/js/common/dist/megabox.common.min.js"></script>
<script src="<%=path%>/js/netfunnel/dist/megabox.netfunnel.min.js"></script>
<script src="//cast.imp.joins.com/persona.js" async></script>
 -->
</head>

<body>



	<div class="skip" title="스킵 네비게이션">
		<a href="#contents" title="본문 바로가기">본문 바로가기</a> <a href="#footer"
			title="푸터 바로가기">푸터 바로가기</a>
	</div>

	<div class="body-wrap">










		<!-- <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script> -->
		<%-- 		<script src="<%=path%>/static/mb/js/hmac-sha256.js"></script>
		<script src="<%=path%>/static/mb/js/enc-base64-min.js"></script> --%>


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
														<a
															href="https://www.sepay.org/spm/join?regSiteCode=XF&ctgCode=1&subCode=1"
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
												<a href="/user-find" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
												<a href="/join" title="회원가입 선택">회원가입<!--회원가입--></a> <a
													href="/on/oh/ohg/MbLogin/viewNonMbLogin.rest"
													title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
											</div>

											<div class="sns-login">
												<a href="javaScript:void(0)" lnkgTy="FACEBOOK"
													title="페이스북으로 로그인 선택"><img
													src="<%=path%>/static/pc/images/member/ico-facebook.png"
													alt="페이스북"> <!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgTy="NAVER"
													title="네이버로 로그인 선택"><img
													src="<%=path%>/static/pc/images/member/ico-naver.png"
													alt="네이버"> <!--네이버--> 네이버로 로그인<!--네이버로 로그인--></a> <a
													href="javaScript:void(0)" lnkgTy="KAKAO"
													title="카카오톡으로 로그인 선택"><img
													src="<%=path%>/static/pc/images/member/ico-kakao.png"
													alt="카카오톡"> <!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a> <a
													href="javaScript:void(0)" lnkgTy="PAYCO"
													title="페이코로 로그인 선택"><img
													src="<%=path%>/static/pc/images/member/ico-payco.png"
													alt="페이코"> <!--페이코--> 페이코로 로그인<!--페이코로 로그인--></a>
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
									<a id="aNonMbLogin" href="#layer_no_member_chk"
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
				<a href="/" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
			</h1>

			<!-- 브라우저 다운로드 -->



			<!-- ie-update : ie 9 이하 일때만 출력 -->
			<div class="ie-update">
				<div class="dimd"></div>
				<div class="wrap">
					<p class="tit">
						<img src="<%=path%>/static/pc/images/ie/txt-update.png"
							alt="megabox 홈페이지는 internet explrer10이상에서 최적화된 서비스 이용이 가능합니다. ie9 이하에서는 예매가 정상적으로 진행되지 않을 수 있으니, 브라우저를 업그레이드하시거나 다른 예매수단을 이용해 주세요!" />
					</p>

					<div class="box">
						<div class="col">
							<p class="txt">
								브라우저를 최신 버전으로<br>업그레이드 해보세요!
							</p>

							<div class="link">
								<a
									href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx"
									title="internet explorer 새 버전 다운로드" target="_blank"> <img
									src="<%=path%>/static/pc/images/ie/btn-ie.png"
									alt="internet explorer 새 버전 다운로드" />
								</a>
							</div>

							<div class="link">
								<a href="http://www.google.com/chrome?hl=ko" title="chrome 다운로드"
									target="_blank"> <img
									src="<%=path%>/static/pc/images/ie/btn-chrome.png"
									alt="chrome 다운로드">
								</a>
							</div>
						</div>

						<div class="col">
							<p class="txt">
								megabox 모바일 app을<br>이용해 보세요!
							</p>

							<div class="link">
								<a
									href="https://itunes.apple.com/us/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8"
									title="available on the app store" target="_blank"> <img
									src="../../../static/pc/images/ie/btn-appstore.png"
									alt="available on the app store">
								</a>
							</div>

							<div class="link">
								<a
									href="https://play.google.com/store/apps/details?id=com.megabox.mop&amp;hl=ko"
									title="available on the google play" target="_blank"> <img
									src="<%=path%>/static/pc/images/ie/btn-google.png"
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
					<a href="<%=path%>/benefit/viplounge" title="VIP LOUNGE">VIP
						LOUNGE</a> <a href="<%=path%>/benefit/membership" title="멤버십">멤버십</a>
					<a href="/support" title="고객센터">고객센터</a>
				</div>

				<div class="right-link">
					<!-- 로그인전 -->
					<div class="before" style="display: none">
						<a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a>
						<a href="/join" title="회원가입">회원가입</a>
					</div>

					<!-- 로그인후 -->
					<div class="after" style="display: none">
						<a href="/on/oh/ohg/MbLogin/mbLogout.do" class="" title="로그아웃">로그아웃</a>
						<a href="" class="notice" title="알림">알림</a>

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

					<a href="/booking">빠른예매</a>
				</div>
			</div>
			<!--// 2019-04-15 마크업 수정 : 고객요청  -->

			<div class="link-area">
				<a href="#layer_sitemap" class="header-open-layer btn-layer-sitemap"
					title="사이트맵">사이트맵</a> <a href="#layer_header_search"
					class="header-open-layer btn-layer-search" title="검색">검색</a> <a
					href="<%=path%>/booking/timetable" class="link-ticket"
					title="상영시간표">상영시간표</a> <a href="#layer_mymega"
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
					<li><a href="<%=path%>/movie" class="gnb-txt-movie" title="영화">영화</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/movie" title="전체영화">전체영화</a></li>
								<li><a href="<%=path%>curation/specialcontent" title="큐레이션">큐레이션</a></li>

								<li id="festivalArea" style="display: none;"><a
									href="<%=path%>/festival" title="영화제">영화제</a></li>
								<li><a href="<%=path%>/moviepost/all" title="무비포스트">무비포스트</a></li>
							</ul>
						</div></li>
					<li><a href="<%=path%>/booking" class="gnb-txt-reserve"
						title="예매">예매</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/booking" title="빠른예매">빠른예매</a></li>
								<li><a href="<%=path%>/booking/timetable" title="상영시간표">상영시간표</a></li>
								<li><a href="<%=path%>/booking/privatebooking"
									title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
							</ul>
						</div></li>
					<li><a href="<%=path%>/theater/list" class="gnb-txt-theater"
						title="극장">극장</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/theater/list" title="전체극장">전체극장</a></li>
								<li><a href="<%=path%>/specialtheater/list" title="특별관">특별관</a></li>
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
					<li><a href="/benefit/membership" class="gnb-txt-benefit"
						title="혜택">혜택</a>
						<div class="gnb-depth2">
							<ul>
								<li><a href="<%=path%>/benefit/membership" title="메가박스 멤버십">메가박스
										멤버십</a></li>
								<li><a href="<%=path%>/benefit/discount/guide"
									title="제휴/할인">제휴/할인</a></li>
							</ul>
						</div></li>
				</ul>
			</nav>

			<!-- by 태호, <nav> 태그 마우스 포인터에 따라 자식 <li> 태그  on/off 기능 (2020.07.12)-->
			<script>
				$('#gnb ul li').children('a').mouseover(function() {

					if ($(this).closest('div').attr('class') != 'gnb-depth2') {
						$('#gnb').find('li').removeClass();
					}

					if ($(this).attr('class') != 'gnb-txt-store') {
						$('#gnb').addClass('on');
						$(this).closest('li').addClass('on');
					}
				});

				$('#header').mouseleave(function() {
					if ($('#gnb ul li a div li').mouseleave()) {

						$('#gnb').removeClass();
						$('#gnb ul li').removeClass();
					}
				});
			</script>

			<!--// gnb -->

			<form id="bokdMForm">
				<input type="hidden" name="returnURL" value="info" />
			</form>
			<!-- container -->
			<div id="bokdContainer" class="container"
				style="padding-bottom: 200px; display: none">
				<input type="hidden" id="playDe" name="playDe" value="" />
				<div class="page-util">
					<div class="inner-wrap">
						<div class="location"></div>

					</div>
				</div>

				<div id="bokdMSeat"
					style="overflow: hidden; display: none; height: 736px;">
					<%-- <iframe id="frameBokdMSeat"
						src="<%=path%>/on/oh/ohz/PcntSeatChoi/selectPcntSeatChoi.do?megaboxLanguage=kr"
						title="관람인원선택 프레임" scrolling="no" frameborder="0"
						class="reserve-iframe" style="width: 100%; height: 736px;"></iframe> --%>
				</div>

				<div id="bokdMPayBooking"
					style="overflow: hidden; display: none; height: 736px;">
					<%-- <iframe id="framePayBooking"
						src="<%=path%>/on/oh/ohz/PayBooking/completeSeat.do?megaboxLanguage=kr"
						title="예매 결제" scrolling="no" frameborder="0"
						class="reserve-iframe" style="width: 100%; height: 736px;"></iframe> --%>
				</div>

			</div>
			<!--// container -->
			<%-- 		<script src="<%=path%>/js/megabox-brch.js"></script>
			<script src="<%=path%>/js/megabox-simpleBokd.js"></script> --%>



			<div id="schdlContainer" class="container">
				<div class="page-util">
					<div class="inner-wrap">
						<div class="location">
							<span>Home</span> <a href="<%=path%>/theater/list.do"
								title="극장 페이지로 이동">극장</a> <a href="<%=path%>/theater/list.do"
								title="전체극장 페이지로 이동">전체극장</a> <a
								href="<%=path%>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=pageNum%>#tab01"
								title="극장정보 페이지로 이동">극장정보</a>
						</div>
					</div>
				</div>

				<!-- contents -->
				<div id="contents" class="no-padding">

					<!-- theater-detail-page -->
					<div class="theater-detail-page">

						<div class="bg-img"
							style="background-image: url('<%=path%>/static/pc/images/theater/img-theater-detail.jpg');"></div>
						<div class="bg-pattern"></div>
						<div class="bg-mask"></div>

						<!-- theater-all -->
						<div class="theater-all">
							<!-- theater-area-list -->
							<div class="theater-area-list">
								<ul class="area-depth1">

									<li><a href="#" class="depth1" title="서울 선택">서울</a>
										<div class="area-depth2">
											<ul>
												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 1 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1"
															title="${dto.branch} 상세보기">${dteneno.branch }</a></li>
													</c:if>
												</c:forEach>

											</ul>
										</div></li>


									<li><a href="" class="depth1" title="경기 선택">경기</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 2 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1>"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>


											</ul>
										</div></li>


									<li><a href="" class="depth1" title="인천 선택">인천</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 3 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1>"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>
												
											</ul>
										</div></li>


									<li><a href="" class="depth1" title="대전/충청/세종 선택">대전/충청/세종</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 4 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1>"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
														<c:if test="${seq_branch eq 54 or seq_branch eq 66}">
															<i class="iconset ico-theater-new"></i>
														</c:if>
													</c:if>
												</c:forEach>


											</ul>
										</div></li>


									<li><a href="" class="depth1" title="부산/대구/경상 선택">부산/대구/경상</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 5 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1>"
															title="${dto.branch} 상세보기">${dto.branch } <c:if
																	test="${dto.seq_branch eq 92}">
																	<i class="iconset ico-theater-new"></i>
																</c:if>
														</a></li>

													</c:if>
												</c:forEach>

											</ul>
										</div></li>

									<li><a href="" class="depth1" title="광주/전라 선택">광주/전라</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq '6' }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1>"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>

											</ul>
										</div></li>


									<li><a href="" class="depth1" title="강원 선택">강원</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 7 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1>"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>

													</c:if>
												</c:forEach>

											</ul>
										</div></li>


									<li><a href="" class="depth1" title="제주 선택">제주</a>
										<div class="area-depth2">
											<ul>

												<c:forEach items="${TheaterList}" var="dto">
													<c:if test="${dto.seq_loc eq 8 }">
														<li><a
															href="<%=path %>/theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=1>"
															title="${dto.branch} 상세보기">${dto.branch }</a></li>
													</c:if>
												</c:forEach>

											</ul>
										</div></li>

								</ul>
							</div>
							<!--// theater-area-list -->

							<!-- by 태호, 지역별 지점 탭 on/off 기능     2020.07.21    (마우스 떼도 안 없어지는 점 수정해야함.)-->
							<script>
								$('.theater-area-list ul li').mouseover(
										function() {

											$('.theater-area-list ul li')
													.removeClass();
											/* 	if ($(this).children('div').attr('class') != 'area-depth2') {
												} */
											$(this).addClass('on');
										});

								$('.theater-area-list')
										.mouseleave(
												function() {
													if ($('.area-depth1')
															.mouseleave()) {
														$(
																'.theater-area-list ul li')
																.removeClass();
													}
												});
							</script>


							<p class="name">
								<c:forEach items="${titleList}" var="titleDTO">
												${titleDTO.branch}</c:forEach>
							</p>

							<div class="btn-util right">

								<div class="block">




									<button type="button" class="btn btn-like tooltip click">
										<i class="iconset ico-like-line"></i> <span>선호극장</span> <span
											class="ir" data-width="235"> <span class="cont-area">
												<span class="login-alert-tooltip"> 로그인이 필요한 서비스 입니다.<br>
													<a href="" id="moveLogin" title="로그인하기">로그인하기 <i
														class="iconset ico-arr-right-green"></i></a>
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
								<li class="on"><a href="#tab01" title="극장정보 탭으로 이동"
									onclick="tabOn('01');">극장정보</a></li>
								<li><a href="#tab02" title="상영시간표 탭으로 이동"
									onclick="tabOn('02');">상영시간표</a></li>
								<li><a href="#tab03" title="관람료 탭으로 이동"
									onclick="tabOn('03');">관람료</a></li>
							</ul>
						</div>



						<div class="tab-cont-wrap">

							<div id="tab01" class="tab-cont on">

								<div class="theater-info-text mt40">
									<c:forEach items="${titleList}" var="titleDTO">
										<p class="big">${titleDTO.title}</p>
										<br>
										<p>${titleDTO.specific }</p>
									</c:forEach>

								</div>



								<h2 class="tit small mt70">시설안내</h2>



								<h3 class="tit small">보유시설</h3>

								<div class="theater-facility">

									<c:forEach items="${facilityList}" var="facilityDTO">
										<p>
											<i class="${facilityDTO.iconFacility}"></i>${facilityDTO.mFacility}
										</p>
									</c:forEach>

								</div>

								<h3 class="tit small mt30">층별안내</h3>

								<ul class="dot-list">

									<c:forEach items="${floorList}" var="floorDTO">
										<li><span class="font-gblue">${floorDTO.floor} : </span>${floorDTO.information }</li>
									</c:forEach>

								</ul>


								<h2 class="tit small mt70">교통안내</h2>

								<h3 class="tit small">약도</h3>

								<ul class="dot-list">
									<c:forEach items="${titleList}" var="dto">
										<li><span class="font-gblue">${dto.address_form} :
										</span>${dto.address}</li>
									</c:forEach>

								</ul>

								<div class="location-map-btn mt15">
									<div class="btn-group left">
										<a
											href="http://m.map.naver.com/map.nhn?lng=127.0264086&amp;lat=37.498214&amp;level=2"
											class="button purple" target="_blank" title="새창열림">실시간
											길찾기</a>
									</div>
								</div>


								<%-- Parking Part --%>
								<h3 class="tit small mt30">주차</h3>

								<div class="parking-info">



									<c:set var="doneLoop" value="false" />
									<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
										<c:if test="${parkDTO.seq_pinfo eq 1 && not doneLoop }">

											<div class="parking-section">
												<div class="icon-box">
													<i class="${parkDTO.iconPark }" title="${parkDTO.pPart}">${parkDTO.pPart}</i>
												</div>
												<div class="info">
													<p class="tit">${parkDTO.pPart}</p>
													<ul class="dot-list">
														<c:set var="doneLoop" value="true" />
										</c:if>
									</c:forEach>

									<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
										<c:if test="${parkDTO.seq_pinfo eq 1 }">
											<li>${parkDTO.pInfo}</li>
										</c:if>
									</c:forEach>
									</ul>
								</div>
								<!-- .info -->



								<!-- .parking-section -->


								<c:set var="doneLoop" value="false" />
								<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
									<c:if test="${parkDTO.seq_pinfo eq 2 && not doneLoop }">

										<div class="parking-section">
											<div class="icon-box">
												<i class="${parkDTO.iconPark }" title="${parkDTO.pPart}">${parkDTO.pPart}</i>
											</div>
											<div class="info">
												<p class="tit">${parkDTO.pPart}</p>
												<ul class="dot-list">
													<c:set var="doneLoop" value="true" />
									</c:if>
								</c:forEach>

								<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
									<c:if test="${parkDTO.seq_pinfo eq 2 }">
										<li>${parkDTO.pInfo}</li>
									</c:if>
								</c:forEach>
								</ul>
							</div>
							<!-- .info -->
						</div>
						<!-- .parking-section -->

						<c:set var="doneLoop" value="false" />
						<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
							<c:if test="${parkDTO.seq_pinfo eq 3 && not doneLoop }">


								<div class="parking-section">
									<div class="icon-box">
										<i class="${parkDTO.iconPark }" title="${parkDTO.pPart}">${parkDTO.pPart}</i>
									</div>
									<div class="info">
										<p class="tit">${parkDTO.pPart}</p>
										<ul class="dot-list">
											<c:set var="doneLoop" value="true" />
							</c:if>
						</c:forEach>

						<c:forEach items="${parkList}" var="parkDTO" varStatus="status">
							<c:if test="${parkDTO.seq_pinfo eq 3 }">
								<li>${parkDTO.pInfo}</li>
							</c:if>
						</c:forEach>
						</ul>
					</div>
					<!-- .info -->
				</div>
				<!-- .parking-section -->
			</div>
	</div>




	<h3 class="tit small mt30">대중교통</h3>

	<!-- location-info -->
	<div class="public-transportation">

		<!-- 버스 정보 -->

		<c:set var="doneLoop" value="false" />
		<c:forEach items="${trafficList}" var="trafficDTO">
			<c:if test="${trafficDTO.seq_tpart eq 1 && not doneLoop }">
				<div class="transportation-section">
					<div class="icon-box">
						<i class="${trafficDTO.iconTraffic }"
							title="${trafficDTO.traffic}">${trafficDTO.traffic}</i>
					</div>
					<div class="info">
						<p class="tit">${trafficDTO.traffic}</p>
						<ul class="dot-list">
				<c:set var="doneLoop" value="true" />
			</c:if>
		</c:forEach>

		<c:forEach items="${trafficList}" var="trafficDTO" varStatus="status">
			<c:if test="${trafficDTO.seq_tpart eq 1}">
				<li>${trafficDTO.root}</li>
			</c:if>
		</c:forEach>
		</ul>
		<!-- .info -->
		</div>
	</div>
	<!-- .trasportation-section -->



	<!-- 지하철 정보 -->
	<c:set var="doneLoop" value="false" />
	<c:forEach items="${trafficList}" var="trafficDTO">
		<c:if test="${trafficDTO.seq_tpart eq 2 && not doneLoop }">
			<div class="transportation-section">
				<div class="icon-box">
					<i class="${trafficDTO.iconTraffic }" title="${trafficDTO.traffic}">${trafficDTO.traffic}</i>
				</div>
				<div class="info">
					<p class="tit">${trafficDTO.traffic}</p>
					<ul class="dot-list">
						<c:set var="doneLoop" value="true" />
		</c:if>
	</c:forEach>

	<c:forEach items="${trafficList}" var="trafficDTO">
		<c:if test="${trafficDTO.seq_tpart eq 2}">
			<li>${trafficDTO.root}</li>
		</c:if>
	</c:forEach>
	</ul>
	<!-- .info -->
	</div>
	</div>
	<!-- .trasportation-section -->
	</div>
	<!-- 대중교통 정보가 없는 경우 -->

	<!--// location-info -->



	<div id="brchNoti">
		<h2 class="tit small mt70" id="pagenumber">공지사항</h2>

		<!-- accordion-list -->
		<div class="accordion-list">
			<ul>
				<c:forEach items="${theaterNoticeList}" var="dto">
					<li><div class="title">
							<a href="" title="${dto.nTitle}">
								<div class="cont-tit">${dto.nTitle}</div>
								<p class="cont-admin">${dto.branch}</p>
								<p class="cont-date">${dto.nRegidate}</p>
							</a>
						</div>
						<div class="content" style="display: none">${dto.nContent}</div></li>
				</c:forEach>
			</ul>
		</div>
		<!--// accordion-list -->





		<!-- pagination -->

		<nav class="pagination">

			<%
				int startPage = (Integer.parseInt(pageNum) / 10) * 10 + 1;
				if (Integer.parseInt(pageNum) % 10 == 0)
					startPage -= 10;
				int targetPage = TheaterInfoDAO.getInstance().targetPage(branchSeq, Integer.parseInt(pageNum));
				if (startPage != 1) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=startPage - 1%>#pagenumber"
				class="control prev">prev</a>
			<%
				} else {
			%>
			<%
				}
				for (int i = startPage; i < Integer.parseInt(pageNum); i++) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=i%>#pagenumber"
				class=""><%=i%></a>
			<%
				}
			%>
			<strong class="active"><%=pageNum%></strong>
			<%
				for (int i = Integer.parseInt(pageNum) + 1; i < targetPage + Integer.parseInt(pageNum); i++) {
					if (i < startPage + 10) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=i%>#pagenumber"><%=i%></a>

			<%
				}
				}
				if (targetPage + Integer.parseInt(pageNum) > startPage + 9) {
			%>
			<a
				href="theaterInfo.do?branchSeq=<%=branchSeq%>&pageNum=<%=startPage + 10%>#pagenumber"
				class="control next">next</a>
			<%
				}
			%>

		</nav>
		<!--// pagination -->
	</div>




	<h2 class="tit small mt70">강남에서 이용할 수 있는 스토어 상품</h2>

	<div class="store-list">
		<ul class="list">

			<li><a href=""
				onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001304');return false;"
				title="즉석구이콤보 상세보기">

					<div class="label push">추천</div>

					<div class="img">
						<img
							src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/4IdTDK4CS2PxFmMMJTozULSROsPzufHw.png"
							alt="" onerror="noImg(this, 'del')">
					</div>

					<div class="info">
						<div class="tit">
							<!-- 제품명 최대 2줄 -->
							<p class="name">즉석구이콤보</p>

							<!-- 제품구성 최대 2줄 -->
							<p class="bundle">팝콘(R) 1 + 탄산음료(R) 2 + 즉석구이오징어 몸or다리 1</p>
						</div>

						<div class="price">

							<p class="sale">
								<em>13,000</em> <span>원</span>
							</p>
							<p class="ea"></p>
						</div>
					</div>
			</a></li>

			<li><a href=""
				onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001303');return false;"
				title="반반에이드콤보 상세보기">

					<div class="label push">추천</div>

					<div class="img">
						<img
							src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/nRR553PK3zMFtaiYav781vbrTZzIDpFO.png"
							alt="" onerror="noImg(this, 'del')">
					</div>

					<div class="info">
						<div class="tit">
							<!-- 제품명 최대 2줄 -->
							<p class="name">반반에이드콤보</p>

							<!-- 제품구성 최대 2줄 -->
							<p class="bundle">반반팝콘(L) 1 + 에이드 2</p>
						</div>

						<div class="price">

							<p class="sale">
								<em>13,000</em> <span>원</span>
							</p>
							<p class="ea"></p>
						</div>
					</div>
			</a></li>

			<li><a href=""
				onclick="NetfunnelChk.aTag('STORE_DTL','/store/detail?cmbndKindNo=20001302');return false;"
				title="더블콤보 상세보기">

					<div class="label event">BEST</div>


					<div class="img">
						<img
							src="https://img.megabox.co.kr/SharedImg/store/2020/03/17/Fzy9gx2Nzf8ZVgUUrjJve5or0mOBj5Tr.png"
							alt="" onerror="noImg(this, 'del')">
					</div>

					<div class="info">
						<div class="tit">
							<!-- 제품명 최대 2줄 -->
							<p class="name">더블콤보</p>

							<!-- 제품구성 최대 2줄 -->
							<p class="bundle">팝콘(R) 2 + 탄산음료(R) 2</p>
						</div>

						<div class="price">

							<p class="sale">
								<em>12,000</em> <span>원</span>
							</p>
							<p class="ea"></p>
						</div>
					</div>
			</a></li>


		</ul>
	</div>
	</div>
	
	<!---------------------------------------tab02 -------------------------------------------->


	<div id="tab02" class="tab-cont">
		<a href="" class="ir">상영시간표 탭 화면 입니다.</a>
		<h2 class="tit small" style="display: none;">무대인사</h2>
		<div class="movie-greeting" style="display: none;"></div>
		<h2 class="tit small mt40">상영시간표</h2>
		<div class="time-schedule mb30">
			<div class="wrap">
				<button type="button" title="이전 날짜 보기" class="btn-pre"
					disabled="true">
					<i class="iconset ico-cld-pre"></i> <em>이전</em>
				</button>
				<div class="date-list">
					<div class="year-area">
						<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.07</div>
						<div class="year" style="left: 660px; z-index: 1; opacity: 1;">2020.08</div>
					</div>
					<div class="date-area">
						<div class="wrap"
							style="position: relative; width: 2100px; border: none; left: -70px;">
							
							<!-- button class, tabindex 수정 필요..... -->
							<c:forEach items="${calendarList}" var="dto">
								<button class="disabled" type="button" date-data="${dto.calendar}"
								month="6" tabindex="-1">
									<span class="ir">${fn:substring(dto.calendar, 0, 4)}년 ${fn:substring(dto.calendar, 6, 7)}월</span><em
										style="pointer-events: none;">${fn:substring(dto.calendar, 8,10)}<span
										style="pointer-events: none;" class="ir">일</span></em><span
										class="day-kr"
										style="pointer-events: none; display: inline-block">${dto.weekday}</span><span
										class="day-en" style="pointer-events: none; display: none">
										<c:if test="${dto.weekday} eq '수'">Wed</c:if>
										<c:if test="${dto.weekday} eq '목'">Thu</c:if>
										<c:if test="${dto.weekday} eq '금'">Fri</c:if>
										<c:if test="${dto.weekday} eq '토'">Sat</c:if>
										<c:if test="${dto.weekday} eq '일'">Sun</c:if>
										<c:if test="${dto.weekday} eq '월'">Mon</c:if>
										<c:if test="${dto.weekday} eq '화'">Tue</c:if>
										</span>
								</button>
							</c:forEach>
						
							
						</div>
					</div>
				</div>
				<button type="button" title="다음 날짜 보기" class="btn-next">
					<i class="iconset ico-cld-next"></i> <em>다음</em>
				</button>
				<div class="bg-line">
					<input type="hidden" name="datePicker" id="dp1595473625960"
						class="hasDatepicker" value="<%=nowTime%>">
				<!-- 달력보기 모달 기능 추가해야함..** -->
					<button type="button" class="btn-calendar-large" title="달력보기">
						달력보기</button>
				</div>
			</div>
		</div>
		<div class="movie-option mb20">
			<div class="option">
				<ul>
					<li><i class="iconset ico-stage" title="무대인사"></i>무대인사</li>
					<li><i class="iconset ico-user" title="회원시사"></i>회원시사</li>
					<li><i class="iconset ico-open" title="오픈시사"></i>오픈시사</li>
					<li><i class="iconset ico-goods" title="굿즈패키지"></i>굿즈패키지</li>
					<li><i class="iconset ico-singalong" title="싱어롱"></i>싱어롱</li>
					<li><i class="iconset ico-gv" title="GV"></i>GV</li>
					<li><i class="iconset ico-sun" title="조조"></i>조조</li>
					<li><i class="iconset ico-brunch" title="브런치"></i>브런치</li>
					<li><i class="iconset ico-moon" title="심야"></i>심야</li>
				</ul>
			</div>
			<div class="rateing-lavel">
				<a href="" class="" title="관람등급안내">관람등급안내</a>
			</div>
		</div>
		
		<div class="reserve theater-list-box">
			<div class="tab-block tab-layer mb30" style="display: none;">
				<ul></ul>
			</div>
	
			<!-- By 태호, 선택한 지점과 해당 날짜에 상영하는 영화 종류만큼 반복    2020.07.23-->
			<c:forEach items="${screenMovieList}" var="screenMovieDTO">
				<div class="theater-list">
			
					<div class="theater-tit">
						<p class="movie-grade age-15"></p>
						<p>${screenMovieDTO.movie_name}</p>
						<p class="infomation">
							<span>상영중</span>/상영시간 ${screenMovieDTO.runTime}분
						</p>
					</div>
					
			<!-- 어떤 영화 내 상영관마다 반복. . . . -->
			<c:forEach items="${screenTheaterList}" var = "screenTheaterDTO">
			<c:if test="${screenTheaterDTO.seq_movie eq screenMovieDTO.seq_movie}">
					<div class="theater-type-box">
					<div class="theater-type">
						<p class="theater-name">${screenTheaterDTO.theater}</p>
						<p class="chair">총 ${screenTheaterDTO.seats} 석</p>
					</div>
					<div class="theater-time">
						<div class="theater-type-area">2D</div>
						<div class="theater-time-box">
							<table class="time-list-table">
								<caption>상영시간을 보여주는 표 입니다.</caption>
								<colgroup>
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
									<col style="width: 99px;">
								</colgroup>
								<tbody>
									<tr>
			<!-- screenMovieDTO.seq_movie eq tableDTO.seq_movie && screenMovieDTO.seq_movie eq tableDTO.seq_movie 
			format1.format(time.getTime());
			-->
			<!-- 어떤 영화, 상영관 내 정보마다 반복.. -->
			<c:forEach items="${screenTableList}" var="tableDTO" >
			<c:if test="${screenMovieDTO.seq_movie eq tableDTO.seq_movie && screenMovieDTO.seq_movie eq tableDTO.seq_movie}">
										<td class="" brch-no="${tableDTO.seq_branch}" play-schdl-no="2007231581003"
											rpst-movie-no="20021300" theab-no="01" play-de="${fn:substring(tableDTO.screen_date, 0, 4)}${fn:substring(tableDTO.screen_date, 5, 7)}${fn:substring(tableDTO.screen_date, 8, 10)}"
											play-seq="3">
											<div class="td-ab">
												<div class="txt-center">
													<a href="" title="영화예매하기">
														<div class="ico-box">
															<i class="iconset ico-off"></i>
														</div>
														<p class="time">${tableDTO.screen_time}</p>
														<p class="chair">${tableDTO.seat}석</p>
														<div class="play-time">
															<p>
															<c:set var="screen_time" value="${tableDTO.screen_time}"></c:set>
															<c:set var="run_time" value="${tableDTO.runTime}"></c:set>
															<!-- java 라이브러리 Date, Calendar 이용-->
															<%
																String screenTime = (String)pageContext.getAttribute("screen_time");
																int runTime = (int)pageContext.getAttribute("run_time")+10;	//	런타임 + 광고 10분
																Date day1 = null;
																day1 = format2.parse(screenTime);
																cal.setTime(day1);
																cal.add(Calendar.MINUTE, runTime);
																String endTime = format2.format(cal.getTime());
															%>
															${tableDTO.screen_time}~<%=endTime%>
															
															</p>
															<%-- 회차 계산 기능 추가..? --%>
															<p>3회차</p>		
														</div>
													</a>
												</div>
											</div>
										</td>
			</c:if>
			</c:forEach>
			<!-- c:forEach tableList -->
									</tr>
								</tbody>
							</table>
						</div>
				</div>
			</c:if>
			</c:forEach>
			<!-- c:forEach screenTheaterList -->
			</div>
		</div>
			</c:forEach>
			<!-- c:forEach screenMovieList -->
		</div>
		<div class="box-border v1 mt30">
			<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
			<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
		</div>
	</div>



	<!---------------------------------------tab03 -------------------------------------------->

	<div id="tab03" class="tab-cont">
		<a href="" class="ir">관람료 탭 화면 입니다.</a>
		<h2 class="tit small">영화관람료</h2>
		<div class="fee-table-box">
			<div class="fee-table">
				<p class="fee-table-tit">2D</p>
				<div class="table-wrap">
					<table class="data-table a-c"
						summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
						<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
						<colgroup>
							<col>
							<col style="width: 25%;">
							<col style="width: 25%;">
							<col style="width: 25%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">요일</th>
								<th scope="col">상영시간</th>
								<th scope="col">일반</th>
								<th scope="col">청소년</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="rowgroup" rowspan="3">월~목</th>
								<td>조조 (06:00~)</td>
								<td>7,000</td>
								<td>6,000</td>
							</tr>
							<tr>
								<td>일반 (10:00~)</td>
								<td>11,000</td>
								<td>9,000</td>
							</tr>
							<tr>
								<td>심야 (24:00~)</td>
								<td>9,000</td>
								<td>7,000</td>
							</tr>
							<tr>
								<th scope="rowgroup" rowspan="3">금~일<br>공휴일
								</th>
								<td>조조 (06:00~)</td>
								<td>8,000</td>
								<td>7,000</td>
							</tr>
							<tr>
								<td>일반 (10:00~)</td>
								<td>12,000</td>
								<td>10,000</td>
							</tr>
							<tr>
								<td>심야 (24:00~)</td>
								<td>10,000</td>
								<td>8,000</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="fee-table">
				<p class="fee-table-tit">3D</p>
				<div class="table-wrap">
					<table class="data-table a-c"
						summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
						<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
						<colgroup>
							<col>
							<col style="width: 25%;">
							<col style="width: 25%;">
							<col style="width: 25%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">요일</th>
								<th scope="col">상영시간</th>
								<th scope="col">일반</th>
								<th scope="col">청소년</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="rowgroup" rowspan="3">월~목</th>
								<td>조조 (06:00~)</td>
								<td>9,000</td>
								<td>8,000</td>
							</tr>
							<tr>
								<td>일반 (10:00~)</td>
								<td>13,000</td>
								<td>11,000</td>
							</tr>
							<tr>
								<td>심야 (24:00~)</td>
								<td>11,000</td>
								<td>9,000</td>
							</tr>
							<tr>
								<th scope="rowgroup" rowspan="3">금~일<br>공휴일
								</th>
								<td>조조 (06:00~)</td>
								<td>10,000</td>
								<td>9,000</td>
							</tr>
							<tr>
								<td>일반 (10:00~)</td>
								<td>14,000</td>
								<td>12,000</td>
							</tr>
							<tr>
								<td>심야 (24:00~)</td>
								<td>12,000</td>
								<td>10,000</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<span style="color: #503396"><span style="font-size: 22px">요금제</span></span><br>
		<br> • <font color="#01738b">청소년 요금</font>&nbsp; 만7세~ 만18세 :
		초등학생~고등학생(학생증, 교복, 청소년증, 의료보험증, 주민등록 등/초본, 그 외 청소년 확인 가능 서류)<br>
		• 48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료 관람 가능<br> <br>
		<br> <span style="font-size: 22px"><span
			style="color: #503396">우대적용</span></span><br> <br> • <font
			color="#01738b">국가유공자</font>&nbsp; 현장에서 국가유공자증을 소지한 본인 외 동반 1인까지 적용<br>
		• <font color="#01738b">장애인</font>&nbsp; 현장에서 복지카드를 소지한 장애인(1급~3급까지 동반
		1인까지 적용 / 4급~6급은 본인에 한함)<br> • <font color="#01738b">경로</font>&nbsp;
		만65세 이상 본인에 한함(신분증 확인)<br> • <font color="#01738b">미취학아동</font>&nbsp;
		부모 동반한 만4세~ 만6세까지 본인(의료보험증, 주민등록 초/등본 확인)<br> • <font
			color="#01738b">경찰, 소방종사자</font>&nbsp; 공무원증을 소지하거나 정복을 입은 경찰, 소방관 본인<br>
		<br> <br> 관람가격 및 시간대 운영은 극장마다 상이할 수 있으며, 상기 가격은 메가박스 강남점에
		한하여 적용됩니다.
	</div>

	<!--// contents -->
	<!--// container -->

	</div>

	<!-- by 태호, 극장정보, 상영시간표, 관람료 탭 선택시 해당 <div> class On 효과    2020.07.21
		   by 태호, 극장정보, 상영시간표, 관람료 탭 선택시 해당 <li> 태그 class On 효과	   2020.07.26
	-->
	<script type="text/javascript">
		function tabOn(tab) {
			
			var tab_list = document.querySelector('.tab-list.fixed.mb40.tab-layer').firstChild.nextSibling.firstChild.nextSibling;
			var tab_list2 = tab_list.nextSibling.nextSibling;
			var tab_list3 = tab_list2.nextSibling.nextSibling;
			
			
			tab_list.classList.toggle('on', tab=='01');
			tab_list2.classList.toggle('on', tab=='02');
			tab_list3.classList.toggle('on', tab=='03');
			
			for (var i = 1; i <= 3; i++) {
				var title = document.querySelector('#tab0' + i);
				if (title.classList.contains('on')) {
					title.classList.remove('on');
				}
			}
			document.querySelector("#tab" + tab).classList.add('on');
		}
	</script>


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
					<li><a href="/megaboxinfo" title="회사소개 페이지로 이동">회사소개</a></li>
					<li><a href="/recruit" title="인재채용 페이지로 이동">인재채용</a></li>
					<li><a href="/socialcontribution" title="사회공헌 페이지로 이동">사회공헌</a></li>
					<li><a href="/partner" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
					<li><a href="/support/terms" title="이용약관 페이지로 이동">이용약관</a></li>
					<li class="privacy"><a href="/support/privacy"
						title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
					<li><a href="https://jebo.joonganggroup.com/main.do"
						target="_blank" title="윤리경영 페이지로 이동">윤리경영</a></li>
				</ul>

				<a href="#layer_looking_theater" class="btn-looking-theater"
					title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
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
					<a href="https://twitter.com/megaboxon" target="_blank"
						title="MEGABOX 트위터 페이지로 이동"><i class="iconset ico-twitter">트위터</i></a>
					<a href="https://www.facebook.com/megaboxon" target="_blank"
						title="MEGABOX 페이스북 페이지로 이동"><i class="iconset ico-facebook">페이스북</i></a>
					<a href="http://instagram.com/megaboxon" target="_blank"
						title="MEGABOX 인스타그램 페이지로 이동"><i class="iconset ico-instagram">인스타그램</i></a>
					<a
						href="https://play.google.com/store/apps/details?id=com.megabox.mop"
						target="_blank" title="MEGABOX 구글플레이 페이지로 이동"><i
						class="iconset ico-googleplay">구글플레이</i></a> <a
						href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&ls=1&mt=8"
						target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i
						class="iconset ico-appstore">앱스토어</i></a>
				</div>
			</div>
		</div>
		<!--// footer-bottom -->
		<div id="layer_looking_theater" class="layer-looking-theater"></div>
	</footer>
	<!--// footer -->
</body>
</html>