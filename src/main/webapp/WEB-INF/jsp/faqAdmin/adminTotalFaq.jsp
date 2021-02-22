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
	<link rel="stylesheet" href="css/NoticeFaq/adminNoticeFaq.css">
	<script src="js/NoticeFaq/faq.js"></script>
	<link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
	
    <!-- Bootstrap -->
    <link href="css/bootstrapcss/bootstrap.min.css" rel="stylesheet">    
    <link href="css/bootstrapcss/custom2.css" rel="stylesheet">
    
	<!--글씨체 링크 한글-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--글씨체 링크 영어-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
			
    <!-- jQuery -->  	
  	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
<div class="wrap">
	<!--header-->
	<jsp:include page="../common/header.jsp"/>
	<!--header end-->
	
	<!--section start-->
	<section>
		<div id='admin_faq_select'>
			
		   	<h3>FAQ</h3>
		  	
		  	<form name='frm_faqmain' id='frm_faqmain' method='post' >
		    	<input type='text' name='menu' value="${param.menu }">
	          	<input type='hidden' name='nowPage' id='nowPage' value="${(param.nowPage == null)? 1 : param.nowPage}">
	        	<input type='text' name='totalPage' value='${param.totalPage }'>			
				<input type='text' name='id' value="${param.id }">		     	
		   	</form>
		   			   
				<div class='title'>
					<span class='no'>No</span>
					<span class='category'>category</span>
					<span class='question1'>question</span>
				</div>
				<div class='items'>   
					<c:forEach var='vo' items="${list }"> <!-- servlet 에서 request에 담은 list를 뜻한다. -->
						<div class='item' onclick="view('${vo.id }')">
							<span class='no'>${vo.id }</span>
							<span class='category'>${vo.category }</span>
							<span class='question'>${vo.question }</span>
						</div>      
					</c:forEach>
				</div>
			
				<div id='btn_back'>
					<div></div>
					<div><input type='button' id='faq_insert' value='등록'/></div>				
				</div>
			
		<%-- ─────────────────────────────────── 페이징 부분 ─────────────────────────────────── --%>
			<ul class="pagination" id="user_pagination">
				<li><a class="${(page.startPage > 1)? '' : 'btnHide' }" id="btnPrev" onclick="guideGoPage(${page.startPage-1})">«</a></li>
				
				<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
					<li class="${(param.nowPage == i)? 'active':'' }"><a id="btnCenter" onclick="guideGoPage(${i})">${i }</a></li>
				</c:forEach>
				
				<li><a class="${(page.endPage < page.totPage)? '' : 'btnHide' }" id="btnNext" onclick="guideGoPage(${page.endPage+1})">»</a></li>             
		    </ul>			       
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>

</body>
</html>