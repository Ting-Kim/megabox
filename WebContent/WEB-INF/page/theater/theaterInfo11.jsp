<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	String path = request.getContextPath();
	int branchSeq = Integer.parseInt(request.getParameter("branchSeq"));
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







<title>(강남)극장정보 | 라이프씨어터, 메가박스</title>
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

  <c:forEach items="${titleList}" var="titleDTO">
											<c:if test="${titleDTO.seq_branch eq 1} ">
												<p class = "big">${titleDTO.title}</p>
												<br>
												<p>${titleDTO.specific }</p>
											</c:if>
										</c:forEach>  
	
	
</body>
</html>