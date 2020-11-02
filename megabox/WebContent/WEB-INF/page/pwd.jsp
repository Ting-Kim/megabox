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
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<title>라이프시어터,메가박스</title>
<link rel="stylesheet" href="<%=path %>/css/megabox.min.css" media="all">
</head>
<body class="bg-member">
    <div class="body-wrap">
	<div class="member-wrap">
		<h1 class="ci"><a href="<%=path%>/main.do" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>
		<div class="col-wrap">
			<div class="col">
			<form action="<%=path%>/changePwd.do" method="post">
				<p class="tit-member">비밀번호 찾기 결과</p>
				<div class="table-wrap">
					<table class="board-form">
						<tbody>
							<tr>
								<th scope="row"><label for="ibxSchPwdLoginId">변경할 비밀번호</label></th>
								<td>
								<input id="pwd" maxlength="20" name="pwd" type="text" placeholder="영문,숫자 조합 " class="input-text w230px">
								<div id="pwdChk" class="chkClass"></div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchPwdLoginId">변경할 비밀번호 확인</label></th>
								<td>
								<input id="pwdC" maxlength="20" name="pwdChk" type="text" placeholder="영문,숫자 조합" class="input-text w230px">
								<div id="pwdChkMessage" class="chkClass" ></div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn-member-bottom v1">
					<button id="changePwd" type="submit" class="button purple large" disabled="disabled">비밀번호 변경</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>
$('#pwd').keyup(function() {
	var regex = /^[A-Za-z0-9]{6,12}$/;
	if (regex.test($('#pwd').val())) {
		$('#pwdChk').html('');
	}else {
		$('#pwdChk').html('비밀번호는 숫자 + 영어 6~12 자리로  입력 가능합니다.');
	}
})
$('#pwdC').keyup(function() {
	var pwd1 = $('#pwd').val();
	var pwd2 = $('#pwdC').val();
	if (pwd1!==pwd2) {
		$('#pwdChkMessage').html('비밀번호가 일치하지 않습니다.')
		$('#changePwd').attr('disabled','disabled');
	}else {
		$('#pwdChkMessage').html('');
		$('#changePwd').removeAttr('disabled');
	}
})
</script>
</body>
</html>