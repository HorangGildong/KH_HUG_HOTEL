<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faqGuide Page</title>
</head>
<body>
<div id='faqmain'>
	<!-- 이용안내 메뉴 -->
	<%-- ─────────────────────────────────── form태그 부분 ─────────────────────────────────── --%>              
	<form name='frm_faqmain' id='frm_faqmain' method='post' >
		<div>
        	<span id='span'>Total: <span id='total'>${page.totListSize }</span></span>
          	<input type='text' name='menu' value="${param.menu }">
          	<input type='text' name='nowPage' id='nowPage' value="${(param.nowPage == null)? 1 : param.nowPage}">
        	<input type='text' name='totalPage' value='${param.totalPage }'>			
			<input type='text' name='id' value="${param.id }">
      	</div>
      	<div>
			<select class="form-control" name='selectBox' id='selectBox' >
	           	<option ${(param.selectBox == "total")? "selected":"" } value='total'>전체</option>
	           	<option ${(param.selectBox == "question")? "selected":"" } value='question'>질문</option>
	           	<option ${(param.selectBox == "answer")? "selected":"" } value='answer'>답변</option>               
     		</select>
  
        	<input type="text" id='text'class="form-control" name='findStr' value="${param.findStr }">            
			<input type="button" id='btnFind2' class="form-control" value='Search'><br>
		</div>   
	</form>
	
	<%-- ──────────────────── 이용안내  ──────────────────── --%>				   				   		
	<div class="panel-group" id="accordion" >                                                
		<div class="panel panel-default">			
		 	<c:forEach var='vo' items='${list }'>	               		
		 			                    			
		   		<div class="panel-heading" id='cover'>
		       		<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne${vo.id }" class='arrowControl' id='faqQuestion'>			       							       
			            	<span><img src="img/kjh_img/Q.PNG"></span><span id='span1'>${vo.category }</span>
							<span id='span2'>${vo.question }</span>
					 	  	<input type='text' id='faqId' name='faqId' value="${vo.id }">
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
		           		<sec:authorize access="hasRole('ROLE_ADMIN')">
							<div id='btnupdel'>
			                	</div>
						</sec:authorize>
					</div>
				</div>								
			</c:forEach>					                       
		</div>	
	</div>

	<%-- ─────────────────────────────────── 페이징 부분 ─────────────────────────────────── --%>
	<ul class="pagination" id="user_pagination">
        <li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="guideGoPage2(${page.startPage-1})">«</a></li>

      	<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
        	<li class="${(param.nowPage == i)? 'active':'' }"><a id="btnCenter" onclick="guideGoPage2(${i})">${i }</a></li>
        </c:forEach>

       	<li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNext" onclick="guideGoPage2(${page.endPage+1})">»</a></li>             
    </ul>

</div>

<script>faq()</script>

</body>
</html>