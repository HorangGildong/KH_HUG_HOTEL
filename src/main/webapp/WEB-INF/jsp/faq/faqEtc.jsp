<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faqEtc Page</title>
</head>
<body>
<div>	
	<%-- ─────────────────────────────────── form태그 부분 ─────────────────────────────────── --%>              
	<form id='frm_faqmain' method='post' >
		<div></div>
	  	<div>
	    	<select class="form-control">
			<option>전체</option>
	      	<option>제목</option>
	      	<option>내용</option>               
	      	</select>
	
	      	<input type="text" id='text'class="form-control">            
	      	<input type="button" id='button' class="form-control" value='Search'>
			<input type='text' name='cate' id='cate' value='${param.cate }'>                          
	  	</div>    
	</form>
	
	<%-- ──────────────────── 전체  ──────────────────── --%>				   				   		
	<div class="panel-group" id="accordion1" >                                                
		<div class="panel panel-default">
		 	<c:forEach var='vo' items='${list }'>	               				                    			
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