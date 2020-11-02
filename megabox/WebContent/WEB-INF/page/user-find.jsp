<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String find = request.getParameter("find");
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
<script>
function fn_nameChk(){ 	//이름 체크 메서드
	var regex= /^[가-힣]{2,5}$/;
	if (regex.test($('#id').val())) {
		$('#chkName').html('');
	}else {
		$('#chkName').html('올바르지 않은 이름입니다.');
	}
}
function fn_telChk(){	//휴대폰 체크 메서드
	var regex=/(010)([0-9]{4})([0-9]{4})$/;
	if (regex.test($('#tel').val())) {
		$('#chkTel').html('');
	}else {
		$('#chkTel').html('옳바르지 않은 번호입니다.');
	}
}
</script>
</head>
<body class="bg-member">
    <div class="body-wrap">
	<div class="member-wrap">
		<h1 class="ci"><a href="<%=path%>/main.do" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>
		<div class="col-wrap">
			<div class="col">
				<p class="tit-member">아이디/비밀번호 찾기</p>
				<div class="tab-list">
					<ul>
						<li <%if(find.equalsIgnoreCase("id")){%>class="on"<%} %>><a href="?find=id" class="findId" title="아이디찾기 선택">아이디찾기</a></li>
						<li <%if(find.equalsIgnoreCase("pwd")){%>class="on"<%} %>><a href="?find=pwd" class="findPwd" title="비밀번호 찾기 선택">비밀번호 찾기</a></li>
					</ul>
				</div>
				
<%if(find.equalsIgnoreCase("id")){%>	
<form method="post">
				<h2 class="tit mt40">ID 찾기</h2>

				<div class="table-wrap">
					<table class="board-form">
						<colgroup>
							<col style="width:130px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="ibxSchPwdMbNm">이름</label></th>
								<td>
									<input id="name" maxlength="20" name="name" onkeyup="fn_nameChk();" type="text" placeholder="이름" class="input-text w230px">
									<div id="chkName" class="chkClass"></div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchPwdLoginId">생년월일</label></th>
								<td>
									<input id="birth" maxlength="20" name="birth" type="text" placeholder="생년월일 6자리" class="input-text w230px">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchPwdMblpTelno">휴대폰 번호</label></th>
								<td>
									<input type="text" id="tel" name="tel" onkeyup="fn_telChk();" maxlength="11" placeholder="'-' 없이 입력" class="input-text w230px">
									<div id="chkTel" class="chkClass"></div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="btn-member-bottom v1">
					<button id="btnFind" type="submit" class="button purple large disabled">아이디 찾기</button>
				</div>
</form>
<%}else if(find.equalsIgnoreCase("pwd")){%>
<form method="post">
<h2 class="tit mt40">PW 찾기</h2>
				<div class="table-wrap">
					<table class="board-form">
						<colgroup>
							<col style="width:130px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="ibxSchPwdLoginId">아이디</label></th>
								<td>
									<input id="id" maxlength="20" name="id"  type="text" placeholder="아이디" class="input-text w230px">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchPwdMbNm">이름</label></th>
								<td>
									<input id="name" maxlength="20" name="name" onkeyup="fn_nameChk();" type="text" placeholder="이름" class="input-text w230px">
									<div id="chkName" class="chkClass"></div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchPwdMblpTelno">휴대폰 번호</label></th>
								<td>
									<input type="text" id="tel" name="tel" onkeyup="fn_telChk();" maxlength="11" placeholder="'-' 없이 입력" class="input-text w230px">
									<div id="chkTel" class="chkClass"></div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn-member-bottom v1">
					<button id="btnFind" type="submit" class="button purple large disabled">비밀번호 찾기</button>
				</div>
				</form>
<%}%>
			</div>
		</div>
	</div>
</div>
</body>
</html>