<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">
	
	<!-- css, js 링크 연결 -->
    <link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/NoticeFaq/faqmain.css">
	<script src="js/NoticeFaq/faq.js"></script>
	<link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
	
    <!-- Bootstrap -->
    <link href="css/bootstrapcss/bootstrap.min.css" rel="stylesheet">    
    <link href="css/bootstrapcss/custom2.css" rel="stylesheet">
    <link href="css/bootstrapcss/kfonts2.css" rel="stylesheet">
   
	<script
	src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
  
  	<script>
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
  		
  	</script>
  
    <title>FAQ</title>

</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->

        <!--section start-->
        <section>
         <div id='faqmain'>
            <div class="container"> 
            
	<%-- ─────────────────────────────────── 공지사항 설명 부분 ─────────────────────────────────── --%>            
                <dl class="dl-horizontal non"> 
                    <dt>FAQ</dt><br><br>
                    <dd>회원님들께서 자주 문의하는 질문과 답변입니다.</dd>                  
                </dl>
                
	<%-- ─────────────────────────────────── 메뉴 부분 ─────────────────────────────────── --%>
                 <ul id='menu'>                 
                     <li><a href='#' id='btncago1'>전체</a></li>
                     <li><a href='#' id='btncago2'>이용안내</a></li>
                     <li><a href='#' id='btncago3'>객실</a></li>
                     <li><a href='#' id='btncago4'>다이닝</a></li>
                     <li><a href='#' id='btncago5'>부대시설</a></li>
                     <li><a href='#' id='btncago6'>결제</a></li>
                     <li><a href='#' id='btncago7'>기타</a></li>
                 </ul>
                 <hr class='style-five'>                    
                   
	<%-- ─────────────────────────────────── ajax 적용 부분 ─────────────────────────────────── --%>                     
                 <div id="here"></div>    
					
					
					
					
			</div>
		</div>
        </section>
        <!--section end-->
                
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->        
                
    </div>


<script>faq()</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>

</body>
</html>