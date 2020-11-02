<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=path%>/css/megabox.min.css" />
</head>
<body class="body-iframe">
	<div class="inner-wrap" style="padding-top: 40px; padding-bottom: 100px;">
		<div class="quick-reserve">
			<h2 class="tit">빠른예매</h2>
			<div class="seat-select-section">
				<div class="seat-section">
					<div class="tit-util">
						<h3 class="tit small">
							관람인원선택<span class="sub">(최대 8매 선택가능)</span>
						</h3>
						<div class="right">
							<button type="button" class="button gray-line small"
								id="seatMemberCntInit">
								<i class="iconset ico-reset-small"></i>초기화
							</button>
						</div>
					</div>
					<script>
					$(function() {
						var count = 0;
						var num = 1;
						$('button.up').click(function() { // up 눌럿을 때 
							let click_name = $(this).attr('name');
							console.log(click_name);
							if (count>=8) {
								alert("8자리 까지 예약 가능합니다.");
							}else {
								if (count==0) {
									$('.seat-count-before').removeClass('on');
									$('.seat-count-before').addClass('off');
								}
								$("#"+click_name).text(parseInt($("#"+click_name).text())+parseInt(num)); 
								count +=num;
							}
						})
						$('button.down').click(function() { // down 눌럿을 떄
							let click_name = $(this).attr('name');
// 							if (count<=0||$("#"+click_name).text()<=0) {} // 아래랑 반대됨 
							if (count>0&&$("#"+click_name).text()>0) {
								$("#"+click_name).text(parseInt($("#"+click_name).text())-parseInt(num)); 
								count -=num;
							}
						})
					
					})
					</script>
					<div class="seat-area">
						<div class="seat-count" style="min-height: 52px">
						
							<div class="cell">
								<p class="txt">성인</p>
								<div class="count">
									<button type="button" class="down" name="a" title="성인 좌석 선택 감소">-</button>
									<div class="number">
										<button type="button" class="now" id="a" title="성인 현재 좌석 선택 수">0</button>
									</div>
									<button type="button" class="up" name="a" title="성인 좌석 선택 증가">+</button>
								</div>
							</div>
							
							<div class="cell"><p class="txt">청소년</p>
								<div class="count">
									<button type="button" class="down" name="y" title="청소년 좌석 선택 감소">-</button>
									<div class="number">
										<button type="button" class="now" id="y" title="청소년 현재 좌석 선택 수" >0</button>
									</div>
									<button type="button" class="up" name="y" title="청소년 좌석 선택 증가">+</button>
								</div>
							</div>
							
							<div class="cell">
								<p class="txt">우대</p>
								<div class="count">
									<button type="button" class="down" name="o" title="우대 좌석 선택 감소">-</button>
									<div class="number">
										<button type="button" class="now" id="o" title="우대 현재 좌석 선택 수" >0</button>
									</div>
									<button type="button" class="up" name="o" title="우대 좌석 선택 증가">+</button>
								</div>
							</div>
							
						</div>
						
						<div class="seat-layout">
							<div class="alert" style="display: none;"></div>
							<div class="seat-count-before" style="top: 0px">관람인원을 선택하십시요</div>
							<div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
								<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
									<div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position: relative; top: 0px; left: 0px; height: 270px;" dir="ltr">
										<div id="seatLayout" style="width: 100%; height: 270px;">
											<img src="<%=path%>/img/img-theater-screen.png" alt="screen" style="position: absolute; left: 62px; top: 10px;" class="mCS_img_loaded">
											<div class'row'="">
											<table>
												<tr>
													<td><button type="button" class="btn-seat-row" title="A 행" style="position: absolute; left: 216px; top: 52px;">A</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
														<c:if test="${fn:startsWith(dto.seq_seat,'a')}">
															<td class="seat">
															<button type="button" title="${dto.seat}" id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20* (status.index%10) }px; top: 50px; width:20px;">
																<span class="num">${dto.seq_seat}</span>
															</button>
															</td>
													</c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button" class="btn-seat-row" title="B 행" style="position: absolute; left: 216px; top: 72px;">B</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
													<c:if test="${fn:startsWith(dto.seq_seat,'b')}">
													<td class="seat">
													<button type="button" title="B1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20*(status.index%10) }px; top: 70px; width: 20px;">
														<span class="num">${dto.seq_seat}</span>
													</button>
													</td>
													</c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button" class="btn-seat-row" title="C 행" style="position: absolute; left: 216px; top: 92px;">C</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
													<c:if test="${fn:startsWith(dto.seq_seat,'c')}">
													<td class="seat">
													<button type="button" id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left:${ 261+ 20* (status.index%10) }px; top: 90px; width: 20px;">
														<span class="num">${dto.seq_seat}</span>
													</button>
													</td></c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button"  class="btn-seat-row" title="D 행" style="position: absolute; left: 216px; top: 112px;">D</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
													<c:if test="${fn:startsWith(dto.seq_seat,'d')}">
													<td class="seat">
													<button type="button" title="D1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20* (status.index%10) }px; top: 110px; width: 20px;">
														<span class="num">${dto.seq_seat}</span>
													</button>
													</td></c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button"  class="btn-seat-row" title="E 행" style="position: absolute; left: 216px; top: 132px;">E</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
													<c:if test="${fn:startsWith(dto.seq_seat,'e')}">
													<td class="seat">
													<button type="button" title="E1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20* (status.index%10) }px; top: 130px; width: 20px;">
														<span class="num">${dto.seq_seat}</span>
													</button>
													</td></c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button" class="btn-seat-row" title="F 행" style="position: absolute; left: 216px; top: 152px;">F</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
													<c:if test="${fn:startsWith(dto.seq_seat,'f')}">
													<td class="seat">
													<button type="button" title="F1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20* (status.index%10) }px; top: 150px; width: 20px;">
														<span class="num">${dto.seq_seat}</span>
													</button>
													</td></c:if>
													</c:forEach>
												</tr> 
												<tr>
	 												<td> <button type="button" class="btn-seat-row" title="G 행" style="position: absolute; left: 216px; top: 172px;">G</button></td>
	 												<c:forEach items="${seat}" var="dto" varStatus="status" >
	 												<c:if test="${fn:startsWith(dto.seq_seat,'g')}">
	 												<td class="seat">
													<button type="button" title="G1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20* (status.index%10) }px; top: 170px; width: 20px;">
														<span class="num">${dto.seq_seat}</span>
													</button>
													</td></c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button" class="btn-seat-row" title="H 행" style="position: absolute; left: 216px; top: 192px;">H</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
													<c:if test="${fn:startsWith(dto.seq_seat,'h')}">
													<td class="seat">
													<button type="button" title="H1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20* (status.index%10) }px; top: 190px; width: 20px;">
														<span class="num">${dto.seq_seat}</span>
													</button>
													</td>
													</c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button" class="btn-seat-row" title="I 행" style="position: absolute; left: 216px; top: 212px;">I</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status">
													<c:if test="${fn:startsWith(dto.seq_seat,'i')}">
													<td class="seat">
													<button type="button" title="I1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261+ 20* (status.index%10) }px; top: 210px; width: 20px;">
														<span class="num"> ${dto.seq_seat}</span>
													</button>
													</td>
													</c:if>
													</c:forEach>
												</tr>
												<tr>
													<td><button type="button" class="btn-seat-row" title="J 행" style="position: absolute; left: 216px; top: 232px;">J</button></td>
													<c:forEach items="${seat}" var="dto" varStatus="status" >
													<c:if test="${fn:startsWith(dto.seq_seat,'j')}">
													<td class="seat">
													<button type="button" title="J1 " id="${dto.seq_seat}" class="jq-tooltip seat-condition standard common" style="position: absolute; left: ${ 261 + 20 * (status.index%10)}px; top: 230px; width: 20px;" >
														<span class="num">${dto.seq_seat}</span> 
													</button>
													</td>
													</c:if>
													</c:forEach>
												</tr>
												</table>
											</div>
											<img src="<%=path%>/img/img-door-right.png" alt="우측 출입구" style="position: absolute; left: 541px; top: 30px; width: 16px; height: 16px;" class="mCS_img_loaded">
											<img src="<%=path%>/img/img-door-top.png"alt="상단측우측 출입구" style="position: absolute; left: 241px; top: 250px; width: 16px; height: 16px;" class="mCS_img_loaded">
										</div>
									</div>
									<div id="mCSB_1_scrollbar_vertical"
										class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical">
										<div class="mCSB_draggerContainer">
											<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
												style="position: absolute; min-height: 30px; display: none; height: 569px; top: 0px; max-height: 382px;">
												<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
											</div>
											<div class="mCSB_draggerRail"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="zone-legend" style="display: none"></div>
					</div>
				</div>
				<div class="seat-result">
					<div class="wrap">
						<div class="tit-area">
							<span class="movie-grade small age-all">${content.age}</span>
							<p class="tit">${content.name}</p>
							<p class="cate">2D(자막)</p>
						</div>
						<div class="info-area">
							<p class="theater">${content.area}</p>
							<p class="special">${content.theater}</p>
							<p class="date">
								<span></span><em></em>
							</p>
							<div class="other-time">
								<button type="button" class="now">
									14:50~17:08<i class="arr"></i>
								</button>
								<ul class="other">
									<li><button type="button" class="btn on ">${content.theaterDate}</button></li>
								</ul>
							</div>
							<p class="poster">
								<img alt="${content.name}" src="<%=path%>/img/poster/${content.num}/${content.num}.jpg">
							</p>
						</div>
						<div class="choice-seat-area">
							<div class="legend">
								<ul class="list">
									<li><div class="seat-condition choice" title="선택한 좌석"></div> <em>선택</em></li>
									<li><div class="seat-condition finish" title="예매 완료"></div> <em>예매완료</em></li>
									<li><div class="seat-condition common" title="일반"></div> <em>일반</em></li>
								</ul>
							</div>
							<div class="seat-num">
								<p class="tit">선택좌석</p>
								<div class="my-seat">
									<div class="seat all" title="구매가능 좌석">-</div>
									<div class="seat all" title="구매가능 좌석">-</div>
									<div class="seat all" title="구매가능 좌석">-</div>
									<div class="seat all" title="구매가능 좌석">-</div>
									<div class="seat all" title="구매가능 좌석">-</div>
									<div class="seat all" title="구매가능 좌석">-</div>
									<div class="seat all" title="구매가능 좌석">-</div>
									<div class="seat all" title="구매가능 좌석">-</div>
								</div>
							</div>
						</div>
						<div class="pay-area">
							<p class="count"></p>
							<div class="pay">
								<p class="tit">최종결제금액</p>
								<div class="money">
									<em>0</em> <span>원</span>
								</div>
							</div>
						</div>
						<div class="btn-group">
							<a href="javaScript:void(0)" class="button" id="pagePrevious" title="이전">이전</a> 
							<button type="submit" class="button disabled" id="pageNext" title="다음">다음</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="normalStyle"
		style="display: none; position: fixed; top: 0; left: 0; background: #000; opacity: 0.7; text-indent: -9999px; width: 100%; height: 100%; z-index: 100;">닫기</div>
	<div class="alertStyle"
		style="display: none; position: fixed; top: 0px; left: 0px; background: #000; opacity: 0.7; width: 100%; height: 100%; z-index: 5005;"></div>
		<script>
		var count =0;
		$(function() {
			$('td.seat button').mouseover(function() {
				$(this).addClass('on');
			})
			$('td.seat button').mouseout(function() {
				$(this).removeClass('on');
			})
			$('td.seat button').click(function() {
				if (count>8) {
					alert('8자리까지만 예약이 가능합니다.')
				}else {
					$(this).addClass('choice');
					count+=1;
				}
			})
			$('td.seat button.choice').click(function() {
				$(this).removeClass('choice');
			})
		})
		</script>
</body>
</html>