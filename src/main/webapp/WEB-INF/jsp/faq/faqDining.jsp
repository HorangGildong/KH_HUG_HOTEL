<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faqDining Page</title>
</head>
<body>
<div id='faqmain'>
	<!-- 다이닝 메뉴 -->
	<%-- ─────────────────────────────────── form태그 부분 ─────────────────────────────────── --%>              
	<form name='frm_faqmain' id='frm_faqmain' method='post' >
		<div>
        	<span id='span'>Total: <span id='total'>${page.totListSize }</span></span>
          	<input type='hidden' name='menu' value="${param.menu }">
          	<input type='hidden' name='nowPage' id='nowPage' value="${(param.nowPage == null)? 1 : param.nowPage}">
        	<input type='hidden' name='id' value="${param.id}">
        	<input type='hidden' name='totalPage' value='${param.totalPage }'>
      	</div>
      	<div>
			<select class="form-control" name='selectBox' id='selectBox' >
	           	<option ${(page.selectBox == "total")? "selected":"" } value='total'>전체</option>
	           	<option ${(page.selectBox == "question")? "selected":"" } value='question'>질문</option>
	           	<option ${(page.selectBox == "answer")? "selected":"" } value='answer'>답변</option>               
     		</select>
  
        	<input type="text" id='text'class="form-control" name='findStr' value="${param.findStr }">            
			<input type="button" id='btnFind4' class="form-control" value='Search'><br>
		</div>   
	</form>
	
	<%-- ──────────────────── 다이닝  ──────────────────── --%>				   				   		
	<div class="panel-group" id="accordion" >                                                
		<div class="panel panel-default">			
		 	<c:forEach var='vo' items='${list }'>	               				                    			
		   		<div class="panel-heading" id='cover'>
		       		<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne${vo.id }" id='faqQuestion'>			       							       
			            	<span><img src="img/kjh_img/Q.PNG"></span><span id='span1'>${vo.category }</span>
							<span id='span2'>${vo.question }</span>
							<span id='arrow'>
								<span id='span3'><img name='before' src="img/kjh_img/allowTop.PNG"></span>
								<span id='span4'><img name='after' src="img/kjh_img/allowBottom.PNG"></span>
							</span>
						</a>
					</h4>
				</div>			                     	 
				<div id='collapseOne${vo.id }' class="panel-collapse collapse ">
					<div class="panel-body" id='faqAnswer'>
		           		${vo.answer }
					</div>
				</div>								
			</c:forEach>					                       
		</div>	
	</div>
	
	<%-- ─────────────────────────────────── 페이징 부분 ─────────────────────────────────── --%>
		<ul class="pagination" id="user_pagination">
        <li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="guideGoPage4(${page.startPage-1})">«</a></li>

      	<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
        	<li class="${(param.nowPage == i)? 'active':'' }"><a id="btnCenter" onclick="guideGoPage4(${i})">${i }</a></li>
        </c:forEach>

       	<li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNext" onclick="guideGoPage4(${page.endPage+1})">»</a></li>             
    </ul>

</div>

<script>faq()</script>

</body>
</html>