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
				<p class="tit-member">아이디 찾기 결과</p>
				<br />
					<h2>고객님의 ID는 <%=id%> 입니다. </h2>
					<%session.removeAttribute("id");%>
				<div class="btn-member-bottom v1">
					<button id="btnSchPwd" type="button" class="button purple large">메인으로 가기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>