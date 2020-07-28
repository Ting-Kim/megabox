<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!doctype html>
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!--><html lang="ko"><!--<![endif]-->

<!-- Mirrored from www.megabox.co.kr/theater/list by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jul 2020 06:34:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="shortcut icon" href="../static/pc/images/favicon.ico" />

    
	




		<title>전체극장 | 라이프씨어터, 메가박스</title>
		<meta property="name"			id="metaTagTitle"	content="전체극장"/>
		<meta property="description"	id="metaTagDtls"	content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. "/>
		<meta property="keywords"		id="metaTagKeyword"	content="메가박스,megabox,영화,영화관,극장,티켓,박스오피스,상영예정작,예매,오페라,싱어롱,큐레이션,필름소사이어티,클래식소사이어티,이벤트,Movie,theater,Cinema,film,Megabox"/>

		<meta property="fb:app_id" 		id="fbAppId" 	content="546913502790694"/>
		

		<meta property="og:site_name" 	id="fbSiteName"	content="메가박스"/>
		<meta property="og:type" 		id="fbType"		content="movie"/>
		<meta property="og:url" 		id="fbUrl"		content="list.html" />
		<meta property="og:title" 		id="fbTitle"	content="전체극장" />
		<meta property="og:description"	id="fbDtls"		content="삶의 의미와 즐거움을 소통하는 공간, 함께 더 행복한 가치있는 콘텐츠를 추구하는 만남과 소통의 즐거움이 가득한 공간 메가박스 입니다. "/>
		<meta property="og:image" 		id="fbImg"		content="../../img.megabox.co.kr/SharedImg/metaTag/2020/02/04/gFfTzMwwiCxhBwcUV5TRGMFX9Cmoj64W.jpg" />
		


	
	
     	
     		<link rel="stylesheet" href="../static/pc/dist/megabox.min.css" media="all" />
     		<!-- Global site tag (gtag.js) - Google Analytics -->
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-30006739-3"></script>
			<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
		    <script src="../static/pc/dist/megabox.api.min.js"></script>
			<script src="../static/mb/js/lozad.min.js"></script>
			<script src="../js/common/dist/megabox.common.min.js"></script>
     		<script src="../js/netfunnel/dist/megabox.netfunnel.min.js"></script>
			<script src="../../cast.imp.joins.com/persona.js" async></script>
		
		
	

    <script type="text/javascript">

  		
  		var reset = ''

  		if( reset == 'Y' || location.pathname == '/booking' ){
  			history.replaceState('','',location.href);
  		}

        var _init = {
            cache	: Date.now(),
            path	: '/static/pc/js/'
        };

        document.write(
            '<script src="'+_init.path+'ui.common.js?v='+_init.cache+'"><\/script>'+
            '<script src="'+_init.path+'front.js?v='+_init.cache+'"><\/script>'
        );

        //RedirectException 발생시 메시지 처리
        

        //링크 구분에 따라 url 이동을 한다.
        function fn_goMoveLink(link_gbn, link_url) {
            alert("준비중 입니다");
            return;
        }
    </script>
</head>

<body>

    <div class="skip" title="스킵 네비게이션">
        <a href="#contents" title="본문 바로가기">본문 바로가기</a>
        <a href="#footer" title="푸터 바로가기">푸터 바로가기</a>
    </div>

    <div class="body-wrap">

       







<!--  ko_KR -->
        
<!-- <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script> -->
<script src="../static/mb/js/hmac-sha256.js"></script>
<script src="../static/mb/js/enc-base64-min.js"></script>
<script type="text/javascript">
/*전역변수
아이디
패스워드  입력 완료 체크 변수 필요
*/
var sValidateLoginIdAt  = 'N';	//로그인ID  입력 검증 여부
var sValidateLoginPwdAt = 'N';	//로그인PWD 입력 검증 여부
var submitIng = false;
var sCookieVal = "";	//쿠키값
/*
window.fbAsyncInit = function() {
	FB.init({
    	appId            : '',
      	autoLogAppEvents : true,
      	xfbml            : true,
      	version          : ''
   });
};

var naverLogin = new naver.LoginWithNaverId({
	clientId: '',
	callbackUrl: location.href,
	isPopup: false,
	callbackHandle: false
	// callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다.
});
*/

$(function(){
	/*로그인 버튼 비활성*/
	$("#btnLogin").attr("disabled", true);

	/*쿠키조회 pc 아이디값 입력 및 자동로그인 체크*/
	sCookieVal = fn_getCookie('loginId');
	if (!(sCookieVal == null || sCookieVal == "")){
		$("#ibxLoginId").val(sCookieVal);
		$("input:checkbox[id='chkIdSave']").prop("checked",true);
		fn_validateInputVal("loginId",sCookieVal);
	}

	/*이벤트*/
	/*로그인*/
	$("#btnLogin").click(function(){
		var sLoginId   = $("#ibxLoginId").val();
		var sLloginPwd = $("#ibxLoginPwd").val();

// 		//아이디 생성규칙 확인
// 		if(!fn_validateInputVal("loginId" ,$("#ibxLoginId").val(), 'Y')) {
// 			$("#ibxLoginId").focus();
// 			return;
// 		}
// 		//패스워드 생성규칙확인
// 		if(!fn_validateInputVal("loginPwd",$("#ibxLoginPwd").val(), 'Y')) {
// 			$("#ibxLoginPwd").focus();
// 			return;
// 		}

		$('#error-text').text('');

		//아이디 저장 버튼 체크시 쿠키 설정
		if($("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_setCookie('loginId',$("#ibxLoginId").val(),730);
		}
		//아이디 저장 체크 안했을때 쿠키 삭제
		else if(!$("input:checkbox[id='chkIdSave']").is(":checked")){
			fn_deleteCookie('loginId');
		}

		fn_selectMbLogin(sLoginId, sLloginPwd);	//로그인
	});

	/*아이디 입력시 체크 */
	$("#ibxLoginId").on("keyup", function(e){
		if(fn_validateInputVal("loginId", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		} else {
			if(e.keyCode == 13){$("#ibxLoginPwd").focus();}
		}

		return;
	});

	/*비밀번호 입력체크 */
	$("#ibxLoginPwd").on("keyup", function(e){
		if(fn_validateInputVal("loginPwd", $(this).val())){
			if(e.keyCode == 13){$("#btnLogin").click();}
		}
		return;
	});


	// 페이스북 로그인
	$('.login-facebook').on('click', function(e) {
		e.preventDefault();

		var type = $(this).data('type');

		FB.login(function(response){
			if(response.authResponse.userID) {
				$.ajaxMegaBox({
					url: '/on/oh/ohg/MbLogin/selectMbSimpleLogin.rest',
					data: JSON.stringify({ simpleLoginId: response.authResponse.userID, type: type }),
					success: function (data) {
						if(data.result) {
							AppHandler.Common.goMain();  // 메인페이지로 이동
						} else {
							AppHandler.Common.alert('본 서비스는 메가박스 회원인 경우에만  이용하실 수 있습니다.\n회원가입 후 이용 부탁 드립니다.');
						}
					}
				});
			}
		});
	});
});

//쿠키설정
function fn_setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000));
	var expires = "expires="+d.toUTCString();
	document.cookie = cname + "=" + cvalue + "; " + expires + ";path=/";
}

//쿠키조회
function fn_getCookie(name) {
	var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	return value? value[2] : null;

}

//쿠키삭제
function fn_deleteCookie(name){
	var d = new Date();
	d.setTime(d.getDate() -1);
	var expires = "expires="+d.toUTCString();
	document.cookie = name + "=;" + expires + ";path=/";
}


//입력 문자 체크
function fn_validateInputVal(type,sVal,submitAt){
	if(type == "loginId") {		  //아이디

		if(sVal == ""){
			sValidateLoginIdAt = 'N';
		}
// 		if (!/((?=.{8,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
// 		else if (/((?=.{8,})(?=.*[~!@#$%^&*+=-]).*$)/g.test(sVal)) {
// 			$('#error-text').text('아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.');
// 			sValidateLoginIdAt = 'N';
// 		}
		else{
			$('#error-text').text('');
			sValidateLoginIdAt = 'Y';
		}
	}
	else if(type == "loginPwd") { //패스워드
		if(sVal == ""){
			sValidateLoginPwdAt = 'N';
		}
// 		if (!/((?=.{10,})(?=.*[0-9])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[~!@#$%^&*+=-])(?=.*[a-zA-Z]).*$)|((?=.{10,})(?=.*[!@#$%^&*+=-])(?=.*[0-9]).*$)/g.test(sVal)) {
// 			$('#error-text').text('비밀번호는 영문,숫자,특수기호 중 2가지 이상 조합하여 10자리 이상 16자리 이하 입니다.');
// 			sValidateLoginPwdAt = 'N';
// 		}
		else {
			$('#error-text').text('');
			sValidateLoginPwdAt = 'Y';
		}
	}

	if(submitAt != 'Y'){
		if(sValidateLoginIdAt == 'Y' && sValidateLoginPwdAt =='Y') {
			$("#btnLogin").attr("disabled", false);	//버튼활성화
		}
		else {
			$("#btnLogin").attr("disabled", true);	//버튼비활성화
		}
	}

	if(sValidateLoginIdAt == 'N' || sValidateLoginPwdAt =='N') {
		return false;
	}

	return true;
}


//패스워드 3개월 초과시 다음에 하기 버튼 누를경우 비밀번호 변경일자 오늘날자로 셋팅
//비번 재설정은 3개월 미변경시, 변경 안하면 로그인 할때마다 alert 나옴 20190507
function fn_updatePwdUptDt(sLoginId){
	var paramData = { loginId:sLoginId };
	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/updateMbPwdReSet.rest",
		type: "POST",
		contentType: "application/json;charset=UTF-8",
		dataType: "json",
		data: JSON.stringify(paramData),
		success: function (data, textStatus, jqXHR) {
			//메인 화면으로 이동
			$(location).attr('href','/main');
		},
		error: function(xhr,status,error){
			var err = JSON.parse(xhr.responseText);
			alert(xhr.status);
			alert(err.message);
		}
	});
}

