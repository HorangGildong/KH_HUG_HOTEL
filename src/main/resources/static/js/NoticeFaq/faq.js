/**
 * 
 */
 
$(function(){  
	url='faqTotal';
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
})
  	
function getID(id){
	return document.getElementById(id);
}

var faq = function(){
	var btncago1 = getID('btncago1');
	var btncago2 = getID('btncago2');
	var btncago3 = getID('btncago3');
	var btncago4 = getID('btncago4');
	var btncago5 = getID('btncago5');
	var btncago6 = getID('btncago6');
	var btncago7 = getID('btncago7');  			
	var faqQuestion = getID('faqQuestion');
	
	if(faqQuestion != null){
		faqQuestion.onclick = function(){
			alert('클릭했어?');
		}
	}
	
	if(btncago1 != null){
		btncago1.onclick = function(){
			url='faqTotal';
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
			
		}
	}  			

	if(btncago2 != null){
		btncago2.onclick = function(){  			
			url='faqGuide';
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
		}
	}
	
	if(btncago3 != null){
		btncago3.onclick = function(){
			url='faqRoom';
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
		}
	}
	
	if(btncago4 != null){
		btncago4.onclick = function(){
			url='faqDining';
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
		}
	}
	
	if(btncago5 != null){
		btncago5.onclick = function(){
			url='faqFacility';
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
		}
	}
	
	if(btncago6 != null){
		btncago6.onclick = function(){
			url='faqPayment';
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
		}
	}
	
	if(btncago7 != null){
		btncago7.onclick = function(){
			url='faqEtc';
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
		}
	}
	
	
} 