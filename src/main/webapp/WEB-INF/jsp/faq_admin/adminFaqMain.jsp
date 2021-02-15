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

	<link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
	
    <!-- Bootstrap -->
    <link href="css/bootstrapcss/bootstrap.min.css" rel="stylesheet">    
    <link href="css/bootstrapcss/custom2.css" rel="stylesheet">
    <link href="css/bootstrapcss/kfonts2.css" rel="stylesheet">
   
    <script>
    	click1 = function(id){
    		alert(id);
    		var frm = document.frm_faqmain;    		
    		frm.cate.value = id;    		
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

	<%-- ─────────────────────────────────── form태그 부분 ─────────────────────────────────── --%>              
                 <form id='frm_faqmain' method='get' >
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

	<%-- ─────────────────────────────────── 메뉴 부분 ─────────────────────────────────── --%>
                 <ul id='menu'>
                     <li><a >전체</a></li>
                     <li><a href='#' onclick="cago('이용안내')">이용안내</a></li>
                     <li><a href="#b2">객실</a></li>
                     <li><a href="#b1">다이닝</a></li>
                     <li><a href="#accordion">부대시설</a></li>
                     <li><a href="#accordion">결제</a></li>
                     <li><a href="#accordion">기타</a></li>
                 </ul>

                 <hr class='style-five'>                    
                     
	<%-- ──────────────────── 이용안내  ──────────────────── --%>
			<c:if test="${param.category == '[이용안내]'}">		   				   		
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
			</c:if>
			
			<c:if test="${vo.category eq '[객실]' }">		   				   		
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
			</c:if>
			
			<c:if test="${vo.category eq '[다이닝]' }">		   				   		
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
			</c:if>
			
			<c:if test="${vo.category eq '[부대시설]' }">		   				   		
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
			</c:if>
			
			<c:if test="${vo.category eq '[결제]' }">		   				   		
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
			</c:if>
			
			<c:if test="${vo.category eq '[기타]' }">		   				   		
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
			</c:if>
			
			<c:if test="${category eq '' }">		   				   		
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
			</c:if>

 
              
                 
		                    	                  
	<%-- ─────────────────────────────────── 글쓰기 부분 ─────────────────────────────────── --%>
               	<div id='writer'>
                	<div></div>
					<div>
						<input type="button" class="form-control" value='글쓰기'>            
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
        </section>
        <!--section end-->
                
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->
         
                
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