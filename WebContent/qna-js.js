$.ajaxSetup({
	type: "POST",
	async: false,
	dataType: "json",
	error: function(xhr){
		console.log("error html"+xhr.statusText);
	}
});

/*beepPro/QnA/choicelist.ajax?m_sub_seq=${ list.m_sub_seq }*/
//$(".pageBlock a").on("click", function(e){
	$(document).on("click",".pageBlock a",function(e){
		console.log("1  ajax 접근");
		e.preventDefault();
		var url = $(this).attr('href');
		console.log(url);
		selectListAjax(url);
	});

	$(document).on("click","#all-list",function(){
		console.log("ajax: 전체리스트 출력");
		var url="/beepPro/QnA/choicelist.ajax?page=1&m_sub_seq=0";
		selectListAjax(url);
	})
/*	function PagingList(){
		console.log("2  ajax 접근");
		//e.preventDefault();
		var url = $(this).attr('href');
		console.log("2"+url);
		selectListAjax(url);
	};*/

	
	$("#qna-category li a").on("click",function(e){
		e.preventDefault();	
		var id = $(this).attr('id');
		var num = id.substring(id.indexOf("e")+1, id.length);
		var url = '/beepPro/QnA/choicelist.ajax?m_sub_seq='+num;
		
		selectListAjax(url);
		
	});
	
	function selectListAjax(url){
		var data = null;
		$.ajax({
			url: url,
			data: data,
			success: function(data){
				console.log("success");
				/*console.log(data);*/
				console.log(data);
				console.log(data.view.pageTotalCount);
				selectList(data);
			},
			error: function(data){
				console.log("진료과 리스트 error");
			},
			complete:function(){
				console.log("진료과 리스트 완료 후");
			}
		})
	}
	function selectList(data){
		let html = "";
		
		if(data.view.qnaList.length > 0){
		$.each(data.view.qnaList, function(index, item){
				html += "<div class='qna-subblock' > ";
				html += "<img src='../beep_images/qna-images/question.svg' alt='' width='50'/>";
				html += "<div class='qna-question'>"+ item.q_title+"</div>";
				html += "<a href='/beepPro/QnA/qna_view.do?pq_seq="+item.pq_seq+"'><div id='qna-goanswer'>&gt; 답변하러가기</div></a>";
				html += "<div class='qna-blockdate'>"+item.dates +"</div></div>";

		})
		} else{
			html += "<div class='no-register'><span> 등록된 Q&A가 없습니다.</span></div>";
		}
		
			html += "<div class='pageBlock'>";
			var currentPage = data.view.currentPageNumber;
			var TotalPage = data.view.pageTotalCount;
		for (var i = 1; i < TotalPage+1; i++) {
			if( i == currentPage){
				html += "<span style='background: rgb(255,207,77)'>"+i+"</span>";
			}else{
				html += "<a href='/beepPro/QnA/choicelist.ajax?page="+i+"&m_sub_seq="+data.m_sub_seq+"' >"+i+"</a>";
			}
		}
		
		html += "</div>";
		
		let title = data.name+"&nbsp;&nbsp;&gt;&nbsp;";
		
		$(".qna-subtitle").empty();
		$(".qna-subtitle").html(title);
		
		$(".qna-rightblock").empty();
        $(".qna-rightblock").html(html);
	}
	


$('.qna-subblock').on("click", function(){
	var question = $(this).children('.qna-question');
	var height = $(this).height();

	if(height==150){
		question.css("white-space","normal");
		var question_h = question.height();
		$(this).animate({ height: question_h+77 }, 800);
	}else{

		$(this).animate({ height: "150" },1000);
		question.css("white-space","nowrap");
	}
});

var selectcate = 0;
$(".qna-selectcate").on("click", function () {
	var o_height = $('.qna-lefttop').height();

	if(selectcate==0){
		o_height += 450;
		$('.qna-lefttop').animate({height: o_height+30 }, 800);
		$('.qna-category').animate({height: "480" }, 800);
		selectcate=1;
	}else{
		$('.qna-lefttop').animate({height: o_height-450}, 900);
		$('.qna-category').animate({height: "0" }, 800);
		selectcate=0;
	}

});
var selectsort = 0;
$(".qna-selectsort").on("click", function () {
	var o_height = $('.qna-lefttop').height();

	if(selectsort==0){
		$('.qna-lefttop').animate({height: o_height+130 }, 800);
		$('.qna-sortgory').animate({height: "120" }, 800);
		selectsort = 1;
	}else{
		$('.qna-lefttop').animate({height: o_height-130 }, 900);
		$('.qna-sortgory').animate({height: "0" }, 800);
		selectsort = 0;
	}

});





