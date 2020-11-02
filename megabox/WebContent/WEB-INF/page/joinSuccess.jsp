<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String name = (String) session.getAttribute("name");
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
<title>가입성공 | 라이프시어터,메가박스</title>
<link rel="stylesheet" href="<%=path %>/css/megabox.min.css" media="all">
</head>
<body class="bg-member">
	<div class="body-wrap">
		<div class="member-wrap">
			<h1 class="ci"><a href="<%=path%>/main.do" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>
			<div>
				<div class="col-wrap">
					<div class="col">
						<div class="step-member" title="">
							<ol>
								<li>
									<p class="step"><em>STEP1.</em> <span>약관동의</span></p>
								</li>
								<li>
									<p class="step"><em>STEP2.</em> <span>정보입력</span></p>
								</li>
								<li>
									<p class="step on"><em>STEP3.</em> <span>가입완료</span></p>
								</li>
							</ol>
						</div>
						<p class="page-info-txt">
						<strong>회원가입 완료</strong>
						<br />
						<span><%=name%>님의 메가박스 회원가입을 진심으로 축하드립니다.</span>
						<%
						session.removeAttribute("name");
						%>
						</p>
						<br />
						<br />
						<br />
						<div class="btn-member-bottom">
							<button id="btnJoinInfoRegButton" type="button" class="button purple large">메인으로 가기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('button').click(function() {
			location.href = '<%=path%>/main.do';
		})
	</script>
</body>
</html>