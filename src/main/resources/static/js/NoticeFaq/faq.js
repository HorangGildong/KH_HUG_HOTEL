/**
 * 
 */
 

faq.cago3 = function(){
	alert("ddddd");
}


$('#cago2').on('click',function(){
   			   		
			if(url == null){   		
	   			url = 'faqTotal';
			}
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
   		});	
   		