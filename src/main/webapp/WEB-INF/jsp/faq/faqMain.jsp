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
   		faq.cago1 = function(url){	
	   		if (url == null){
	   			url = '/faqTotal';
	   		}
	   			
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
                     <li><a href='#' onclick="faq.cago1()">전체</a></li>
                     <li><a href='#' onclick="faq.cago2()">이용안내</a></li>
                     <li><a href='#' onclick="faq.cago3()">객실</a></li>
                     <li><a href='#' onclick="faq.cago4()">다이닝</a></li>
                     <li><a href='#' onclick="faq.cago5()">부대시설</a></li>
                     <li><a href='#' onclick="faq.cago6()">결제</a></li>
                     <li><a href='#' onclick="faq.cago7()">기타</a></li>
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