//로그인
function fn_selectMbLogin(sLoginId, sLloginPwd, snsLoginAt, redisKey){

	if(submitIng) return;

	/* 폼데이터 초기화 */
	$('#loginForm input[name=certType]').val();								//본인인증 모듈 코드값 초기화
	var sMenuId = $('input[name=menuId]').val();							//호출화면id
	var sMappingId = $('input[name=mappingId]').val();						//리턴URL
	var sSnsLogin = typeof snsLoginAt == 'undefined' ? "N" : snsLoginAt;	//sns로그인 여부

	var validLoginId  = sLoginId != null ? sLoginId.replace(/ /gi,"") : "";
	var validLoginPwd = sLloginPwd != null ? sLloginPwd.replace(/ /gi,"") : "";

	if(validLoginPwd != "simpleLogin"){
		if(validLoginId == "" || validLoginPwd == ""){
			gfn_alertMsgBoxSize('로그인 정보를 입력해 주세요.',400,250);	//로그인 정보를 입력해 주세요.
			return;
		}
	}

	var paramData = { loginId:sLoginId
					, loginPwd:sLloginPwd
					, menuId:sMenuId
					, mappingId:sMappingId
					, snsLogin:sSnsLogin
					, redisKey:redisKey
					};

	$.ajaxMegaBox({
		url: "/on/oh/ohg/MbLogin/selectMbLoginInfo.rest",
		data: JSON.stringify(paramData),
		//async: false,
		success: function (data, textStatus, jqXHR) {
			var revStr                 = data.revStr;
			var redisKey               = data.redisKey;
			var pwdErrCnt              = data.pwdErrCnt+1;
			var loginPwdLstUptDt       = data.loginPwdLstUptDt;
			var pwdUptDayco            = data.pwdUptDayco;
			var menuId                 = data.menuId;
			var mappingId              = data.mappingId;
			var marketRcvStr           = data.marketRcvStr
			var loginIdStar            = data.loginIdStar;

			//비밀번호 5회 오류	//본인인증 수단 선택 M-ME-DA-01
			if (revStr == "acctLock") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				$('#loginForm input[name=certType]').attr('value','SCRC05');
				var options = {};
				options.msg = '로그인정보가 5회 이상 잘못 입력되었습니다.\n회원인증 후 새로운 비밀번호를 설정해 주세요.';	//비밀번호 5회 이상 잘못 입력되었습니다.\n본인인증 후 새로운 비밀번호를 설정해 주세요.
				options.callback  = fn_mvPage;
				options.param = {confirm:'/on/oh/ohg/MbLogin/viewMbSimpleCertPage.rest'};	//간편인증페이지
				options.minWidth  = 400;
				options.minHeight = 250;
				gfn_alertMsgBox(options);
				return;
			}
			//비밀번호 변경9개월 초과 //비밀번호 재설정 M-ME-FI-04	비밀번호변경 9개월 체크 하지 않음. 무조건 3개월 연장
// 			else if (revStr == "loginPwdUpt9mm") {
// 				$('input[name=loginId]').attr('value',loginId);
// // 				mbLayer.toggle({id:revStr, msg:'회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)', btn:'비밀번호 변경', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options      = {};
// 				options.msg      = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경 안내해드리고 있습니다.\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
// 				options.okBtnTxt = "비밀번호 변경";
// 				options.callback = fn_mvPage;
// 				options.param    = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//비밀번호 변경3개월 초과	//다음에하기, 비밀번호 재설정 M-ME-FI-04
			else if (revStr == "loginPwdUpt3mm") {
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)';
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "비밀번호 재설정";
			    options.cancelBtnTxt = "다음에 하기";
			    options.minWidth  = 400;
				options.minHeight = 300;
				options.param      = {confirm:"/pw-register" };
				gfn_confirmMsgBox(options);
				return;
// 				if(confirm('회원님의 개인정보 보호를 위해 3개월마다 비밀번호 변경안내를 시행하고 있습니다.\n안전한 서비스 이용을 위해 비밀번호 변경 후 이용바랍니다.\n지금 변경 하시겠습니까?\n\n마지막 변경일 : '+loginPwdLstUptDt+'('+pwdUptDayco+'일전)')){
// 					$('input[name=loginId]').attr('value',loginId);
// 					fn_mvPage('/pw-register');
// 					return;
// 				}
// 				else {
// 					fn_mvPage("/main");	//메인페이지로 이동
// 					return;
// 				}
			}
			//마케팅 수신일 2년 초과	//todo 다음에하기, 수신동의 설정 내정보 수정화면 개발후연결
			else if (revStr == "marketRcv") {
				var options        = {};
				options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n'+marketRcvStr+'';
				//options.msg        = '마케팅 수신 동의일로부터 2년이 경과되어, 수신에 대한 재동의 안내를 시행하고 있습니다. \n메가박스의 다양한 소식 및 이벤트를 받고 싶으시면 수신동의 재설정이 필요합니다.  \n수신동의 재설정을 진행 하시겠습니까?\n\n[수신동의 정보]\n&#39;+lstSmsRcvAgreeDt+&#39;'.replaceAll('\n','<br/>');
				options.confirmFn  = fn_mvPage;
				options.cancelFn   = fn_loginSuccessEvent;
				options.okBtnTxt     = "수신동의 설정";
			    options.cancelBtnTxt = "다음에 하기";
				options.param      = {confirm:"/on/oh/ohh/Mypage/userAdditInfoPage.do?marketRcvReAgree=Y"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_confirmMsgBox(options);
				return;
			}
			//관리자에의한 패스워드 초기화 //비밀번호 재설정 M-ME-FI-04	관리자에 의한 패스워드 초기화는 없다.
// 			else if (revStr == "loginPwdReset") {
// // 				mbLayer.toggle({id:revStr, msg:'비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.', btn:'확인', callback:fn_mvPage, param:'/pw-register', minHeight:200, type:'single' });
// 				var options = {};
// 				options.msg = '비밀번호 재설정이 완료되었습니다. 다시 로그인해 주시기 바랍니다.';
// 				options.callback  = fn_mvPage;
// 				options.param = {confirm:'/pw-register'};
// 				options.minWidth  = 400;
// 				options.minHeight = 250;
// 				gfn_alertMsgBox(options);
// 				return;
// 			}
			//휴면계정복구 안내	//TODO 다음에하기, 휴면계정복구 본인인증 수단 선택 M-ME-DA-01
			else if (revStr == "mbSchIdGuideDormAcct") {
				$('#loginForm input[name=certType]').attr('value','SCRC03');
				$('#loginForm input[name=redisKey]').attr('value',redisKey);
				var options = {};
				options.msg        = '회원님의 아이디는 ['+loginIdStar+'] 메가박스 온라인 서비스를 1년이상 이용하지 않아 휴면계정으로 전환되었습니다. 휴면계정 복구 후 서비스 이용이 가능합니다.\n휴면계정 복구를 진행하시겠습니까?';
				options.okBtnTxt = "휴면계정복구";
				options.callback = fn_mvPage;
				options.param    = {confirm:"/member-check"};
				options.minWidth  = 400;
				options.minHeight = 300;
				gfn_alertMsgBox(options);
				return;
			}
			//탈퇴회원안내
			else if (revStr == "quitMb") {
				gfn_alertMsgBoxSize('회원탈퇴 후 1개월 이내 재가입할 수 없습니다.\n메가박스 고객센터로 문의해 주세요',400,250);	//회원탈퇴 후 1개월 이내 재가입할 수 없습니다. 메가박스 고객센터로 문의해 주세요
				return;
			}
			//loginPwdFail 패스워드실패안내, mbJoinReq 회원가입안내, mbInfoSearchUnable 탈퇴회원안내
			else if (revStr == "loginPwdFail" || revStr == "mbJoinReq" || revStr == "mbInfoSearchUnable") {
// 				$('.alert').text('로그인 정보가 잘못되었습니다. (로그인 '+pwdErrCnt+'/5회 실패)');	2020-02-06 메가박스 차세대 이행/안정화 결함대장 28번
				$("#ibxLoginId").val("");
				$("#ibxLoginPwd").val("");
				gfn_alertMsgBoxSize('아이디 또는 비밀번호가 맞지 않습니다.\n로그인 정보를 다시 확인바랍니다.',400,250);	//msg.ch.ohg.ME031=아이디 또는 비밀번호가 맞지 않습니다.\\n로그인 정보를 다시 확인바랍니다.
				$("#btnLogin").attr("disabled", true);	//버튼비활성화
				sValidateLoginPwdAt ='N';
				return;
			}

		    if(typeof loginPopupCallScn === "undefined"){
		    	loginPopupCallScn = "";
		    }
// 		    console.log("this : "+loginPopupCallScn);
			//화면이동
			if(menuId != "" && menuId != null){  //화면으로 띄웠을떄
				fn_mvPage(mappingId);
				return;
			}
			else {

				fn_loginSuccessEvent();

			}
			return;
		},
		error: function(xhr,status,error){
			 var err = JSON.parse(xhr.responseText);
			 alert(xhr.status);
			 alert(err.message);
		},
		beforeSend: function() {
			submitIng = true;
		},
		complete: function() {
			submitIng = false;
		}
	});

	function fn_loginSuccessEvent(){

		var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
		var reloadYn = $('#loginForm input[name=reloadYn]').val();
		var validDataRevisnYn = $('#loginForm input[name=validDataRevisnYn]').val();				//데이터 보정 여부

		if(bokdLoginAt == "Y"){
			//예매로그인일경우
			//오입력값을 체크한다.
			$('.before').hide();
			$('.after').show();
			$('.after .notice').show();
			$('#layer_login_select button.btn-modal-close').trigger("click");
			fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
		}
		else {
			if (reloadYn == "N") {

				$('.before').hide();
				$('.after').show();
				$('.after .notice').show();
				$('#layer_login_select button.btn-modal-close').trigger("click");
				if(validDataRevisnYn == "Y"){
					fn_validDataRevisn();
				}
			} else {

				//화면 리로드
				//location.reload();
				//post submit시 브라우저 경고창 관련
				window.document.location.href = window.document.URL;


				////////////////////////////////////////////
				// TODO 빵원쿠폰일 경우에만 처리되도록 수정 //
                ////////////////////////////////////////////
                $(".btn-modal-close").click();
                ////////////////////////////////////////////
                ////////////////////////////////////////////
			}
		}
	}

	//페이지 이동 submit
	function fn_mvPage(page){
// 		console.log("MbLoginScriptDV.fn_mvPage : "+page);

		var rtnParam = $("#loginForm [name=rtnParam]").val();

		if (rtnParam.trim() != ""){

			var arr;
			var html = '<input type="hidden" name="#1" value="#2" />';

			$.each(rtnParam.split(','), function(i, val){

				arr = val.split(':');
				arr[0] = arr[0].trim();
				arr[1] = arr[1].trim();
				arr[2] = '[name='+arr[0]+']';

				if ($("#loginForm").find(arr[2]).length > 0) {
					$("#loginForm").find(arr[2]).val(arr[1]);
				} else {
					$("#loginForm").append(html.replace('#1', arr[0]).replace('#2', arr[1]));
				}
			});
		}

		$("#loginForm").attr("method","post");
		$("#loginForm").attr("action",page);
		$("#loginForm input[name=preUrl]").val(document.location.pathname)
		$("#loginForm").submit();
	}
}
/* 비회원 */
var sValidateNonMbNmAt               = "N";
var sValidateNonMbByymmddAt          = "N";
var sValidateNonMbTelnoAt            = "N";

var sValidateMblpCharCertNo          = "N";

var sValidateNonMbPwdAt              = "N";
var sValidateNonMbPwdConfirmAt       = "N";
var sValidateNonMbPwdEqualAt         = "N";
var sValidateNonMbBokdPersonInfoProc = "N";
var sValidateMblpCertNoSuccess      = "N";

var AuthTimer;
var bokdCnfmAt                       = "N";

