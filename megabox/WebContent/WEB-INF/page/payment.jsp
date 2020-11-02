
<!--// header -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath(); 
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

<section id="layer-01" class="modal-layer" style=" z-index: 501;  top:200px;left:20%; ">
<a href="" class="focus"></a>
					<div class="wrap"   style="width: 500px; height: 600px; top:200px;left:20%;" >
					
						<header class="layer-header">
							<h3 class="tit">
								결제
							</h3>
						</header>
				<div class="layer-con" style="height: 150px;">
							<p>카드사를 선택해 주세요</p>
							<div class="box-gray a-c">
								
								
								<select id="cpart" title="지역 선택" name =" loc">
            <option class="bs-title-option" value="0" id="loc">카드사선택</option>					
            <option value="1">현대</option>
            <option value="2">삼성</option>
            <option value="3">롯데</option>
            <option value="4">신한</option>
            <option value="5">국민</option>
            <option value="6">하나</option>
            <option value="7">우리</option>						
            <option value="8">농협</option>
             <option value="9">기업</option>
            <option value="10">씨티</option>
             <option value="11">제일</option>
             <option value="12">산업</option>
             <option value="13">수협</option>
             <option value="14">비씨</option>
             <option value="15">카카오뱅크</option>
             <option value="16">SKT</option>
             <option value="17">KT</option>
             <option value="18">OK CASHBAG</option>
             <option value="19">HAPPY POINT</option>
             <option value="20">컬쳐랜드</option>
             <option value="100">기타</option> 
             
            </select>
							</div>		
								
							</div>
					
						<div class="layer-con" style="height: 150px;">
							<p>카드번호 입력 바랍니다.</p>

							<div class="box-gray a-c">
								<input type="password"  name = "cardNum"   id="cardNum" title="카드번호입력" class="input-text w250px"  placeholder="xxxx-xxxx-xxxx-xxxx" maxlength="19">
							</div>
					
						</div>	

							
						<div class="layer-con" style="height: 150px;">
							<p>cvc입력해주세요</p>
							<div class="box-gray a-c">
								<input type="password" id="cvcNum" title="cvc 입력" class="input-text w250px" maxlength="3">
							</div>		
						</div>
						

							
					<p class="font-red mt10 mb0" id ="nope" style="display: none;">결제수단과 빈칸을 모두 선택,입력해주세요</p>
					
					
					
							<div class="btn-group">
								<a href="#" class="button small lyclose" id="No" title="취소">취소</a>
									
									<button  class="button small purple" id="OK" title="확인"  type="submit">확인</button>
								 
							
							</div>
	
					

						<button type="button" class="btn-modal-close">레이어 닫기</button>
			
					</div>
				</section>
				

		

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
        <div class="store-payment">
            <h2 class="tit">결제</h2>

            <h3 class="tit">주문상품정보</h3>

            <div class="table-wrap">
                <table class="board-list">
                    <caption>주문상품정보 목록 표</caption>
                    <colgroup>
                        <col style="width:120px;">
                        <col>
                        <col style="width:150px;">
                        <col style="width:80px;">
                        <col style="width:200px;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="colgroup" colspan="3">주문상품</th>
      
                            <th scope="col">구매수량</th>
                            <th scope="col">총 상품금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="a-c">
                                <div class="goods-info">

                                    
                         <p class="img" >

         	 <c:if test = "${seq_product lt 10}">
			 <img src="/megabox/img/storeimg/${seq_product}.jpg" alt ="" onerror="noImg(this);" />
		 		</c:if>
		 
		 	 <c:if test = "${seq_product gt 9}">
		 		<img src="/megabox/img/storeimg/${seq_product}.png" alt ="" onerror="noImg(this);" />
				 </c:if> 
         			  </p>
                                

                                
                                </div>
                            </td>
                            <th scope="row">
                                <div class="goods-info">
                                    <p class="name"><a href="javascript:fn_storeDetail();" title="일반관람권"></a></p>
                                    <p class="bundle">${product}</p>
                                </div>

                                <div class="mt10">
                                    <span id="acptBrchView" class="font-gblue"></span><em id="acptBrchChoiValView"></em>
                                </div>
                            </th>
                            <td>
                                 

                            </td>
                            <td><em id="purcQtyView">${count}</em></td>
                            <td>
                                <div class="goods-info">
	                                
	                                    
	                                    	
	                                    	<em id="prdtSumAmtView" class="price">${payment}</em>원
	                                    
	                                
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

       

            <h3 class="tit mt40">최종결제</h3>

            <!-- payment-final -->
            <div class="payment-final">
                
                    
                    
		                <div class="calc" >
		                    <div class="cell all">
		                        <p class="txt">총 상품금액</p>
		                        <p class="price">
		                            <em id="totPrdtAmtView">${payment}</em>
		                            <span>원</span>
		                        </p>
		                    </div>
		                    <i class="iconset ico-circle-minus">빼기</i>

		                    <div class="cell sale">
		                        <p class="txt">할인금액</p>
		                        <p class="price">
		                            <em id="totDcAmtView" >0</em>
		                            <span>원</span>
		                        </p>
		                    </div>
		                    <i class="iconset ico-circle-equal">등호</i>

		                    <div class="cell real">
		                        <p class="txt">최종 결제금액</p>
		                        <p class="price">
		                            <em id="lstPayAmtView">${payment }</em>
		                            <span>원</span>
		                        </p>
		                    </div>
		                </div>
		                <div class="choice">
		                    <p class="txt">결제수단 선택</p>

		                    
		                        <div class="cell">
		                            <input type="radio" id="radio_choice01" name="radio_choice" value="1">
		                            <label for="radio_choice01">신용/체크카드</label>
		                        </div>
		                        
		                    	
									<div class="cell">
		                            <input type="radio" id="radio_choice02" name="radio_choice" value="2">
		                            <label for="radio_choice01">휴대폰 결제</label>
		                        </div>
		                    

		                    
		                        <div class="cell">
		                            <input type="radio" id="radio_choice03" name="radio_choice" value="3">
		                            <label for="radio_choice03">카카오페이</label>
		                        </div>
		                               
		                               
		                               <div class="cell">
		                            <input type="radio" id="radio_choice04" name="radio_choice" value="4">
		                            <label for="radio_choice03">PAYCO</label>
		                        </div>
		                               
		                               
		                               <div class="cell">
		                            <input type="radio" id="radio_choice5" name="radio_choice" value="5">
		                            <label for="radio_choice05">상품권</label>
		                        </div>
		                    
		                </div>
                    
                    <input type="hidden"  id ="product" name= "product"  value="${seq_product }" />
                

            </div>
            <!--// payment-final -->

            <div class="btn-group pt40">
                <a href="javascript:history.back();" class="button large w170px" title="취소">취소</a>
                <a href="javascript:void(0)" class="button purple large w170px"  id ="GoPayment" title="결제">결제</a>
		
            </div>
            
         	<form id="storeBills" action="<%=path%>/storeBills.do" method="post" ">
         
		   </form> 

            
            모달
            <script>
         $(function() {
			
		
            	  $("#GoPayment").click(function() {
          			$("body").addClass("no-scroll");
          			$("#layer-01").addClass("on");  //block으로 바꿈
      				$(".bg-modal").show();
      				$(".bg-modal").css("opacity" , "1");
            	  })
            	  
	
      			$(".btn-modal-close").on("click", function(){
      			
      				$("#layer-01").removeClass("on");
      				$(".bg-modal").css("opacity" , "0");
      			}) 
         
          

			
			
				$("#No").on("click", function(){	
					
					$("#layer-01").removeClass("on");
      				$(".bg-modal").css("opacity" , "0");
					
				})
			
		$('select[id=cpart]').change(function() {
				$(this).prop("selected", true);	})
				

			
		
				
				$("#OK").on("click", function(){	
				
	
					 				var cardNum= $("#cardNum").val() ; //카드번호
					 				var cvcNum= $("#cvcNum").val() ;	 //cvc번호
					 				var co_card = $("#cpart option:selected").val(); //선택한 카드사
					 				var m_seq= ${auth.m_seq}; //회원의 seq
					 				var mem_grade= ${auth.mem_grade}; //회원등급
					 				
					 				
					 				var name = '${auth.name}';
					 				
					 				
					 				var payment = $("#lstPayAmtView").html() ;	 //가격
					 				var product = $("#product").val() ;	//제품명
					 				var count = $("#purcQtyView").html() ;//제품갯수
					 				

									
								
					 				
					 				var c_payment; // 결제수단
									
					 				var radio = document.getElementsByName('radio_choice');
					 				for(var i=0; i<radio.length; i++) {
		  				 			 if(radio[i].checked) {
		  				 				c_payment = radio[i].value;
		   						 }
										}
				
					 			
				 			 		console.log("1.카드번호  :" +cardNum);
					 				console.log("2.cvc번호  : " + cvcNum);
					 				console.log("3.카드사seq :  " +co_card);					 				
					 				console.log("4.회원번호  : " + m_seq); 
					 				console.log("5.회원등급   : " + mem_grade);
					 				console.log("6.가격  : " +payment); 
					 				console.log("7.제품seq   : "  +product); 
					 				console.log("8.결제수단   : "  +c_payment); 
					 				console.log("9.제품의 갯수   : "  +count); 
		
					 				
					 				
					 			
					 				$.ajax({
					 					type:'get',
url:'<%=path%>/store/paypay.aj?cardNum='+cardNum+'&cvcNum='+cvcNum+'&co_card='+co_card+'&m_seq='+m_seq+'&mem_grade='+mem_grade+'&payment='+payment+'&product='+product+'&c_payment='+c_payment+'&count='+count    ,
					 					 dataType : 'json',				
					 					 error: function(){
					 						
					 						document.querySelector("#nope").style.setProperty('display', 'block');		
					 						 
					 					 }, //에러나면 데이터 다 입력하라고 모달띄우기


					 					 success: function(data){
					 						 
					 						 
					 						$("#layer-01").removeClass("on");
				 		      				$(".bg-modal").css("opacity" , "0");
				 		      			
					 						
				 		      				$.each(data , function(index, datas){	
				 		      					
				 		      				var cardNum = 	datas.cardNum;
				 		      				var discount = 	datas.discount;
				 		      				var co_card = 	datas.co_card;
				 		      				var nowPoint = 	datas.nowPoint;
				 		      				var savePoint = 	datas.savePoint;
				 		      				var product_name = 	datas.product_name;
				 		      				var count = 	datas.count;
				 		      				var payment = 	datas.payment;
				 		      				var seq_order = datas.seq_order;
				 		      				
				 		      				
				 		   				 	str =  '    <input type="hidden" name="cardNum" value="' +cardNum+ '"></input>  ';
				 		      				str +=  '    <input type="hidden" name="discount" value="' +discount+ '"></input>   ';
				 		      				str +=  '    <input type="hidden" name="co_card" value="' +co_card+ '"></input>   ';
				 		      				str +=  '    <input type="hidden" name="nowPoint" value="' +nowPoint+ '"></input>   ';
				 		      				str +=  '    <input type="hidden" name="savePoint" value="' +savePoint+ '"></input>   ';
				 		      				str +=  '    <input type="hidden" name="product_name" value="' +product_name+ '"></input>   ';
				 		      				str +=  '    <input type="hidden" name="count" value= "' +count+ '"></input> ';
				 		      				str +=  '    <input type="hidden" name="payment" value="' +payment+ '"></input>  ';
				 		      				str +=  '    <input type="hidden" name="seq_order" value="' +seq_order+ '"></input>  ';
				 		    
				 		      				$('#storeBills').append(str);
				 		      			
				 		      				$('#storeBills').submit();  
				 		      					
				 		      				})
					 						 
					 					
					 							
					 						
					 		      				<%-- window.location.href = "<%=path%>/storeBills.do?name="+name; --%>
					 		      				

											
					 						 
					 						

					 					}
					 							
					 				}) //ajax
					 				
								}) //OK
         })	//function()
         
         
            </script>
            

            
            
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