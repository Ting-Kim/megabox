<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<%=path%>/js/bootstrap.js"></script>
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css" />
<link rel="stylesheet" href="<%=path%>/css/custom.css" />
<title>가입실패 | 라이프시어터,메가박스</title>
<link rel="stylesheet" href="<%=path %>/css/megabox.min.css" media="all">
</head>
	<body class="bg-member">
		<div class="body-wrap">
			<header> </header>
			<div class="member-wrap">
				<h1 class="ci"><a href="<%=path%>/main.do" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>
	<div>
			<div class="col-wrap">
				<div class="col">
					<!-- step-member -->
					<div class="step-member" title="">
						<ol>
							<li>
								<p class="step">
									<em>STEP1.</em> <span>약관동의</span>
								</p>
							</li>
							<li>
								<p class="step">
									<em>STEP2.</em> <span>정보입력</span>
								</p>
							</li>
							<li>
								<p class="step on">
									<em>STEP3.</em> <span>가입실패</span>
								</p>
							</li>
						</ol>
					</div>
					<p class="page-info-txt">
					<strong>회원가입 실패</strong>
					<br />
						<span>오류로 인해 가입처리에 실패 하였습니다.</span>
						<br />
						<span>다시 시도해 주세요.</span>
					</p>
					<div class="btn-member-bottom">
						<button id="btnJoinInfoRegButton" type="button" class="button purple large">메인으로 가기</button>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
	<div class="normalStyle" style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle" style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
	
	
	
	
	
<script>
	// chkAll : 체크박스 모두동의 눌렀을경우
	$(function() {
		$('#chkAll').click(function() {
			var chk = $(this).is(":checked");
			if (chk) {
				$("#chkUtilClau").prop('checked', true);
				$("#chkPersonInfo").prop('checked', true);
				$("#chkMarketInfo").prop('checked', true);
				$("#btnClauAgree").attr('disabled', false);
			}else {
				$("#chkUtilClau").prop('checked', false);
				$("#chkPersonInfo").prop('checked', false);
				$("#chkMarketInfo").prop('checked', false);
				$("#btnClauAgree").attr('disabled', true);
			}
		})
	})
	$('#btnClauAgree').click(function() {
		$('.no1').css('display','none');
		$('.no2').css('display','block')
	})
</script>

</body>
</html>