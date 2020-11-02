<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String id = (String)session.getAttribute("id");
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
				<p class="tit-member">비밀번호 변경 결과</p>
				<br />
				<br />
					<h2>비밀번호 변경이 완료 되었습니다.</h2>
					<br />
					<br />
					<br />
				<div class="btn-member-bottom v1">
					<button id="main" type="button" class="button purple large">메인으로 가기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(function() {
	$('#main').click(function() {
		location.href = '<%=path%>/main.do';
	})
})
</script>
</body>
</html>