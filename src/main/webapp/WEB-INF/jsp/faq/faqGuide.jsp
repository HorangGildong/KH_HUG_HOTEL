<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<script src="js/NoticeFaq/faq.js"></script>
<script>

function getID(id){
	return document.getElementById(id);
}
var faq = function(){
	
	var questclick = getID('questclick');
	
	if(questclick != null){
		questclick.onclick = function(){
			alert('클릭했어?');
		}
	}
	
}
</script>
<title>faqGuide Page</title>
</head>
<body>
<div id='faqmain'>
            <div class="container"> 

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
	  	</div>    
	</form>
	
	<%-- ──────────────────── 이용안내  ──────────────────── --%>				   				   		
	<div class="panel-group" id="accordion" >                                                
		<div class="panel panel-default">
			<c:set var='count' value='1'/>
		 	<c:forEach var='vo' items='${list }'>	               				                    			
		   		<div class="panel-heading" id='cover'>
		       		<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne${count }" id='faqQuestion'>
			       			<span id='questclick'>				       
				            	<span><img src="img/kjh_img/Q.PNG"></span><span id='span1'>${vo.category }</span>
								<span id='span2'>${vo.question }</span>
								<span id='span3'><img name='before' src="img/kjh_img/allowBottom.PNG"></span>
								<span id='span4'><img name='after' src="img/kjh_img/allowTop.PNG"></span>                
							</span>
						</a>
					</h4>
				</div>			                     	 
				<div id='collapseOne${count }' class="panel-collapse collapse ">
					<div class="panel-body" id='faqAnswer'>
		           		${vo.answer }
						<div id='btnupdel'>
		                	<span id='span5'><input type="button" value="수정"></span>
		                    <span id='span6'><input type="button" value="삭제"></span>
						</div>
					</div>
				</div>		
				<c:set var='count' value='${count +1 }'/>					
			</c:forEach>					                       
		</div>
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


<script>faq()</script>

</body>
</html>