//이벤트
$(function(){
	if(typeof $("#ibxNonMbPwdConfirm").val() == 'undefined'){
		bokdCnfmAt = "Y";
	}
	fn_validateNonMbInputVal();
	/*비회원 로그인 버튼 비활성화*/
	$("#btnMbLogin").attr("disabled", true);

	/*비회원 정보 확인 버튼 비활성화*/
	$("#btnChkNonMbLogin").attr("disabled", true);
	$("#btnNonMbLogin").attr("disabled", true);

	/* 이름 숫자를 제외한 입력 여부판단 */
	$("#ibxNonMbNm").on("keyup", function(e){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbByymmdd").focus()};
		}
	});
	$("#ibxNonMbNm").focusout(function(){
		var partton = /[^ㄱ-힣a-zA-Z]/g;
		if(partton.test($(this).val())) {
			var value = $(this).val().replace(/[^ㄱ-힣a-zA-Z]/g,"");
			$(this).val(value);
		}
		fn_validateNonMbInputVal();
	});

	/* 생년월일 숫자만 입력 여부판단 */
	$("#ibxNonMbByymmdd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbTelno").focus();}
		}
	});
	$("#ibxNonMbByymmdd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 휴대폰번호 숫자만 입력 여부판단 */
	$("#ibxNonMbTelno").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		//휴대폰 번호
		if($("#ibxNonMbTelno").val() != "") {
			var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
			if(frontNm != '01'){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				ibxNonMbTelno = 'N';
				return false;
			}
			else if($("#ibxNonMbTelno").val().length < 10){
				$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
				sValidateNonMbTelnoAt = 'N';
				return false;
			}
			else {
				sValidateNonMbTelnoAt = 'Y';
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbTelnoAt = 'N';
		}

		//console.log("sValidateNonMbTelnoAt", sValidateNonMbTelnoAt);
		//console.log("sValidateMblpCertNoSuccess", sValidateMblpCertNoSuccess);

		//인증번호 전송 버튼 활성화
		if( sValidateNonMbTelnoAt   == 'Y' && sValidateMblpCertNoSuccess == 'N') {
			$("#nonMbCertNoSend").attr("disabled", false);
			$("#nonMbCertNoSend").removeClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "Y";
				fn_validateJoinInfoRegInputVal();
			}
		}
		else{
			$("#nonMbCertNoSend").attr("disabled", true);
			$("#nonMbCertNoSend").addClass("disabled");
			if(window.fn_validateJoinInfoRegInputVal) {
				//sValidateMblpCertNoSuccess = "N";
				fn_validateJoinInfoRegInputVal();
			}
		}

		if(e.keyCode != 9){
			if(typeof AuthTimer != 'undefined'){
				AuthTimer.fnStop();
				$('#timer').html("3:00");
				$('#nonMbCertNoSend').html("인증요청");
				sValidateMblpCertNoSuccess = "N";
				$('#nonMbCertRow').show();
				$('#mblpCharCertNo').val("");
				$("#nonMbCertNoSend").removeClass("disabled");
				$("#nonMbCertNoSend").attr("disabled", false);
				$("#btnMblpCharCert").attr("disabled", true);
				$("#btnMblpCharCert").addClass("disabled");
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#nonMbCertNoSend").click();}
				}
			}
			else {
				if(fn_validateNonMbInputVal()){
					if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
				} else {
					if(e.keyCode == 13) {$("#ibxNonMbPwd").focus();}
				}
			}
		}
	});
	$("#ibxNonMbTelno").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 인증번호 숫자만 입력 여부 판단*/
	$("#mblpCharCertNo").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));

		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}

		if(e.keyCode == 13) {$("#btnMblpCharCert").click();}
	});
	$("#mblpCharCertNo").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if($("#mblpCharCertNo").val().length >= 4) {
			$("#btnMblpCharCert").removeClass("disabled");
			$("#btnMblpCharCert").attr("disabled", false);
		}
		else {
			$("#btnMblpCharCert").attr("disabled", true);
			$("#btnMblpCharCert").addClass("disabled");
		}
	});

	/* 비밀번호 숫자만 입력 여부판단 */
	$("#ibxNonMbPwd").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()){
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		} else {
			if(e.keyCode == 13) {$("#ibxNonMbPwdConfirm").focus();}
		}
	});
	$("#ibxNonMbPwd").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	/* 비밀번호 확인 숫자만 입력 여부판단 */
	$("#ibxNonMbPwdConfirm").on("keyup", function(e){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		if(fn_validateNonMbInputVal()) {
			if(e.keyCode == 13) {$("#btnChkNonMbLogin").click();}
		}
	});
	$("#ibxNonMbPwdConfirm").focusout(function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
		fn_validateNonMbInputVal();
	});

	//체크박스 변경여부
	$("#chkNonMbBokdPersonInfoProcTrue").change(function() {
		if($('#chkNonMbBokdPersonInfoProcTrue').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	$("#chkNonMbBokdPersonInfoProcFalse").change(function() {
		if($('#chkNonMbBokdPersonInfoProcFalse').is(":checked")) {
			fn_validateNonMbInputVal();
		}
		else {
			fn_validateNonMbInputVal();
		}
	});

	/*이벤트*/
	/* 인증번호 전송 버튼 클릭*/
	$("#nonMbCertNoSend").click(function(){
		if($("#nonMbCertNoSend").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sNonMbTelno   = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, nonMbTelno : sNonMbTelno
						};

		$('#nonMbCert-error-text').text('');

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoSend.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				$('input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);

				if(data.resultMap.successAt == "N"){
					//비회원로그인-예매
					var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
    				if(bokdLoginAt == "Y"){
    					//예매로그인일경우
    					//인증시간이 만료된 경우
    					if(data.resultMap.msg == "ME061"){
    						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.', 400, 250);	//인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
    					}
    					//동일번호로 3회 이상 요청하는경우
    					else if(data.resultMap.msg == "ME062"){
    						//오입력값을 체크한다.
        					$('.before').hide();
            				$('.after').show();
            				$('#btnNonMbModalClose').trigger("click");
        					$('#layer_login_select button.btn-modal-close').trigger("click");
    						gfn_alertMsgBoxSize('동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.', 400, 250);	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n번호를 확인 한 후 처음부터 다시 진행바랍니다.
    					}

    				}
    				else {
    					//회원가입
    					var options = {};
						options.msg = '동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\n3분후 다시 시도해 주세요.';	//동일번호로 연속적인 인증이 발생하여 창을 닫습니다.\\n처음부터 다시 이용바랍니다.
						options.callback  = fn_mvMainPage;
						options.minWidth  = 400;
						options.minHeight = 250;
						gfn_alertMsgBox(options);
    				}
					return;
				}
				else {
					//nonMbCertRedisKey
					//console.log("certNo", data.resultMap.certNo);
					$('#nonMbCertNoSend').html("재전송");
					$('#loginForm input[name=nonMbCertedMblpNo]').attr('value',sNonMbTelno);
					gfn_alertMsgBoxSize('인증번호를 전송했습니다.\n인증번호가 도착하지 않았을 경우 재전송을 눌러 주세요.', 400, 250);

					if(typeof AuthTimer != 'undefined'){
						AuthTimer.fnStop();
						$('#timer').html("3:00");
					}
					else {
						AuthTimer = new $ComTimer();
					}
					AuthTimer.comSecond = 180;
					AuthTimer.fnCallback = function(){alert("다시인증을 시도해주세요.")}
					AuthTimer.timer = setInterval(function(){AuthTimer.fnTimer()},1000);
					AuthTimer.domId = document.getElementById("timer");
					//입력하신 휴대폰 번호로 인증번호가 발송되었습니다. 확인 후 인증번호를 입력해주세요!
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});


	//인증번호 확인 버튼 클릭
	$("#btnMblpCharCert").click(function(){
		if($("#btnMblpCharCert").hasClass("disabled")){
			return;
		}

		var sRedisKey     = $('#loginForm input[name=nonMbCertRedisKey]').val();
		var sMblpCharCertNo = $('#mblpCharCertNo').val();
		var sNonMbTelno     = $('#ibxNonMbTelno').val();
		var paramData = { redisKey : sRedisKey
						, certNo : sMblpCharCertNo
						, nonMbTelno : sNonMbTelno
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/MbLogin/selectNonMbCertNoCnfn.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {
				var successAt = data.resultMap.successAt;
				var msg = data.resultMap.msg;
				var redisKey = data.resultMap.redisKey;

				if(successAt == "Y"){
					sValidateMblpCertNoSuccess = "Y";
					fn_validateNonMbInputVal();
					$('#loginForm input[name=nonMbCertRedisKey]').attr('value',data.resultMap.redisKey);
					$('#nonMbCert-error-text').text('');
					$("#nonMbCertNoSend").attr("disabled", true);
					$("#nonMbCertNoSend").addClass("disabled");
					$("#nonMbCertRow").hide();
					gfn_alertMsgBoxSize('휴대폰 인증을 완료했습니다.\n확인 버튼을 눌러주세요.', 400, 250);	//휴대폰 인증을 완료했습니다.
					if(typeof fn_validateJoinInfoRegInputVal != "undefined"){
						fn_validateJoinInfoRegInputVal()	//회원가입에서 검증함수 호출
					}
				}
				else {
					sValidateMblpCertNoSuccess = "N";
					if(msg == "ME019"){
						$('#nonMbCert-error-text').text('인증번호가 일치하지 않습니다.\n인증번호를 다시 입력해주세요.');	//msg.ch.ohg.ME019 인증번호를 다시 확인 후 입력해 주세요.
					}
					else if(msg == "ME040"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME040	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
					}
					else if(msg == "ME061"){
						$('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	유효시간이 지났습니다.  인증번호 재전송을 통해서 다시 인증해주세요.
						gfn_alertMsgBoxSize('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.',400,250);	//입력정보를 확인해주세요.
					}

					$("#nonMbCertNoSend").removeClass("disabled");
					$("#nonMbCertNoSend").attr("disabled", false);
					$("#nonMbCertRow").show();
				}
			},
			error: function(xhr,status,error){
				var err = JSON.parse(xhr.responseText);
				alert(xhr.status);
				alert(err.message);
			}
		});
	});

	// 비회원 정보 확인 팝업 요청
	$("#btnChkNonMbLogin").click(function(){

		if(submitIng) return;

		if(typeof $("#ibxNonMbPwdConfirm").val() != 'undefined'){
			if($("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()) {
				gfn_alertMsgBoxSize('입력정보를 확인해주세요.',400,250);	//입력정보를 확인해주세요.
				return;
			}
		}

		//생년월일 날짜형태 확인
// 		if(!fn_validateDateYn($("#ibxNonMbByymmdd").val())) {
// 			alert("생년월일 입력이 잘못 되었습니다.");
// 			$("#ibxNonMbByymmdd").focus();
// 			return;
// 		}
		$("#btnNonMbLogin").attr("disabled", false);
		fn_chkNonMbLogin();
	});

	// 비회원 로그인
	$("#btnNonMbLogin").click(function(){

		var paramData = { nonMbNm:$("#ibxNonMbNm").val()
						, nonMbByymmdd:$("#ibxNonMbByymmdd").val()
						, nonMbTelno:$("#ibxNonMbTelno").val()
						, nonMbPwd:$("#ibxNonMbPwd").val()
						, bokdCnfmAt:bokdCnfmAt
						};

		$.ajaxMegaBox({
			url: "/on/oh/ohg/NonMbLogin/selectNonMbLoginInfo.rest",
			type: "POST",
			contentType: "application/json;charset=UTF-8",
			dataType: "json",
			data: JSON.stringify(paramData),
			success: function (data, textStatus, jqXHR) {

				var menuId                 = data.menuId;
	            var mappingId              = data.mappingId;
	            var statCd                 = data.result.statCd;


	            if(typeof loginPopupCallScn === "undefined"){
			    	loginPopupCallScn = "";
			    }
	            //화면이동
	            if(menuId != "" && menuId != null){    //화면으로 띄웠을떄
	                fn_mvPage(mappingId);
	                return;
	            }
	            else {
	                if(loginPopupCallScn != "" && loginPopupCallScn != null){  //팝업으로 띄었을때 파라메타는 팝업 호출화면에 전역으로 정의
	                    $(".btn-layer-close").trigger("click");
	                    if(loginPopupCallScn == "SimpleBokdM"){
	                    	$('.before').hide();
	            			$('.after').show();
	                        alert("콜백함수호출");
	                    } else if(loginPopupCallScn == "StoreDtlV"){
	                    	$('.before').hide();
	            			$('.after').show();
	                    } else if(loginPopupCallScn == "MySbscDtlsL"){
	                    	$('.before').hide();
	            			$('.after').show();
	            			location.href = '../index.html?currPage=1&amp;searchText=';
	                    }
	                }
	                else {
	                	var bokdLoginAt = $('#loginForm input[name=bokdLoginAt]').val();
	    				if(bokdLoginAt == "Y"){
	    					//예매로그인일경우
	    					//오입력값을 체크한다.
	    					$('.before').hide();
	        				$('.after').show();
	        				$('#btnNonMbModalClose').trigger("click");
	    					$('#layer_login_select button.btn-modal-close').trigger("click");
	    					fn_validDataRevisn(JSON.parse($('#loginForm input[name=bokdLoginParam]').val()));
	    					return;
	    				}

	                	if(bokdCnfmAt == "Y"){
	                		$('#nonMbBokdCnfmForm input[name=nonMbNm]').attr('value',$('#ibxNonMbNm').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbTelno]').attr('value',$('#ibxNonMbTelno').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbPwd]').attr('value',$('#ibxNonMbPwd').val());
	                		$('#nonMbBokdCnfmForm input[name=nonMbByymmdd]').attr('value',$('#ibxNonMbByymmdd').val());

                            /////////////////////////////////////////////////////////////////////
	                		// 예매정보가 없을 시 메세지 팝업처리 /////////////////////////////////
                            /////////////////////////////////////////////////////////////////////
                            if(statCd == 0) {
                                fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
                            }else{
                                alert("입력하신 정보와 일치하는 예매내역이 없습니다.");
                            }
                            /////////////////////////////////////////////////////////////////////
                            /////////////////////////////////////////////////////////////////////

	                		//fn_mvNonMbBokdCnfm("/non-member"); //비회원 예매 확인일때
	                	}
	                	else {
	                		location.reload();
	                	}

	                }
	            }
	            return;
			},
			error: function(xhr,status,error){
				 var err = JSON.parse(xhr.responseText);
				 alert(xhr.status);
				 alert(err.message);
			},
			beforeSend: function() {
	            submitIng = true;
	        },
	        complete: function() {
	            submitIng = false;
	        }
	    });

	    //페이지 이동 submit
	    function fn_mvNonMbBokdCnfm(page){
// 	        console.log("fn_mvNonMbBokdCnfm : "+page);
	        $("#nonMbBokdCnfmForm").attr("method","post");
	        $("#nonMbBokdCnfmForm").attr("action",page);
	        $("#nonMbBokdCnfmForm").submit();
	    }

	  	//비회원 예매 확인 페이지 이동 submit
	    function fn_mvPage(page){
// 	        console.log("MbLoginScriptDV.fn_mvPage : "+page);
	        $("#loginForm").attr("method","post");
	        $("#loginForm").attr("action",page);
	        $("#loginForm").submit();
	    }
	});
});

function fn_adTracking(url){
	$.ajax({
        type: "get"
        , url: url
        , data: ""
        , dataType: "json"
        , success: function(result) {

        }
        , error: function(err) {
            console.log('fn_adEventCall error : ' + err.status);
        }
    });
}

/*호출 화면에 따른 분기처리*/
function fn_viewLoginPopup(viewId,deviceType,bokdLoginAt,bokdLoginParam,reloadYn){

  	//로그인 폼 호출시 광고영역 노출
    if( $("#Rw6jtk0hQTuOBSzFbvGGlw").html() == "" ){

    	$("#Rw6jtk0hQTuOBSzFbvGGlw").append('<a href="" target="_blank"><img id="pageBannerRnbImage" src="../static/pc/images/common/bg/bg-noimage-main.png" /></a>');

    	var header ={"typ": "JWT","alg": "HS256"}
        var data = {
            "device": {"devicetype": 2},
            "imp": [{"native": {"ext" : {"slots" : 1}}}],
            "site": {"name": "megabox"},
            "id": ""
        };
    	var secret = "Rw6jtk0hQTuOBSzFbvGGlw";

    	var stringifiedHeader = CryptoJS.enc.Utf8.parse(JSON.stringify(header));
        var encodedHeader = base64url(stringifiedHeader);
        var stringifiedData = CryptoJS.enc.Utf8.parse(JSON.stringify(data));
        var encodedData = base64url(stringifiedData);
        var signature = encodedHeader + "." + encodedData;
        signature = CryptoJS.HmacSHA256(signature, secret);
        signature = base64url(signature);
        var pram = encodedHeader+"."+encodedData+"."+signature;
        var adUrl = "https://cast.imp.joins.com/bid/"+secret+"/"+pram; //상용

    	$.ajax({
            type: "get"
            , url: adUrl
            , data: ""
            , success: function(result) {
                if(result) {
                    $("#pageBannerRnbImage").attr("src", result.image_file);
                    $("#pageBannerRnbImage").attr("alt", result.alternative_text);
                    $("#pageBannerRnbImage").attr("clickThrough", result.click_tracking);
                    $("#pageBannerRnbImage").parent().attr("href", result.click_through);



                    $("#pageBannerRnbImage").css("height", result.height);
                    $("#Rw6jtk0hQTuOBSzFbvGGlw").css("background-color", result.bgcolor);
                    fn_adTracking(result.impression_tracking);
                }
            }
            , error: function(err) {
                console.log('fn_getBannerAd error : ' + err.status);
            }
        });

    	//광고링크
   	    $("#pageBannerRnbImage").on("click", function() {
   	        var clickThrough = $(this).attr("clickThrough");
   	        if(clickThrough != undefined && clickThrough != '') {
   	        	fn_adTracking(clickThrough);
   	        }
   	    });
    }

	//
	$(".alert").html("");
	if(sCookieVal == ""){	//아이디 저장 체크 안했을경우
		$(".login-input-area #ibxLoginId").val("");			//아이디
	}
	$(".login-input-area #ibxLoginPwd").val("");		//비밀번호
	$(".no-member-login-table #ibxNonMbNm").val("");	//비회원 이름
	$(".no-member-login-table #ibxNonMbByymmdd").val("");	//비회원 생년월일
	$(".no-member-login-table #ibxNonMbTelno").val("");		//비회원 휴대폰 번호
	$(".no-member-login-table #mblpCharCertNo").val("");	//비회원 휴대폰인증번호
	$(".no-member-login-table #ibxNonMbPwd").val("");		//비회원 비밀번호
	$(".no-member-login-table #ibxNonMbPwdConfirm").val("");	//비회원 비밀번호확인
	$("input[name=chkNonMbBokdPersonInfoProc]").prop("checked",false);	//비회원 라디오버튼 해제
	if(typeof AuthTimer != 'undefined'){
	    AuthTimer.fnStop();
	    $('#timer').html("3:00");
	    $('#nonMbCertNoSend').html("인증요청");
	    sValidateMblpCertNoSuccess = "N";
	    $('#nonMbCertRow').show();
	    $('#mblpCharCertNo').val("");
	    $("#nonMbCertNoSend").removeClass("disabled");
	    $("#nonMbCertNoSend").attr("disabled", false);
	}
	fn_validateNonMbInputVal();

	$('#loginForm input[name=bokdLoginAt]').val("");				//예매 로그인 여부
	$('#loginForm input[name=bokdLoginParam]').val("");				//예매 로그인 파라메타
	$('#loginForm input[name=validDataRevisnYn]').val("");				//데이터 보정 여부
	fn_validateInputVal();

	if('pc' == deviceType){

		if('SimpleBokdM' == viewId) {
			var sBokdLoginAt = typeof bokdLoginAt == 'undefined' ? "" : bokdLoginAt;//예매 로그인 여부
			$('#layer_login_select .layer-con .tab-list').show();			//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').removeClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'556');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$('#loginForm input[name=bokdLoginAt]').attr('value',sBokdLoginAt);			//예매 로그인 여부 값 설정
			$('#loginForm input[name=bokdLoginParam]').attr('value',bokdLoginParam);	//예매 로그인 파라메타
			if(bokdLoginAt == "Y"){
				$('#loginForm input[name=nonMbCertRedisKey]').val("");
				$('#loginForm input[name=nonMbCertedMblpNo]').val("");
			}

		}
		else if('StoreDtlV' == viewId || 'MySbscDtlsL' == viewId) {
			$("#loginPupupATag").trigger("click");	//레이어띄움
			$("#mbPopLayer").show();		//회원 레이어
			$("#nonMbLogoLayer").hide();	//비회원 로고
			$("#nonMbPopLayer").hide();		//비회원 레이어
			$("#mbMbChoiLayer").hide();	//회원 비회원 선택

			$("#nonMbBokdCnfm").attr("style","display:none");
		}
		else if('BoutiqPrivateL' == viewId){	//부티크
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',reloadYn); // 화면 리로드 설정
			$('#loginForm input[name=validDataRevisnYn]').val("Y");				//데이터 보정 여부
		}
		else {
			var sReloadYn = typeof reloadYn == 'undefined' ? "" : reloadYn;// 화면 리로드 여부
			$('#layer_login_select .layer-con .tab-list li:eq(0) a').trigger("click");	//회원로그인만 클릭되도록
			$('#layer_login_select .layer-con .tab-list').hide();						//로그인 비회원로그인 선택창
			$('#layer_login_select .layer-con .tab-cont-wrap .login-member').addClass('pt00');	//레이어 사이즈 줄임
			$("#loginPupupATag").attr("h-data",'484');	//높이값 변경
			$("#loginPupupATag").trigger("click");	//레이어띄움

			$('#loginForm input[name=reloadYn]').attr('value',sReloadYn); // 화면 리로드 설정
		}
	}
}

//입력 문자 체크
function fn_validateNonMbInputVal(){
	//이름
	if($("#ibxNonMbNm").val() != "") {
		sValidateNonMbNmAt = 'Y';
	}
	else {
		sValidateNonMbNmAt = 'N';
	}

	//생년월일
	if($("#ibxNonMbByymmdd").val() != "") {
		if(fn_validateDateYn($("#ibxNonMbByymmdd").val(),6)){
			sValidateNonMbByymmddAt = 'Y';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('');
			}
		}
		else {
			sValidateNonMbByymmddAt = 'N';
			//비회원예매확인
			if(bokdCnfmAt == "Y"){
				$('#ErrTextNonMbByymmdd').text('생년월일을 정확히 입력해주세요.');
			}
			//비회원로그인
			else {
				$('#mblpInput-error-text').text('생년월일을 정확히 입력해주세요.');
			}
			return false;
		}
	}
	else {
		sValidateNonMbByymmddAt = 'N';
		$('#mblpInput-error-text').text('');
	}

	//휴대폰 번호
	if($("#ibxNonMbTelno").val() != "") {
		var frontNm = $("#ibxNonMbTelno").val().substr(0,2);
		if(frontNm != '01'){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			ibxNonMbTelno = 'N';
			return false;
		}
		else if($("#ibxNonMbTelno").val().length < 10){
			$('#mblpInput-error-text').text('휴대폰번호를 정확히 입력해주세요.');
			sValidateNonMbTelnoAt = 'N';
			return false;
		}
		else {
			sValidateNonMbTelnoAt = 'Y';
			$('#mblpInput-error-text').text('');
		}
	}
	else {
		sValidateNonMbTelnoAt = 'N';
	}


	if($("#ibxNonMbPwd").val().length == 4) {
		sValidateNonMbPwdAt = 'Y';
	}
	else {
		sValidateNonMbPwdAt = 'N';
	}
	if(bokdCnfmAt == "Y"){
		sValidateNonMbPwdConfirmAt       = 'Y';
		sValidateNonMbPwdEqualAt         = 'Y';
		sValidateNonMbBokdPersonInfoProc = 'Y';
		sValidateMblpCertNoSuccess       = 'Y';
	}
	else{
		if($("#ibxNonMbPwdConfirm").val().length == 4) {
			sValidateNonMbPwdConfirmAt = 'Y';
		}
		else {
			sValidateNonMbPwdConfirmAt = 'N';
		}

		if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() == $("#ibxNonMbPwdConfirm").val()) {
			sValidateNonMbPwdEqualAt = 'Y';
			$('#nonMbPwdErrText').text('');
		}
		else if($("#ibxNonMbPwd").val().length > 0 && $("#ibxNonMbPwdConfirm").val().length > 0 && $("#ibxNonMbPwd").val() != $("#ibxNonMbPwdConfirm").val()){
			sValidateNonMbPwdEqualAt = 'N';
			$('#nonMbPwdErrText').text('비밀번호와 비밀번호 확인의 입력값이 일치하지 않습니다.');
			return false;
		}

		if($('#chkNonMbBokdPersonInfoProcTrue').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'Y';
		}
		else {
			sValidateNonMbBokdPersonInfoProc = 'N';
		}

		if($('#chkNonMbBokdPersonInfoProcFalse').prop("checked")){
			sValidateNonMbBokdPersonInfoProc = 'N';
		}
	}

// 	$('#error-text1').text
// 	("sValidateNonMbNmAt:"             +sValidateNonMbNmAt              +("/")+$("#ibxNonMbNm").val().length        +("\n\n")+
// 			"sValidateNonMbByymmddAt:"         +sValidateNonMbByymmddAt         +("/")+$("#ibxNonMbByymmdd").val().length   +("\n\n")+
// 			"sValidateNonMbTelnoAt:"           +sValidateNonMbTelnoAt           +("/")+$("#ibxNonMbTelno").val().length     +("\n\n")+
// 			"sValidateNonMbPwdAt:"             +sValidateNonMbPwdAt             +("/")+$("#ibxNonMbPwd").val().length       +("\n\n")+
// 			"sValidateNonMbPwdConfirmAt:"      +sValidateNonMbPwdConfirmAt      +("/")+$("#ibxNonMbPwdConfirm").val().length+("\n\n")+
// 			"sValidateNonMbPwdEqualAt:"        +sValidateNonMbPwdEqualAt        +("/\n\n")+
// 			"sValidateNonMbBokdPersonInfoProc:"+sValidateNonMbBokdPersonInfoProc+("/\n\n")
// 		+$("input:checkbox[id='chkNonMbBokdPersonInfoProc']").is(":checked"));

	if(    bokdCnfmAt                       == "N"
		&& sValidateNonMbNmAt               == 'Y'
		&& sValidateNonMbByymmddAt          == 'Y'
		&& sValidateNonMbTelnoAt            == 'Y'
		&& sValidateNonMbPwdAt              == 'Y'
		&& sValidateNonMbPwdConfirmAt       == 'Y'
		&& sValidateNonMbBokdPersonInfoProc == 'Y'
 		&& sValidateNonMbPwdEqualAt         == 'Y'
 		&& sValidateMblpCertNoSuccess       == 'Y'){
		$("#btnChkNonMbLogin").attr("disabled", false);
		return true;
	}
	else if (bokdCnfmAt == "Y"
			&& sValidateNonMbNmAt       == 'Y'
			&& sValidateNonMbByymmddAt         == 'Y'
			&& sValidateNonMbTelnoAt == 'Y'
			&& sValidateNonMbPwdAt       == 'Y'){
		$("#btnNonMbLogin").attr("disabled", false);
		return true;
	}
	else{
		$("#btnChkNonMbLogin").attr("disabled", true);
		$("#btnNonMbLogin").attr("disabled", true);
		return false;
	}
}

/*날짜 형태 확인*/
function fn_validateDateYn(param, length) {
	try
	{
		var year  = 0;
		var month = 0;
		var day   = 0;

		param = param.replace(/-/g,'');

		// 자리수가 맞지않을때
		if( isNaN(param) || param.length < Number(length) || param.length > Number(length)) {
			return false;
		}

		if( param.length == 6){
			year  = Number(param.substring(0, 2));
			month = Number(param.substring(2, 4));
			day   = Number(param.substring(4, 6));
		}
		else if(param.length == 8){
			year  = Number(param.substring(0, 4));
			month = Number(param.substring(4, 6));
			day   = Number(param.substring(6, 8));

			var sysYear = Number(new Date().getFullYear());
			//년도입력이 현재 년도보다 클때.
			if(sysYear < year){
				return false;
			}
		}
		else {
			return false;
		}


		var dd = day / 0;


		if( month<1 || month>12 ) {
			return false;
		}

		var maxDaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
		var maxDay = maxDaysInMonth[month-1];

		// 윤년 체크
		if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
			maxDay = 29;
		}

		if( day<=0 || day>maxDay ) {
			return false;
		}
		return true;

	} catch (err) {
		return false;
	}
}


function $ComTimer(){
    //prototype extend
}

$ComTimer.prototype = {
    comSecond : ""
    , fnCallback : function(){}
    , timer : ""
    , domId : ""
    , fnTimer : function(){
        var m = Math.floor(this.comSecond / 60) + ":" + String((this.comSecond % 60)).lpad(2,"0");	// 남은 시간 계산
        this.comSecond--;					// 1초씩 감소
        this.domId.innerText = m;
        if (this.comSecond < 0) {			// 시간이 종료 되었으면..
            clearInterval(this.timer);		// 타이머 해제
            $('#nonMbCert-error-text').text('인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.');	//msg.ch.ohg.ME061	인증시간이 만료되었습니다. 인증번호를 재전송 후 입력바랍니다.
            $("#btnMblpCharCert").attr("disabled", true);	//인증확인버튼 비활성
			$("#btnMblpCharCert").addClass("disabled");		//인증확인버튼 비활성
        }
    }
    ,fnStop : function(){
        clearInterval(this.timer);
    }
}

</script>
<script type="text/javascript">
var simpleLoginWithPopup;
var simpleLoginWith = function(lnkgTy){
    var url = "/on/oc/ocz/SimpleLogin/simpleLogin.do?lnkgTy=" + lnkgTy;
    if ( simpleLoginWithPopup ) {
        simpleLoginWithPopup.close();
    }
    if(lnkgTy != "FACEBOOK"){
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=420, height=550');
	}
	else {
		simpleLoginWithPopup = window.open(url, 'simpleLoginWithPopup', 'width=650, height=600, scrollbars=yes');
	}
}

var fn_LoginPopUpCall = function(paramData){
    if ( lnkgInfoObj.attr("connTy") != undefined ) {
        fn_ConnWithCallBack(paramData);
    } else {
        fn_LoginWithCallBack(paramData);
    }

}
var fn_LoginPopUpCallError = function(msg){
    gfn_alertMsgBoxSize(msg, 400, 250);
}

//비회원 확인 팝업
function fn_chkNonMbLogin() {

	var $td = $(document).find('#layer_no_member_chk td');

	var telTmp = $('#ibxNonMbTelno').val();

	switch(telTmp.length){
	case 10 : telTmp = telTmp.format('XXX-XXX-XXXX'); break;
	case 11 : telTmp = telTmp.format('XXX-XXXX-XXXX');break;
	}

	$td.eq(0).html($('#ibxNonMbNm').val());
	$td.eq(1).html($('#ibxNonMbByymmdd').val());
	$td.eq(2).html(telTmp);

	// 레이어 호출
	$(document).find('#aNonMbLogin').click();
}
</script>
<script type="text/javascript">
var fn_LoginWithCallBack = function(paramData){
    $.ajaxMegaBox({
        url: "/on/oc/ocz/SimpleLogin/selectSimpleLogin.do",
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        data: JSON.stringify(paramData),
        success: function (data, textStatus, jqXHR) {
            if ( data.userMap == null ) {
            	//var simpleLoginTyCd = data.userMap.simpleLoginTyCd;
                gfn_alertMsgBoxSize('['+paramData.simpleLoginTyCd+'] 계정으로 연동된 메가박스 계정이 없습니다.\n연동을 원하시면 나의메가박스 > 개인정보수정에서\n간편로그인 계정연동을 진행해 주세요.', 400, 250);
            } else {
                var loginId = data.userMap.loginId;
                var mbNo    = data.userMap.mbNo;
                fn_selectMbLogin(loginId, "simpleLogin", "Y", paramData.redisKey);
            }
        },
        error: function(xhr,status,error){
            var err = JSON.parse(xhr.responseText);
            alert(xhr.status);
            alert(err.message);
        }
    });
}
var lnkgInfoObj;
$(function(){
    $("div.sns-login > a").off("click").on("click",function(){
        lnkgInfoObj = $(this);
        simpleLoginWith($(this).attr("lnkgTy"));
    });
});
</script>
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







<!--  ko_KR -->
        
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
					<div id="login_tab_01" class="tab-cont on"><a href="#" class="ir" title="로그인"></a>

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
										      <a href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1" title="휴대폰 간편 로그인 선택" target="_blank" title="새창 열림"><span>휴대폰 간편로그인<!--휴대폰 간편로그인--></span> <em>광고<!--광고--></em></a>
												</div>
											</div>
										</div>
										<!--// chk-util -->

										<button id="btnLogin" type="button" class="button purple large btn-login">로그인<!--로그인--></button>

										<div class="link">
											<a href="../user-find.html" title="ID/PW 찾기 선택">ID/PW 찾기<!--ID/PW 찾기--></a>
											<a href="../join.html" title="회원가입 선택">회원가입<!--회원가입--></a>
											<a href="../on/oh/ohg/MbLogin/viewNonMbLogin.html" title="비회원 예매확인 선택">비회원 예매확인<!--비회원 예매확인--></a>
										</div>

										<div class="sns-login">
											<a href="javaScript:void(0)" lnkgTy="FACEBOOK" title="페이스북으로 로그인 선택"><img src="../static/pc/images/member/ico-facebook.png"  alt="페이스북"><!--페이스북--> 페이스북으로 로그인<!--페이스북으로 로그인--></a>
											<a href="javaScript:void(0)" lnkgTy="NAVER"    title="네이버로 로그인 선택"><img src="../static/pc/images/member/ico-naver.png"     alt="네이버"><!--네이버-->   네이버로 로그인<!--네이버로 로그인--></a>
											<a href="javaScript:void(0)" lnkgTy="KAKAO"    title="카카오톡으로 로그인 선택" ><img src="../static/pc/images/member/ico-kakao.png"    alt="카카오톡"><!--카카오톡--> 카카오톡으로 로그인<!--카카오톡으로 로그인--></a>
											<a href="javaScript:void(0)" lnkgTy="PAYCO"    title="페이코로 로그인 선택"><img src="../static/pc/images/member/ico-payco.png"     alt="페이코"><!--페이코-->   페이코로 로그인<!--페이코로 로그인--></a>
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
					<div id="login_tab_02" class="tab-cont"><a href="#" class="ir" title="비회원 로그인"></a>

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
<!--  ko_KR -->
        

<script type="text/javascript">
    $(function(){
        
            
                $('#header .right-link .before').show();
                $('#header .right-link .after').hide();
                //session 관련 처리를 위한 부분
                $.ajaxMegaBox({
                    url: '/sessionChk.do',
                    success: function(data) {
                        var loginYn = data.loginYn;
                        if(loginYn == 'Y'){
                            $('.right-link .before').hide();
                        $('.right-link .after').show();
                        }else{
                            $('.right-link .before').show();
                        $('.right-link .after').hide();
                        }
                     }
               });
            
            
        

        // 웹에서만 실행 -> facebook을 로드하지 않는 템플릿에서 반복적인 오류 발생으로 hreader로 이전
        if(!MegaboxUtil.Common.isMobile() && !MegaboxUtil.Common.isApp())
            MegaboxUtil.Share.init();
    });

    //로그인 버튼
    $(document).on('click', '#moveLogin', function() {

        fn_viewLoginPopup('default','pc');

    });

    var sysCd = 'ON';

  	//넷퍼넬 스킨 타입 지정
	NetfunnelChk.setting( sysCd, MegaboxUtil.Common.isApp() );

</script>


<!-- 메인에만 광고영역 노출 -->

<!-- 메인 영화에만 광고영역 노출 -->


<!-- header -->
<header id="header" >
    <h1 class="ci"><a href="../index.html" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>

	<!-- 브라우저 다운로드 -->
    

    <script type="text/javascript">
    $(function(){
	  	//닫기 버튼 클릭
		$('.ie-update').on('click', '.close-chk .closeDl', function() {
			 if ($(":checkbox[id='one_month_no_update']:checked").length > 0) {
				fn_setCookie("BROWDER_DL", "Y", 30);
			}

			$('.ie-update').hide();
		});

		//다시보지 않기
		 if (fn_getCookie("BROWDER_DL") == null || fn_getCookie("BROWDER_DL") == 'N') {
			if ( $(".lt-ie9").length > 0 && $('.ie-update').length > 0 ) {
				$('.ie-update').show();
			}
		}
    });
    </script>
	<!-- ie-update : ie 9 이하 일때만 출력 -->
	<div class="ie-update">
		<div class="dimd"></div>
		<div class="wrap">
			<p class="tit">
				<img src="../static/pc/images/ie/txt-update.png" alt="megabox 홈페이지는 internet explrer10이상에서 최적화된 서비스 이용이 가능합니다. ie9 이하에서는 예매가 정상적으로 진행되지 않을 수 있으니, 브라우저를 업그레이드하시거나 다른 예매수단을 이용해 주세요!" />
			</p>

			<div class="box">
				<div class="col">
					<p class="txt">브라우저를 최신 버전으로<br>업그레이드 해보세요!</p>

					<div class="link">
						<a href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx" title="internet explorer 새 버전 다운로드" target="_blank">
							<img src="../static/pc/images/ie/btn-ie.png" alt="internet explorer 새 버전 다운로드" />
						</a>
					</div>

					<div class="link">
						<a href="http://www.google.com/chrome?hl=ko" title="chrome 다운로드" target="_blank">
							<img src="../static/pc/images/ie/btn-chrome.png" alt="chrome 다운로드">
						</a>
					</div>
				</div>

				<div class="col">
					<p class="txt">megabox 모바일 app을<br>이용해 보세요!</p>

					<div class="link">
						<a href="https://itunes.apple.com/us/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8" title="available on the app store" target="_blank">
							<img  src="../static/pc/images/ie/btn-appstore.png" alt="available on the app store">
						</a>
					</div>

					<div class="link">
						<a href="https://play.google.com/store/apps/details?id=com.megabox.mop&amp;hl=ko" title="available on the google play" target="_blank">
							<img src="../static/pc/images/ie/btn-google.png" alt="available on the google play">
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
            <a href="../benefit/viplounge.html" 	title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="../benefit/membership.html"	title="멤버십">멤버십</a>
            <a href="../support.html"				title="고객센터">고객센터</a>
        </div>

        <div class="right-link">
            <!-- 로그인전 -->
            <div class="before" style="display:none">
                <a href="javaScript:fn_viewLoginPopup('default','pc')" title="로그인">로그인</a>
                <a href="../join.html" title="회원가입">회원가입</a>
            </div>

            <!-- 로그인후 -->
            <div class="after" style="display:none">
                <a href="../index.html" class="" title="로그아웃">로그아웃</a>
                <a href="#" class="notice" title="알림">알림</a>

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

            <a href="../booking.html">빠른예매</a>
        </div>
    </div>
    <!--// 2019-04-15 마크업 수정 : 고객요청  -->

    <div class="link-area">
        <a href="#layer_sitemap" 		class="header-open-layer btn-layer-sitemap"	title="사이트맵">사이트맵</a>
        <a href="#layer_header_search" 	class="header-open-layer btn-layer-search"	title="검색">검색</a>
        <a href="../booking/timetable.html" 	class="link-ticket" 						title="상영시간표">상영시간표</a>
        <a href="#layer_mymega" 		class="header-open-layer btn-layer-mymega" 	title="나의 메가박스">나의 메가박스</a>
    </div>

    <!-- gnb -->
    <!--
        2019-04-15 마크업 수정 : 고객요청
        1뎁스 a 태그에 각각 다른 class 추가
    -->
    
    <nav id="gnb">
        <ul class="gnb-depth1">
            <li><a href="../movie.html" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="../movie.html"					title="전체영화">전체영화</a></li>
                        <li><a href="../curation/specialcontent.html"	title="큐레이션">큐레이션</a></li>
                        
                        <li id="festivalArea" style="display: none;"><a href="../festival.html" title="영화제">영화제</a></li>
                        <li><a href="../moviepost/all.html"			title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="../booking.html" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="../booking.html"					title="빠른예매">빠른예매</a></li>
                        <li><a href="../booking/timetable.html"		title="상영시간표">상영시간표</a></li>
                        <li><a href="../booking/privatebooking.html"	title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="list.html" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="list.html" title="전체극장">전체극장</a></li>
                        <li><a href="../specialtheater/list.html" title="특별관">특별관</a></li>
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
            <li><a href="../benefit/membership.html" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="../benefit/membership.html" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="../benefit/discount/guide.html" title="제휴/할인">제휴/할인</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
    <!--// gnb -->
    <script type="text/javascript">
        $(document).ready(function() {
            var filmCheck = MegaboxUtil.Common.moveMovieFilmCheckGnb(); // 영화제 존재여부 체크
            if(filmCheck == true){
                $("#festivalArea").show();
            }else{
                $("#festivalArea").hide();
            }
        });
    </script>
    <!--// topGnb -->

    <!-- 레이어 : 사이트맵 -->
    



	<div id="layer_sitemap" class="header-layer layer-sitemap">
        <!-- wrap -->
        <div class="wrap">
            <a href="#" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>

            <p class="tit">SITEMAP</p>

            <div class="list position-1">
                <p class="tit-depth">영화</p>

                <ul class="list-depth">
                    <li><a href="../movie.html" title="전체영화">전체영화</a></li>
                    <li><a href="../curation/specialcontent.html" title="큐레이션">큐레이션</a></li>
                    <li><a href="javascript:void(0)" onclick="javascript:MegaboxUtil.Common.moveMovieFilmCheck();" title="영화제">영화제</a></li>
                    <li><a href="../moviepost/all.html" title="무비포스트">무비포스트</a></li>
                </ul>
            </div>

            <div class="list position-2">
                <p class="tit-depth">예매</p>

                <ul class="list-depth">
                    <li><a href="../booking.html" title="빠른예매">빠른예매</a></li>
                    <li><a href="../booking/timetable.html" title="상영시간표">상영시간표</a></li>
                    <li><a href="../booking/privatebooking.html" title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
                    <!-- <li><a href="/booking?megaboxLanguage=en" title="English Ticketing">English Ticketing</a></li> -->
                </ul>
            </div>

            <div class="list position-3">
                <p class="tit-depth">극장</p>

                <ul class="list-depth">
                    <li><a href="list.html" title="전체극장">전체극장</a></li>
                    <li><a href="../specialtheater/list.html" title="특별관">특별관</a></li>
                </ul>
            </div>

            <div class="list position-4">
                <p class="tit-depth">이벤트</p>

                <ul class="list-depth">
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event');return false;" title="진행중 이벤트">진행중 이벤트</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/end');return false;" title="지난 이벤트">지난 이벤트</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('EVENT_LIST','/event/winner/list');return false;" title="당첨자발표">당첨자발표</a></li>
                </ul>
            </div>

            <div class="list position-5">
                <p class="tit-depth">스토어</p>

                <ul class="list-depth">
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store');return false;" title="새로운 상품">새로운 상품</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/megaticket');return false;" title="메가티켓">메가티켓</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/megachance');return false;" title="메가찬스">메가찬스</a></li>
                    <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/popcorn');return false;" title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
                    <!-- <li><a href="javascript:void(0)" onclick="NetfunnelChk.aTag('STORE_LIST','/store/e-giftcard');return false;" title="기프트카드">기프트카드</a></li> -->
                </ul>
            </div>
            <div class="list position-6">
                <p class="tit-depth">나의 메가박스</p>
                <ul class="list-depth mymage">
                	
            			
            				<li><a href="javascript:movePage('/mypage',						'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 메가박스 홈">나의 메가박스 홈</a></li>
		                    <li><a href="javascript:movePage('/mypage/bookinglist',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="예매/구매내역">예매/구매내역</a></li>
		                    <li><a href="javascript:movePage('/mypage/movie-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="영화관람권">영화관람권</a></li>
		                    <li><a href="javascript:movePage('/mypage/store-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="스토어교환권">스토어교환권</a></li>
		                    <li><a href="javascript:movePage('/mypage/discount-coupon',		'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>
		                    
		                    <li><a href="javascript:movePage('/mypage/point-list',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="멤버십포인트">멤버십포인트</a></li>
		                    <li><a href="javascript:movePage('/mypage/moviestory',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 무비스토리">나의 무비스토리</a></li>
		                    <li><a href="javascript:movePage('/mypage/myevent',				'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
		                    <li><a href="javascript:movePage('/mypage/myinquiry',			'로그인이 필요한 서비스 입니다. \n로그인하시겠습니까?');" title="나의 문의내역">나의 문의내역</a></li>
		                    <li><a href="#" title="자주쓰는 할인 카드">자주쓰는 할인 카드</a></li>
		                    <li><a href="javascript:movePage('/on/oh/ohh/Mypage/mainPage.do?returnURL=info','로그인이 필요한 서비스 입니다.');" title="회원정보">회원정보</a></li>
            			
            			
            		
                </ul>
            </div>

            <div class="list position-7">
                <p class="tit-depth">혜택</p>

                <ul class="list-depth">
                    <li><a href="../benefit/membership.html" title="멤버십 안내">멤버십 안내</a></li>
                    <li><a href="../benefit/viplounge.html" title="VIP LOUNGE">VIP LOUNGE</a></li>
                    <li><a href="../benefit/discount/guide.html" title="제휴/할인">제휴/할인</a></li>
                </ul>
            </div>

            <div class="list position-8">
                <p class="tit-depth">고객센터</p>

                <ul class="list-depth">
                    <li><a href="../support.html" 			title="고객센터 홈">고객센터 홈</a></li>
                    <li><a href="../support/faq.html"		title="자주묻는질문">자주묻는질문</a></li>
                    <li><a href="../support/notice.html"	title="공지사항">공지사항</a></li>
                    <li><a href="../support/inquiry.html"	title="1:1문의">1:1문의</a></li>
                    <li><a href="../support/rent.html"		title="단체/대관문의">단체/대관문의</a></li>
                    <li><a href="../support/lost.html"		title="분실물문의">분실물문의</a></li>
                </ul>
            </div>

            <div class="list position-9">
                <p class="tit-depth">회사소개</p>

                <ul class="list-depth">
                    <li><a href="../megaboxinfo.html" 			target="_blank" title="메가박스소개">메가박스소개</a></li>
                    <li><a href="../socialcontribution.html" 	target="_blank" title="사회공헌">사회공헌</a></li>
                    <li><a href="../advertize.html" 			target="_blank" title="홍보자료">홍보자료</a></li>
                    <li><a href="../partner.html" 				target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
                    <li><a href="../onlinereport.html" 		target="_blank" title="온라인제보센터">온라인제보센터</a></li>
                    <li><a href="../ir.html" 					target="_blank" title="자료">IR자료</a></li>
                    <li><a href="../recruit.html" 				target="_blank" title="인재채용림">인재채용</a></li>
                    <li><a href="https://jebo.joonganggroup.com/main.do" target="_blank" title="윤리경영">윤리경영</a></li>
                </ul>
            </div>

            <div class="list position-10">
                <p class="tit-depth">이용정책</p>

                <ul class="list-depth">
                    <li><a href="../support/terms.html"		title="이용약관">이용약관</a></li>
                    <li><a href="../support/privacy.html"		title="개인정보처리방침">개인정보처리방침</a></li>
                    <li><a href="../support/screenrule.html"	title="스크린수배정에관한기준">스크린수배정에관한기준</a></li>
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
    <div id="layer_header_search" class="header-layer layer-header-search"></div>
    <!--// 레이어 : 검색 -->

    <!-- 레이어 : 마이페이지 -->
    



	<div id="layer_mymega" class="header-layer layer-mymege">
    	<a href="#" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>

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
                        <a href="../index.html" class="button" title="나의  메가박스">나의  메가박스</a>
                    </div>
                </div>

                <div class="box">
                    <div class="point">
                        <p class="tit">Point</p>

                        <p class="count">
                            0
                        </p>

                        <div class="btn-fixed">
                            <a href="../index.html" class="button" title="멤버십 포인트" >멤버십 포인트</a>
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
                            <a href="../index.html" class="button" title="쿠폰">쿠폰</a>
                            <a href="../index.html" class="button" title="관람권">관람권</a>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="reserve">
                        <p class="tit">예매 <!-- <i class="iconset ico-header-new"></i> --></p>

                        <p class="txt"></p>

                        <div class="btn-fixed">
                            <a href="../index.html" class="button" title="예매내역">예매내역 </a>
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
                        <a href="../index.html?tab=02" class="button" title="구매내역">구매내역</a>
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
                    <a href="#layer_login_common" id="moveLogin" title="로그인" class="button w120px btn-modal-open" w-data='850' h-data='484'>로그인</a>
                </div>

                <a href="../join.html" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
            </div>
        </div>
        <!--// wrap -->

        <div class="ir">
            <a href="#" class="layer-close" title="레이어닫기">레이어닫기</a>
        </div>
	</div>
    <!--// 레이어 : 마이페이지 -->

