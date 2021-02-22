/**
 * faq JavaScript
 * 작성자: 곽재훈
 */

/*────────────────────────────────── 여러가지 기능 작동 함수  ──────────────────────────────────*/   	
/*--------------------- id함수 선언 ---------------------*/
function getID(id){	
	return document.getElementById(id);	
}

var faq = function(){

	var btncago1 	= getID('btncago1');
	var btncago2 	= getID('btncago2');
	var btncago3	= getID('btncago3');
	var btncago4 	= getID('btncago4');
	var btncago5	= getID('btncago5');
	var btncago6 	= getID('btncago6');
	var btncago7 	= getID('btncago7');  			
	var menuLinks 	= document.querySelectorAll('.aclick');
	var selectBox 	= getID('selectBox');
	var btnFind1	= getID('btnFind1');
	var btnFind2 	= getID('btnFind2');
	var btnFind3 	= getID('btnFind3');
	var btnFind4 	= getID('btnFind4');
	var btnFind5 	= getID('btnFind5');
	var btnFind6 	= getID('btnFind6');
	var btnFind7 	= getID('btnFind7');
	var faq_insert  = getID('faq_insert');
	var fBtnBack	= getID('fBtnBack');
	var fBtnInsert	= getID('fBtnInsert');
	var fBtnUpdate	= getID('fBtnUpdate');
	var fBtnDelete	= getID('fBtnDelete');
	var faqId		= getID('faqId');
		
	/*---------------- 메뉴 클릭 시 ----------------*/
	if(btncago1 != null){
		btncago1.onclick = function(){
			fnReset();
			totalAjax('faqTotal');
		}		
	}
	if(btncago2 != null){
		btncago2.onclick = function(){
			fnReset();
			totalAjax('faqGuide');
		}
	}
	if(btncago3 != null){
		btncago3.onclick = function(){
			fnReset();
			totalAjax('faqRoom');
		}
	}
	if(btncago4 != null){
		btncago4.onclick = function(){
			fnReset();
			totalAjax('faqDining');
		}
	}
	if(btncago5 != null){
		btncago5.onclick = function(){
			fnReset();
	   		totalAjax('faqFacility');
		}
	}
	if(btncago6 != null){
		btncago6.onclick = function(){
			fnReset();
	   		totalAjax('faqPayment');
		}
	}
	if(btncago7 != null){
		btncago7.onclick = function(){
			fnReset();
			totalAjax('faqEtc');
		}
	}
	
	/*---------------- 전체 메뉴 검색 시 ----------------*/
	if (btnFind1 != null) {
		btnFind1.onclick = function(){
			var frm = document.frm_faqmain;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				totalAjax('faqTotal');
				
			}else if (selectBox.value == "question") {
				var selected = 'question';
				frm.menu.value = selected;
				totalAjax('faqTotalQt');				
			}	
			else if (selectBox.value == "answer") {
				var selected = 'answer';
				frm.menu.value = selected;
				totalAjax('faqTotalAw');
				
			};
		};
	};
	/*---------------- 이용안내 메뉴 검색 시 ----------------*/
	if (btnFind2 != null) {
		btnFind2.onclick = function(){
			var frm = document.frm_faqmain;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				totalAjax('faqGuide');
				
			}else if (selectBox.value == "question") {
				var selected = 'question';
				frm.menu.value = selected;
				totalAjax('faqGuideQt');				
			}
			else if (selectBox.value == "answer") {
				var selected = 'answer';
				frm.menu.value = selected;
				totalAjax('faqGuideAw');
				
			};
		};
	};
	/*---------------- 객실 메뉴 검색 시 ----------------*/
	if (btnFind3 != null) {
		btnFind3.onclick = function(){
			var frm = document.frm_faqmain;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				totalAjax('faqRoom');
				
			}else if (selectBox.value == "question") {
				var selected = 'question';
				frm.menu.value = selected;
				totalAjax('faqRoomQt');				
			}
			else if (selectBox.value == "answer") {
				var selected = 'answer';
				frm.menu.value = selected;
				totalAjax('faqRoomAw');
				
			};
		};
	};
	/*---------------- 다이닝 메뉴 검색 시 ----------------*/
	if (btnFind4 != null) {
		btnFind4.onclick = function(){
			var frm = document.frm_faqmain;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				totalAjax('faqDining');
				
			}else if (selectBox.value == "question") {
				var selected = 'question';
				frm.menu.value = selected;
				totalAjax('faqDiningQt');				
			}
			else if (selectBox.value == "answer") {
				var selected = 'answer';
				frm.menu.value = selected;
				totalAjax('faqDiningAw');
				
			};
		};
	};
	/*---------------- 부대시설 메뉴 검색 시 ----------------*/
	if (btnFind5 != null) {
		btnFind5.onclick = function(){
			var frm = document.frm_faqmain;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				totalAjax('faqFacility');
				
			}else if (selectBox.value == "question") {
				var selected = 'question';
				frm.menu.value = selected;
				totalAjax('faqFacilityQt');				
			}
			else if (selectBox.value == "answer") {
				var selected = 'answer';
				frm.menu.value = selected;
				totalAjax('faqFacilityAw');
				
			};
		};
	};
	/*---------------- 결제 메뉴 검색 시 ----------------*/
	if (btnFind6 != null) {
		btnFind6.onclick = function(){
			var frm = document.frm_faqmain;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				totalAjax('faqPayment');
				
			}else if (selectBox.value == "question") {
				var selected = 'question';
				frm.menu.value = selected;
				totalAjax('faqPaymentQt');				
			}
			else if (selectBox.value == "answer") {
				var selected = 'answer';
				frm.menu.value = selected;
				totalAjax('faqPaymentAw');
				
			};
		};
	};
	/*---------------- 기타 메뉴 검색 시 ----------------*/
	if (btnFind7 != null) {
		btnFind7.onclick = function(){
			var frm = document.frm_faqmain;
			
			if (selectBox.value == "total") {	
				var selected = 'total';
				frm.menu.value = selected;						
				totalAjax('faqEtc');
				
			}else if (selectBox.value == "question") {
				var selected = 'question';
				frm.menu.value = selected;
				totalAjax('faqEtcQt');				
			}
			else if (selectBox.value == "answer") {
				var selected = 'answer';
				frm.menu.value = selected;
				totalAjax('faqEtcAw');
				
			};
		};
	};
	/*---------------- 목록으로 ----------------*/
	if(fBtnBack != null){
		fBtnBack.onclick = function(){
			var frm = document.frm_faqmain;
			frm.action = "/adminTotalFaq";
			frm.submit();
		}
	}	
	/*---------------- 관리자 글쓰기 클릭 시----------------*/
	if (faq_insert != null){
		faq_insert.onclick = function(){
			var frm = document.frm_faqmain;
			frm.action = "/adminFaqInsert";
			frm.submit();			
		}
	}	
	/*---------------- 관리자 등록 페이지(등록 버튼) ----------------*/	
	if(fBtnInsert != null){
		fBtnInsert.onclick = function(){
			var frm = document.frm_faqmain;
			frm.action = "/adminFaqInsertR";
			frm.submit();
		}
	}		
	/*---------------- 관리자 수정 페이지(수정 버튼) ----------------*/
	if(fBtnUpdate != null){
		fBtnUpdate.onclick = function(){
			var frm = document.frm_faqmain;
			frm.action = "/adminFaqUpdateR";
			frm.submit();
		}
	}	
	/*---------------- 관리자 삭제 클릭 시 ----------------*/
	if (fBtnDelete != null){
		fBtnDelete.onclick = function(){
			var frm = document.frm_faqmain;
			frm.action = "/adminFaqDelete";
			frm.submit();			
		}
	}	
		
	/*---------------- 메뉴 클릭 시 색상변경 ----------------*/	
	function clickMenuHandler() {
		document.getElementById('base').style.display="none";
		   
		for (var i = 0; i < menuLinks.length; i++){
			menuLinks[i].classList.remove('menu-active');
		}
	this.classList.add('menu-active');
	
	}
	
	for (var i = 0; i < menuLinks.length; i++){
		menuLinks[i].addEventListener('click', clickMenuHandler);
	}
	
	
} 

