
<!--// header -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%String path = request.getContextPath(); 
 Cookie[] c = request.getCookies();
String cookieVal="";
if(c!=null){
    for(Cookie i:c){
        if(i.getName().equals("saveId")){
            cookieVal=i.getValue();
        }
    }
} 
%>
<!doctype html>
<!--[if lt IE 10]><html class="lt-ie9" lang="ko"><![endif]-->
<!--[if gt IE 9]><!--><html lang="ko"><!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
	<link rel="shortcut icon" href="/static/pc/images/favicon.ico" />



		<title>고객센터 | 라이프씨어터, 메가박스</title>
	
     	

		<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="<%=path %>/css/megabox.min.css" media="all" />

    
</head>

<body>

<!-- top: 460px; left: 301px; width: 500px; height: 500px; opacity: 0; display: block;  -->



		

    <section id="layer_login_select" class="modal-layer" style="z-index: 501;">
<a href="" class="focus">레이어로 포커스 이동 됨</a>
<div class="wrap" style="width: 425px; height: 365px; top:200px;left:37%;">
   <header class="layer-header"> <h3 class="tit">로그인</h3> </header>
   <div class="layer-con" style="height: 350px;">
      <div class="tab-cont-wrap">
      <div id="login_tab_01" class="tab-cont on">
         <a href="" class="ir" title="로그인"></a>
         <div class="login-member col-2">
            <div class="col-wrap">
               <div class="col left">
               <form id="loginForm" action="<%=path%>/login.do" method="post">
                  <div class="login-input-area">
                  <input autocomplete="off" id="ibxLoginId" maxlength="20" name="id" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim" <%if(cookieVal!=null){%>value="<%=cookieVal%>"<%} %>>
                  <input autocomplete="off" id="ibxLoginPwd" maxlength="20" name="pwd" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15">
                     <div class="alert"></div>
                     <div class="chk-util">
                        <div class="left">
                           <input id="chkIdSave" name="chkIdSave" type="checkbox" <%if(cookieVal!=null&&cookieVal!=""){%>checked="checked"<%}%>> <label for="chkIdSave">아이디 저장</label>
                        </div>
                     </div>
                     <button id="btnLogin" type="submit" class="button purple large btn-login" >로그인</button>
                     <div class="link">
                        <a href="<%=path%>/user-find.do" title="ID/PW 찾기 선택">ID/PW 찾기</a>
                        <a href="<%=path%>/join.do" title="회원가입 선택">회원가입</a>
                        <a href="<%=path%>/nonMem.do" title="비회원 예매확인 선택">비회원 예매확인</a>
                     </div>
                  </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
      </div>
   </div>
   <button type="button" class="btn-modal-close">레이어 닫기</button>
</div>
</section>

<header id="header" class="main-header ">
    <h1 class="ci"><a href="<%=path%>/main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>



<!-- 레이어 : 검색 -->
    <div id="layer_header_search" class="header-layer layer-header-search"></div>
    
<!-- 나의 메가박스 -->
    <div id="layer_mymega" class="header-layer layer-mymege">
       <a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>
        <div class="wrap" id="mymegabox" style="display:block">
        <c:if test="${not empty sessionScope.auth}">
            <div class="login-after">
            
            </div>
          </c:if>
      <c:if test="${empty sessionScope.auth}">
          
        </c:if>
        </div>
        <div class="ir">
            <a href="javascript:void(0)" class="layer-close" title="레이어닫기">레이어닫기</a>
        </div>
   </div>
</header>


<!-- 		<div id="bodyContent"> -->

<div id="contents">
    <div class="inner-wrap">
        <!-- store-payment -->

          
     
<div class="box-slash mt40">
						<p class="tit-pr">MEGABOX STORE BILLS</p>

						<p>
							스토어 상품 계산서
						</p>
					</div>
					
					<br><br><br>
	<h3 class="tit"  style="text-align: center;">메가박스를 이용해주셔서 감사합니다 </h3>				
<h2 class="tit" style="text-align: center;">  ${auth.name} 님의 결제내역서 입니다 </h2>


<div id="contents">
		

				<div class="screen-share">
					<dl class="bd-top-box">
						<dt><span class="num">01.</span>이용상품</dt><p></p>
						<dd>
							<ul class="dot-list">
								<li>상품명 : ${dto.product_name }</li>
								
								<br><br><br>
								
							</ul>
						</dd>
					</dl>
					
						<dl class="bd-top-box">
						<dt><span class="num">02.</span>이용카드</dt><p></p>
						<dd>
							<ul class="dot-list">
								<li>카드사  :   ${dto.co_card}</li><p></p>
								<li>카드번호  :  ${dto.cardNum}</li>
							
							</ul>
						</dd>
					</dl>
					

					<dl class="bd-top-box">
						<dt><span class="num">04.</span>상품가격</dt><p></p>
						<dd>
							<ul class="dot-list">
							<script>
							var origin = ${dto.payment }+ ${dto.discount};
							console.log(origin);
							window.onload = function(){
								$(".price").html(origin);}
							
							
							</script>
							
							
								
								<li >상품가격   :<span id="price" class="price"></span></li><p></p>
								<li>카드 할인가격  :  ${dto.discount}</li><p></p>
								<li>총가격  :  ${dto.payment }</li>
				
							</ul>
						</dd>
					</dl>

					<dl class="bd-top-box">
						<dt><span class="num">03.</span>적립포인트</dt><p></p>
						<dd>
							<ul class="dot-list">
								
								<li>적립예정 포인트 :${dto. nowPoint} </li><p></p>
								<li>총포인트  :  ${dto. savePoint} </li>
							</ul>
						</dd>
					</dl>
					
					
					
					<dl class="bd-top-box">
						<dt><span class="num">05.</span>상품주문번호</dt>
						<dd>
							<ul class="dot-list">
								<li>상품 갯수 : ${dto.count}</li><p></p>
								<li>상품 주문번호 : ${dto.seq_order}</li><p></p>
								
				
							</ul>
						</dd>
					</dl>
					

					
				</div>
			</div>


       
        <!--// store-payment -->
    </div>
</div>

<div class="container">

    <div id="storePay"></div>
</div>
<!--// container -->
<!-- 		</div> -->
        


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
                <li class="privacy"><a href="/support/privacy" title="개인정보처리방침 페이지로 이동">개인정보처리방침</a></li>
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
                <a href="https://itunes.apple.com/kr/app/megabox/id894443858?l=ko&ls=1&mt=8" target="_blank" title="MEGABOX 앱스토어 페이지로 이동"><i class="iconset ico-appstore">앱스토어</i></a>
            </div>
        </div>
    </div>
    <!--// footer-bottom -->
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
<!--// footer -->

<!-- 모바일 때만 출력 -->
<div class="go-mobile">
	<a href="#" data-url="https://m.megabox.co.kr">모바일웹으로 보기 <i class="iconset ico-go-mobile"></i></a>
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
	<div class="bg-modal"></div>
	
</body>
</html>