</header>
<!--// header -->

<!-- 		<div id="bodyContent"> -->
        



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

			if (($(this).attr('href') || '').indexOf('../index.html') == -1) {
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

<div class="container">

	<div class="page-util">
		<div class="inner-wrap">
			<div class="location">
				<span>Home</span>
				<a href="list.html" title="극장 페이지로 이동">극장</a>
				<a href="list.html" title="전체극장 페이지로 이동">전체극장</a>
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
						<p class="txt">메가박스<br />새로운 지점을<br />소개합니다.</p>

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
								<span title="현재 페이지" class="active">0</span> /
								<span title="전체 페이지" class="total">0</span>
							</div>
						</div>
					</div>

					<!-- theater-swiper -->
					<div class="theater-swiper">
						<div class="swiper-wrapper">
							
								<div class="cell swiper-slide" tabindex="0">
									<a href="#" class="eventBtn" data-no="8448" data-netfunnel="" title="힐링 프리미엄 극장, 창원내서 6월 24일&#40;수&#41; OPEN! 상세보기">

										
											
												
											
											
											
											
											
										

										<div class="img new"></div>

										<div class="cont new">
											<p class="label">
												
													
													
														신규오픈
													
												
											</p>
											<p class="local">부산/대구/경상</p>
											<p class="name"> 창원내서</p>
											<p class="date">20.06.24</p>
										</div>
									</a>
								</div>
							
								<div class="cell swiper-slide" tabindex="0">
									<a href="#" class="eventBtn" data-no="8447" data-netfunnel="" title="세종에서 제일 편안한 극장, 세종청사 6월 24일&#40;수&#41; OPEN! 상세보기">

										
											
												
											
											
											
											
											
										

										<div class="img new"></div>

										<div class="cont new">
											<p class="label">
												
													
													
														신규오픈
													
												
											</p>
											<p class="local">대전/충청/세종</p>
											<p class="name"> 세종청사</p>
											<p class="date">20.06.24</p>
										</div>
									</a>
								</div>
							
								<div class="cell swiper-slide" tabindex="0">
									<a href="#" class="eventBtn" data-no="8446" data-netfunnel="" title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일&#40;수&#41; OPEN! 상세보기">

										
											
												
											
											
											
											
											
										

										<div class="img new"></div>

										<div class="cont new">
											<p class="label">
												
													
													
														신규오픈
													
												
											</p>
											<p class="local">대전/충청/세종</p>
											<p class="name"> 대전현대아울렛</p>
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

			<div class="theater-box">
				<div class="theater-place">
					<ul>
						
							<li class="on">
								<button type="button" class="sel-city">서울
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="1372">
												

												<a href="../theateredf1.html?brchNo=1372" title="강남 상세보기">강남</a>

												
											</li>
										
											<li data-brch-no="1359">
												

												<a href="../theater2384.html?brchNo=1359" title="강남대로&#40;씨티&#41; 상세보기">강남대로&#40;씨티&#41;</a>

												
											</li>
										
											<li data-brch-no="1341">
												

												<a href="../theater04fa.html?brchNo=1341" title="강동 상세보기">강동</a>

												
											</li>
										
											<li data-brch-no="1431">
												

												<a href="../theateraa59.html?brchNo=1431" title="군자 상세보기">군자</a>

												
											</li>
										
											<li data-brch-no="1003">
												

												<a href="../theaterfb37.html?brchNo=1003" title="동대문 상세보기">동대문</a>

												
											</li>
										
											<li data-brch-no="1572">
												

												<a href="../theatera83c.html?brchNo=1572" title="마곡 상세보기">마곡</a>

												
											</li>
										
											<li data-brch-no="1581">
												

												<a href="../theater1177.html?brchNo=1581" title="목동 상세보기">목동</a>

												
											</li>
										
											<li data-brch-no="1311">
												

												<a href="../theater3a3b.html?brchNo=1311" title="상봉 상세보기">상봉</a>

												
											</li>
										
											<li data-brch-no="1211">
												

												<a href="../theater37ed.html?brchNo=1211" title="상암월드컵경기장 상세보기">상암월드컵경기장</a>

												
											</li>
										
											<li data-brch-no="1331">
												

												<a href="../theater426b.html?brchNo=1331" title="성수 상세보기">성수</a>

												
											</li>
										
											<li data-brch-no="1371">
												

												<a href="../theatera260.html?brchNo=1371" title="센트럴 상세보기">센트럴</a>

												
											</li>
										
											<li data-brch-no="1381">
												

												<a href="../theater7f75.html?brchNo=1381" title="송파파크하비오 상세보기">송파파크하비오</a>

												
											</li>
										
											<li data-brch-no="1202">
												

												<a href="../theater6f66.html?brchNo=1202" title="신촌 상세보기">신촌</a>

												
											</li>
										
											<li data-brch-no="1221">
												

												<a href="../theater64ed.html?brchNo=1221" title="은평 상세보기">은평</a>

												
											</li>
										
											<li data-brch-no="1561">
												

												<a href="../theater8128.html?brchNo=1561" title="이수 상세보기">이수</a>

												
											</li>
										
											<li data-brch-no="1321">
												

												<a href="../theater5fe7.html?brchNo=1321" title="창동 상세보기">창동</a>

												
											</li>
										
											<li data-brch-no="1351">
												

												<a href="../theater58af.html?brchNo=1351" title="코엑스 상세보기">코엑스</a>

												
											</li>
										
											<li data-brch-no="1212">
												

												<a href="../theatere717.html?brchNo=1212" title="홍대 상세보기">홍대</a>

												
											</li>
										
											<li data-brch-no="1571">
												

												<a href="../theater447d.html?brchNo=1571" title="화곡 상세보기">화곡</a>

												
											</li>
										
											<li data-brch-no="1562">
												

												<a href="../theater2f8e.html?brchNo=1562" title="ARTNINE 상세보기">ARTNINE</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
							<li>
								<button type="button" class="sel-city">경기
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="4121">
												

												<a href="../theateraafd.html?brchNo=4121" title="고양스타필드 상세보기">고양스타필드</a>

												
											</li>
										
											<li data-brch-no="4152">
												

												<a href="../theatercc27.html?brchNo=4152" title="김포한강신도시 상세보기">김포한강신도시</a>

												
											</li>
										
											<li data-brch-no="4721">
												

												<a href="../theater707f.html?brchNo=4721" title="남양주 상세보기">남양주</a>

												
											</li>
										
											<li data-brch-no="4451">
												

												<a href="../theatere938.html?brchNo=4451" title="동탄 상세보기">동탄</a>

												
											</li>
										
											<li data-brch-no="4652">
												

												<a href="../theater93aa.html?brchNo=4652" title="미사강변 상세보기">미사강변</a>

												
											</li>
										
											<li data-brch-no="4113">
												

												<a href="../theater0d0b.html?brchNo=4113" title="백석 상세보기">백석</a>

												
											</li>
										
											<li data-brch-no="4722">
												

												<a href="../theaterbdf4.html?brchNo=4722" title="별내 상세보기">별내</a>

												
											</li>
										
											<li data-brch-no="4221">
												

												<a href="../theater49f6.html?brchNo=4221" title="부천스타필드시티 상세보기">부천스타필드시티</a>

												
											</li>
										
											<li data-brch-no="4631">
												

												<a href="../theatera216.html?brchNo=4631" title="분당 상세보기">분당</a>

												
											</li>
										
											<li data-brch-no="4411">
												

												<a href="../theater7265.html?brchNo=4411" title="수원 상세보기">수원</a>

												
											</li>
										
											<li data-brch-no="4421">
												

												<a href="../theater0ceb.html?brchNo=4421" title="수원남문 상세보기">수원남문</a>

												
											</li>
										
											<li data-brch-no="4291">
												

												<a href="../theater33fc.html?brchNo=4291" title="시흥배곧 상세보기">시흥배곧</a>

												
											</li>
										
											<li data-brch-no="4253">
												

												<a href="../theater73b9.html?brchNo=4253" title="안산중앙 상세보기">안산중앙</a>

												
											</li>
										
											<li data-brch-no="4821">
												

												<a href="../theater7059.html?brchNo=4821" title="양주 상세보기">양주</a>

												
											</li>
										
											<li data-brch-no="4431">
												

												<a href="../theater1893.html?brchNo=4431" title="영통 상세보기">영통</a>

												
											</li>
										
											<li data-brch-no="0012">
												

												<a href="../theater5692.html?brchNo=0012" title="용인기흥 상세보기">용인기흥</a>

												
											</li>
										
											<li data-brch-no="4462">
												

												<a href="../theater2cae.html?brchNo=4462" title="용인테크노밸리 상세보기">용인테크노밸리</a>

												
											</li>
										
											<li data-brch-no="4804">
												

												<a href="../theatered3d.html?brchNo=4804" title="의정부민락 상세보기">의정부민락</a>

												
											</li>
										
											<li data-brch-no="4111">
												

												<a href="../theater645e.html?brchNo=4111" title="일산 상세보기">일산</a>

												
											</li>
										
											<li data-brch-no="4104">
												

												<a href="../theater8a8f.html?brchNo=4104" title="일산벨라시타 상세보기">일산벨라시타</a>

												
											</li>
										
											<li data-brch-no="4112">
												

												<a href="../theatered65.html?brchNo=4112" title="킨텍스 상세보기">킨텍스</a>

												
											</li>
										
											<li data-brch-no="4132">
												

												<a href="../theater46c1.html?brchNo=4132" title="파주금촌 상세보기">파주금촌</a>

												
											</li>
										
											<li data-brch-no="4115">
												

												<a href="../theatercbb7.html?brchNo=4115" title="파주운정 상세보기">파주운정</a>

												
											</li>
										
											<li data-brch-no="4131">
												

												<a href="../theater85dd.html?brchNo=4131" title="파주출판도시 상세보기">파주출판도시</a>

												
											</li>
										
											<li data-brch-no="4501">
												

												<a href="../theaterfb0e.html?brchNo=4501" title="평택 상세보기">평택</a>

												
											</li>
										
											<li data-brch-no="4651">
												

												<a href="../theatera64a.html?brchNo=4651" title="하남스타필드 상세보기">하남스타필드</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
							<li>
								<button type="button" class="sel-city">인천
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="4041">
												

												<a href="../theater1901.html?brchNo=4041" title="검단 상세보기">검단</a>

												
											</li>
										
											<li data-brch-no="4062">
												

												<a href="../theaterf177.html?brchNo=4062" title="송도 상세보기">송도</a>

												
											</li>
										
											<li data-brch-no="4001">
												

												<a href="../theaterd1b8.html?brchNo=4001" title="영종 상세보기">영종</a>

												
											</li>
										
											<li data-brch-no="4051">
												

												<a href="../theaterf17c.html?brchNo=4051" title="인천논현 상세보기">인천논현</a>

												
											</li>
										
											<li data-brch-no="4042">
												

												<a href="../theater5ff0.html?brchNo=4042" title="청라 상세보기">청라</a>

												
											</li>
										
											<li data-brch-no="4043">
												

												<a href="../theatera346.html?brchNo=4043" title="청라지젤 상세보기">청라지젤</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
							<li>
								<button type="button" class="sel-city">대전/충청/세종
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="3141">
												

												<a href="../theater4a88.html?brchNo=3141" title="공주 상세보기">공주</a>

												
											</li>
										
											<li data-brch-no="3021">
												

												<a href="../theaterab4a.html?brchNo=3021" title="대전 상세보기">대전</a>

												
											</li>
										
											<li data-brch-no="0009">
												

												<a href="../theatere837.html?brchNo=0009" title="대전유성 상세보기">대전유성</a>

												
											</li>
										
											<li data-brch-no="3011">
												

												<a href="../theater7124.html?brchNo=3011" title="대전중앙로 상세보기">대전중앙로</a>

												
											</li>
										
											<li data-brch-no="0017">
												

												<a href="../theaterb681.html?brchNo=0017" title="대전현대아울렛 상세보기">대전현대아울렛</a>

												
													
														
															<i class="iconset ico-theater-new"></i>
														
														
														
														
													
												
											</li>
										
											<li data-brch-no="3391">
												

												<a href="../theater1653.html?brchNo=3391" title="세종&#40;조치원&#41; 상세보기">세종&#40;조치원&#41;</a>

												
											</li>
										
											<li data-brch-no="3392">
												

												<a href="../theatera094.html?brchNo=3392" title="세종나성 상세보기">세종나성</a>

												
											</li>
										
											<li data-brch-no="0008">
												

												<a href="../theater131d.html?brchNo=0008" title="세종청사 상세보기">세종청사</a>

												
													
														
															<i class="iconset ico-theater-new"></i>
														
														
														
														
													
												
											</li>
										
											<li data-brch-no="3631">
												

												<a href="../theatera73b.html?brchNo=3631" title="오창 상세보기">오창</a>

												
											</li>
										
											<li data-brch-no="3901">
												

												<a href="../theateradd7.html?brchNo=3901" title="제천 상세보기">제천</a>

												
											</li>
										
											<li data-brch-no="3651">
												

												<a href="../theater27eb.html?brchNo=3651" title="진천 상세보기">진천</a>

												
											</li>
										
											<li data-brch-no="3301">
												

												<a href="../theater346d.html?brchNo=3301" title="천안 상세보기">천안</a>

												
											</li>
										
											<li data-brch-no="0013">
												

												<a href="../theaterfa35.html?brchNo=0013" title="청주사창 상세보기">청주사창</a>

												
													
														
														
														
															<i class="iconset ico-theater-open"></i>
														
														
													
												
											</li>
										
											<li data-brch-no="3801">
												

												<a href="../theaterd4a3.html?brchNo=3801" title="충주 상세보기">충주</a>

												
											</li>
										
											<li data-brch-no="3501">
												

												<a href="../theater994b.html?brchNo=3501" title="홍성내포 상세보기">홍성내포</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
							<li>
								<button type="button" class="sel-city">부산/대구/경상
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="6701">
												

												<a href="../theateraa6f.html?brchNo=6701" title="거창 상세보기">거창</a>

												
											</li>
										
											<li data-brch-no="7602">
												

												<a href="../theater9e4c.html?brchNo=7602" title="경북도청 상세보기">경북도청</a>

												
											</li>
										
											<li data-brch-no="7122">
												

												<a href="../theater8b57.html?brchNo=7122" title="경산하양 상세보기">경산하양</a>

												
											</li>
										
											<li data-brch-no="7801">
												

												<a href="../theater710e.html?brchNo=7801" title="경주 상세보기">경주</a>

												
											</li>
										
											<li data-brch-no="7303">
												

												<a href="../theater2c90.html?brchNo=7303" title="구미강동 상세보기">구미강동</a>

												
											</li>
										
											<li data-brch-no="7401">
												

												<a href="../theatera9e6.html?brchNo=7401" title="김천 상세보기">김천</a>

												
											</li>
										
											<li data-brch-no="7901">
												

												<a href="../theaterfef9.html?brchNo=7901" title="남포항 상세보기">남포항</a>

												
											</li>
										
											<li data-brch-no="7022">
												

												<a href="../theater9193.html?brchNo=7022" title="대구&#40;칠성로&#41; 상세보기">대구&#40;칠성로&#41;</a>

												
											</li>
										
											<li data-brch-no="7011">
												

												<a href="../theater879c.html?brchNo=7011" title="대구신세계&#40;동대구&#41; 상세보기">대구신세계&#40;동대구&#41;</a>

												
											</li>
										
											<li data-brch-no="7012">
												

												<a href="../theatere7e7.html?brchNo=7012" title="대구이시아 상세보기">대구이시아</a>

												
											</li>
										
											<li data-brch-no="6161">
												

												<a href="../theatera237.html?brchNo=6161" title="덕천 상세보기">덕천</a>

												
											</li>
										
											<li data-brch-no="6312">
												

												<a href="../theater9caa.html?brchNo=6312" title="마산 상세보기">마산</a>

												
											</li>
										
											<li data-brch-no="7451">
												

												<a href="../theater593d.html?brchNo=7451" title="문경 상세보기">문경</a>

												
											</li>
										
											<li data-brch-no="6001">
												

												<a href="../theater2d17.html?brchNo=6001" title="부산극장 상세보기">부산극장</a>

												
											</li>
										
											<li data-brch-no="6906">
												

												<a href="../theater4e2a.html?brchNo=6906" title="부산대 상세보기">부산대</a>

												
											</li>
										
											<li data-brch-no="7021">
												

												<a href="../theater4f39.html?brchNo=7021" title="북대구&#40;칠곡&#41; 상세보기">북대구&#40;칠곡&#41;</a>

												
											</li>
										
											<li data-brch-no="6641">
												

												<a href="../theaterbb69.html?brchNo=6641" title="사천 상세보기">사천</a>

												
											</li>
										
											<li data-brch-no="6642">
												

												<a href="../theater128f.html?brchNo=6642" title="삼천포 상세보기">삼천포</a>

												
											</li>
										
											<li data-brch-no="6261">
												

												<a href="../theaterd230.html?brchNo=6261" title="양산 상세보기">양산</a>

												
											</li>
										
											<li data-brch-no="6262">
												

												<a href="../theater77c9.html?brchNo=6262" title="양산라피에스타 상세보기">양산라피에스타</a>

												
											</li>
										
											<li data-brch-no="6811">
												

												<a href="../theater5908.html?brchNo=6811" title="울산 상세보기">울산</a>

												
											</li>
										
											<li data-brch-no="6191">
												

												<a href="../theaterffaa.html?brchNo=6191" title="정관 상세보기">정관</a>

												
											</li>
										
											<li data-brch-no="6421">
												

												<a href="../theater4c5f.html?brchNo=6421" title="창원 상세보기">창원</a>

												
											</li>
										
											<li data-brch-no="0014">
												

												<a href="../theaterd1f1.html?brchNo=0014" title="창원내서 상세보기">창원내서</a>

												
													
														
															<i class="iconset ico-theater-new"></i>
														
														
														
														
													
												
											</li>
										
											<li data-brch-no="6121">
												

												<a href="../theaterbf4d.html?brchNo=6121" title="해운대&#40;장산&#41; 상세보기">해운대&#40;장산&#41;</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
							<li>
								<button type="button" class="sel-city">광주/전라
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="5021">
												

												<a href="../theaterc0f6.html?brchNo=5021" title="광주상무 상세보기">광주상무</a>

												
											</li>
										
											<li data-brch-no="5061">
												

												<a href="../theater2dda.html?brchNo=5061" title="광주하남 상세보기">광주하남</a>

												
											</li>
										
											<li data-brch-no="5901">
												

												<a href="../theater5f27.html?brchNo=5901" title="남원 상세보기">남원</a>

												
											</li>
										
											<li data-brch-no="5302">
												

												<a href="../theater4dce.html?brchNo=5302" title="목포하당&#40;포르모&#41; 상세보기">목포하당&#40;포르모&#41;</a>

												
											</li>
										
											<li data-brch-no="5612">
												

												<a href="../theater0e1c.html?brchNo=5612" title="송천 상세보기">송천</a>

												
											</li>
										
											<li data-brch-no="5401">
												

												<a href="../theater72d0.html?brchNo=5401" title="순천 상세보기">순천</a>

												
											</li>
										
											<li data-brch-no="5552">
												

												<a href="../theater2e43.html?brchNo=5552" title="여수웅천 상세보기">여수웅천</a>

												
											</li>
										
											<li data-brch-no="0010">
												

												<a href="../theaterbf92.html?brchNo=0010" title="전대&#40;광주&#41; 상세보기">전대&#40;광주&#41;</a>

												
											</li>
										
											<li data-brch-no="5064">
												

												<a href="../theater3732.html?brchNo=5064" title="첨단 상세보기">첨단</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
							<li>
								<button type="button" class="sel-city">강원
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="2001">
												

												<a href="../theaterd9b3.html?brchNo=2001" title="남춘천 상세보기">남춘천</a>

												
											</li>
										
											<li data-brch-no="2171">
												

												<a href="../theaterd854.html?brchNo=2171" title="속초 상세보기">속초</a>

												
											</li>
										
											<li data-brch-no="2201">
												

												<a href="../theater8875.html?brchNo=2201" title="원주 상세보기">원주</a>

												
											</li>
										
											<li data-brch-no="2202">
												

												<a href="../theater83c6.html?brchNo=2202" title="원주센트럴 상세보기">원주센트럴</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
							<li>
								<button type="button" class="sel-city">제주
									
								</button>

								<div class="theater-list">
									<ul>
										
											<li data-brch-no="6901">
												

												<a href="../theater7fb8.html?brchNo=6901" title="제주 상세보기">제주</a>

												
											</li>
										
									</ul>
								</div>
							</li>
						
					</ul>
				</div>

				<div class="user-theater">
					
						
						
							<!-- 로그인 전 -->
							<div>
								<i class="iconset ico-favo-theater"></i> 나의 선호영화관 정보
								<a href="#" class="button small ml10" id="moveLogin" title="로그인하기">로그인하기</a>
							</div>
						
					
				</div>
			</div>

			
				<div class="tit-util mt70 mb15">
					<h3 class="tit">극장 이벤트</h3>
					<a href="#" onclick="NetfunnelChk.aTag('STORE_DTL','/event/theater');return false;" class="more" title="극장 이벤트 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
				</div>

				<div class="event-box">
					<ul>
						
							<li>
								<a href="#" class="eventBtn" data-no="8204" data-netfunnel="N" title="[신촌 | 이벤트] 앵콜연장! 별별 닉네임 상영관 상세보기">
									<img src="../../img.megabox.co.kr/SharedImg/event/2020/03/17/x23DPxjY0lBYKEGgOv0au8URBgUTbDPb.jpg" alt="[신촌 | 이벤트] 앵콜연장! 별별 닉네임 상영관" onerror="noImg(this)" />
								</a>
							</li>
						
							<li>
								<a href="#" class="eventBtn" data-no="8483" data-netfunnel="N" title="[청라지젤 | 시즌권] 지젤M 하반기 시즌권 런칭 상세보기">
									<img src="../../img.megabox.co.kr/SharedImg/event/2020/06/29/I7zwF8YsPKpSB6OTJeYQWFveuxhgIvlr.jpg" alt="[청라지젤 | 시즌권] 지젤M 하반기 시즌권 런칭" onerror="noImg(this)" />
								</a>
							</li>
						
					</ul>
				</div>
			

			<div class="tit-util mt70 mb15">
				<h3 class="tit">극장 공지사항</h3>
				<a href="../support/notice6b88.html?ti=3" class="more" title="극장 공지사항 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
			</div>

			<div class="table-wrap">
				<table class="board-list">
					<caption>극장, 제목, 지역, 등록일이 들어간 극장 공지사항 목록</caption>
					<colgroup>
						<col style="width:150px;">
						<col>
						<col style="width:150px;">
						<col style="width:120px;">
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
										<th scope="row">
											<a href="../support/notice/detail1ca4.html?artiNo=10117&amp;bbsNo=9" title="[문경] 7월휴관일 안내 상세보기">
												[문경] 7월휴관일 안내
											</a>
										</th>
										<td>부산/대구/경상</td>
										<td>2020.07.06</td>
									</tr>
								
									<tr>
										<td>고양스타필드</td>
										<th scope="row">
											<a href="../support/notice/detailb926.html?artiNo=10116&amp;bbsNo=9" title="[고양스타필드지점] 7/7&#40;화&#41; 건물 내 법정 전기 안전검사 실시 안내 상세보기">
												[고양스타필드지점] 7/7&#40;화&#41; 건물 내 법정 전기 안전검사 실시 안내
											</a>
										</th>
										<td>경기</td>
										<td>2020.07.06</td>
									</tr>
								
									<tr>
										<td>대전현대아울렛</td>
										<th scope="row">
											<a href="../support/notice/detail2a2e.html?artiNo=10115&amp;bbsNo=9" title="지점 임시 휴점 안내 상세보기">
												지점 임시 휴점 안내
											</a>
										</th>
										<td>대전/충청/세종</td>
										<td>2020.07.03</td>
									</tr>
								
									<tr>
										<td>화곡</td>
										<th scope="row">
											<a href="../support/notice/detail492c.html?artiNo=10114&amp;bbsNo=9" title="[화곡지점] 매점 운영시간 조정 안내&#40;7/3~&#41; 상세보기">
												[화곡지점] 매점 운영시간 조정 안내&#40;7/3~&#41;
											</a>
										</th>
										<td>서울</td>
										<td>2020.07.03</td>
									</tr>
								
									<tr>
										<td>대구신세계&#40;동대구&#41;</td>
										<th scope="row">
											<a href="../support/notice/detailb9fa.html?artiNo=10113&amp;bbsNo=9" title="지점 임시 휴점 안내 상세보기">
												지점 임시 휴점 안내
											</a>
										</th>
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
	<a href="#" class="btn-go-top" title="top">top</a>
</div>

<!-- footer -->
<footer id="footer">
    <!-- footer-top -->
    <div class="footer-top">
        <div class="inner-wrap">
            <ul class="fnb">
                <li><a href="../megaboxinfo.html" title="회사소개 페이지로 이동">회사소개</a></li>
                <li><a href="../recruit.html" title="인재채용 페이지로 이동">인재채용</a></li>
                <li><a href="../socialcontribution.html" title="사회공헌 페이지로 이동">사회공헌</a></li>
                <li><a href="../partner.html" title="제휴/광고/부대사업문의 페이지로 이동">제휴/광고/부대사업문의</a></li>
                <li><a href="../support/terms.html" title="이용약관 페이지로 이동">이용약관</a></li>
                <li class="privacy"><a href="../support/privacy.html" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
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
                <a href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&amp;ls=1&amp;mt=8" target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i class="iconset ico-appstore">앱스토어</i></a>
            </div>
        </div>
    </div>
    <!--// footer-bottom -->
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
<!--// footer -->

<!-- 모바일 때만 출력 -->
<div class="go-mobile">
	<a href="#" data-url="https://m.megabox.co.kr/">모바일웹으로 보기 <i class="iconset ico-go-mobile"></i></a>
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
</body>

<!-- Mirrored from www.megabox.co.kr/theater/list by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Jul 2020 06:35:02 GMT -->
</html>