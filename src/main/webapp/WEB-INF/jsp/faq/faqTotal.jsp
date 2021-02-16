<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
	
	<link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
	
    <!-- Bootstrap -->
    <link href="css/bootstrapcss/bootstrap.min.css" rel="stylesheet">    
    <link href="css/bootstrapcss/custom2.css" rel="stylesheet">
    <link href="css/bootstrapcss/kfonts2.css" rel="stylesheet">

<title>faqTotal Page</title>
</head>
<body>
<div class="container">
<div id='faqmain'>	
	<%-- ─────────────────────────────────── form태그 부분 ─────────────────────────────────── --%>              
	<form name='frm_faqmain' id='frm_faqmain' method='get' >
		<div></div>
	  	<div>
	    	<select class="form-control">
				<option>전체</option>
		      	<option>제목</option>
		      	<option>내용</option>               
	      	</select>
	
	      	<input type="text" id='text'class="form-control">            
	      	<input type="button" id='button' class="form-control" value='Search'>			                       
	  	</div>    
	</form>
	
	<%-- ──────────────────── 전체  ──────────────────── --%>				   				   		
	<div class="panel-group" id="accordion1" >                                                
		<div class="panel panel-default">
		 	<c:forEach var="vo" items="${list }">	               				                    			
		   		<div class="panel-heading" id='cover'>
		       		<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" id='faqQuestion'>
				        	<div onclick='faqClick()'>
				            	<span><img src="img/kjh_img/Q.PNG"></span><span id='span1'>${vo.category }</span>
								<span id='span2'>${vo.question }</span>
								<span id='span3'><img name='before' src="img/kjh_img/allowBottom.PNG"></span>
								<span id='span4'><img name='after' src="img/kjh_img/allowTop.PNG"></span>
							</div>                                
						</a>
					</h4>
				</div>			                     	 
				<div id='collapseTwo' class="panel-collapse collapse ">
					<div class="panel-body" id='faqAnswer'>
		           		${vo.answer }
						<div id='btnupdel'>
		                	<span id='span5'><input type="button" value="수정"></span>
		                    <span id='span6'><input type="button" value="삭제"></span>
						</div>
					</div>
				</div>							
			</c:forEach>					                       
		</div>
	</div>

	<%-- ─────────────────────────────────── 페이징 부분 ─────────────────────────────────── --%>
	<ul class="pagination">
		<li class="disabled"><a href="#">«</a></li>
		<li class="active"><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#">»</a></li>
	</ul>

</div>

</div>



<script>
var faqClick = function(){
    var beforeimg = $('#span3 img');
    var afterimg = $('#span4 img');

    if(beforeimg.attr("src") == "img/kjh_img/allowBottom.PNG" ) {
        // $(beforeimg).css('display','none');
        // $(afterimg).css('display');        
        $(beforeimg).attr('style','display:none');
        $(beforeimg).attr('src','aa.PNG');
        $(afterimg).attr('style','display: inline-block');
        
    } else {
        $(afterimg).attr('style','display:none');
        $(beforeimg).attr('style','display: inline-block');
        $(beforeimg).attr('src','img/kjh_img/allowBottom.PNG');
    }
}
</script>
</body>
</html>