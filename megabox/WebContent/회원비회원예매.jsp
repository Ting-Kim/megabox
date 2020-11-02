<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title></title>
<link rel="stylesheet" href="<%=path%>/css/megabox.min.css" />
</head>
<body>
<script>
$(function() {
	$('#mem').click(function() {
		$(this).parent('li').addClass('on');
		$('#noMem').parent('li').removeClass('on');
		$('#login_tab_01').addClass('on');
		$('#login_tab_02').removeClass('on');
	})
	$('#noMem').click(function() {
		$(this).parent('li').addClass('on');
		$('#mem').parent('li').removeClass('on');
		$('#login_tab_02').addClass('on');
		$('#login_tab_01').removeClass('on');
	})
})

</script>
<button id="login">로그인</button>
<section id="layer_login_select" class="modal-layer on" style="z-index: 501;">
	<a href="#" class="focus" title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨</a>
	<div class="wrap" style="width: 850px; height: 556px; margin-left: -425px; margin-top: -278px;">
		<header class="layer-header">
			<h3 class="tit">로그인</h3>
		</header>
		<div class="layer-con" style="height: 511px;">
			<div class="tab-list tab-layer">
				<ul>
					<li class="on">
						<a href="#login_tab_01" id="mem" title="회원 로그인 선택">회원 로그인 </a>
					</li>
					<li>
						<a href="#login_tab_02" id="noMem" title="비회원 로그인 선택">비회원 로그인</a>
					</li>
				</ul>
			</div>
			<div class="tab-cont-wrap">
				<div id="login_tab_01" class="tab-cont on">
					<a href="#" class="ir" title="로그인"></a>
					<div class="login-member col-2">
						<div class="col-wrap">
							<div class="col left">
								<div class="login-input-area">
									<input autocomplete="off" id="ibxLoginId" maxlength="20" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim">
									<input autocomplete="off" id="ibxLoginPwd" maxlength="20" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15">
									<div class="alert"></div>
									<div class="chk-util">
										<div class="left">
											<input id="chkIdSave" type="checkbox">
											<label for="chkIdSave">아이디 저장</label>
										</div>
									</div>
									<button id="btnLogin" type="button" class="button purple large btn-login">로그인</button>
									<div class="link">
										<a href="<%=path%>/user-find.do" title="ID/PW 찾기 선택">ID/PW 찾기 </a>
										<a href="<%=path%>/join.do" title="회원가입 선택">회원가입</a>
										<a href="<%=path%>/nonMem.do" title="비회원 예매확인 선택">비회원 예매확인</a>
									</div>
								</div>
							</div>
							<div class="col right">
								<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw"></div>
							</div>
						</div>
					</div>
				</div>
				
						<!-- tab 비회원 로그인 -->
						<div id="login_tab_02" class="tab-cont">
							<a href="#" class="ir" title="비회원 로그인"></a>
							<div class="login-member col-2">
								<div class="col-wrap">
									<div class="col left">
										<div class="no-member-login-table">
											<table summary="이름, 생년월일, 휴대폰번호, 비밀번호, 비밀번호 확인 항목을 가진 비회원 로그인 입력 표">
												<colgroup>
													<col style="width: 110px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><label for="ibxNonMbNm">이름</label></th>
														<td><input maxlength="20" id="ibxNonMbNm" type="text" placeholder="이름" class="input-text"></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbByymmdd">생년월일</label></th>
														<td><input maxlength="6" id="ibxNonMbByymmdd" type="text" placeholder="생년월일 앞6자리" class="input-text"></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbTelno">휴대폰번호</label></th>
														<td><input maxlength="11" id="ibxNonMbTelno" type="text" placeholder="- 없이 입력" class="input-text"></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwd">비밀번호</label></th>
														<td><input maxlength="4" id="ibxNonMbPwd" type="password" placeholder="비밀번호(숫자 4자리)" class="input-text"></td>
													</tr>
													<tr>
														<th scope="row"><label for="ibxNonMbPwdConfirm">비밀번호확인</label></th>
														<td><input maxlength="4" id="ibxNonMbPwdConfirm" type="password" placeholder="비밀번호(숫자 4자리) 확인" class="input-text">
														<div id="nonMbPwdErrText" class="alert"></div></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="col right">
										<div class="no-member-privacy-rule">
											<p class="tit">비회원예매 개인정보 처리방침</p>
											<div class="cont">
												<dl>
													<dt>수집목적</dt>
													<dd>비회원예매 서비스 제공 / 이용자식별 / 구매 및 결제</dd>
													<dt>수집항목</dt>
													<dd>이름, 생년월일, 휴대폰번호, 비밀번호</dd>
													<dt>보유기간</dt>
													<dd>관람 또는 취소 후 7일 이내</dd>
												</dl>
												<div class="btn-agree">
													<input type="radio" id="chkNonMbBokdPersonInfoProcTrue" name="chkNonMbBokdPersonInfoProc"> 
													<label for="chkNonMbBokdPersonInfoProcTrue">동의</label>
													<input type="radio" id="chkNonMbBokdPersonInfoProcFalse" name="chkNonMbBokdPersonInfoProc" class="ml20">
													<label for="chkNonMbBokdPersonInfoProcFalse">미동의</label>
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
									<button id="btnChkNonMbLogin" type="button" class="button purple">확인</button>
									<a id="aNonMbLogin" href="#layer_no_member_chk" class="button purple btn-modal-open" w-data='600' h-data='320' style="display: none;"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<button type="button" class="btn-modal-close">
					레이어 닫기
				</button>
			</div>
	</section>
<div class="bg-modal"></div>
<script>
$('#login').click(function() { // 로그인 a태그 클릭 했을때
	$('#layer_login_select').addClass('on');
	$('body').addClass('no-scroll');
	$('.bg-modal').show();
	$('.bg-modal').css('opacity','1');  // 불투명 
})

$('.btn-modal-close').click(function() { //모달창 닫기버튼 눌렀을때
	$('#layer_login_select').removeClass('on');
	$('body').removeClass('no-scroll');
	$('.bg-modal').css('opacity','0');  // 불투명
	$('.bg-modal').hide('slow','0'); 
})
</script>
</body>
</html>