/*────────────────────────────────── ajax ──────────────────────────────────*/ 

function fnReset(){
	$('#selectBox').val('total');
	$('#text').val('');
	$('#nowPage').val('1');
}

/*--------------------- ajax 함수 ---------------------*/  	
var totalAjax = function(url){	
			
	$param = $('#frm_faqmain').serialize();	
	$.ajax({
		url 	 : url,
		data 	 : $param,
		dataType : 'html',  /*응답 데이터*/
		method 	 : 'POST',
		success  : function(data){
			$('#here').html(data);			
		}		
	})
};
  	
/*────────────────────────────────── 페이징 처리  ──────────────────────────────────*/  	
guideGoPage = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	frm.action = "/adminTotalFaq";
	frm.submit();
}

guideGoPage1 = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	totalAjax('faqTotal');
}
guideGoPage2 = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	totalAjax('faqGuide');
}  
guideGoPage3 = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	totalAjax('faqRoom');
}
guideGoPage4 = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	totalAjax('faqDining');
}
guideGoPage5 = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	totalAjax('faqFacility');
}
guideGoPage6 = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	totalAjax('faqPayment');
}
guideGoPage7 = function(page){			
	var frm = document.frm_faqmain;
	frm.nowPage.value = page;
	totalAjax('faqEtc');
}

/*────────────────────────────────── 관리자 게시글 상세보기  ──────────────────────────────────*/  	
function view(id){
	var frm = document.frm_faqmain;
	frm.id.value = id;
	frm.action = "/adminFaqUpdate";
	frm.submit();
}

