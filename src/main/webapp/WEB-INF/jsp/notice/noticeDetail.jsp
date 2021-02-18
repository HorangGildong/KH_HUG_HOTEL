<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="css/NoticeFaq/noticeDetail.css">
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
	
	<style>
		@font-face{
		  font-family:'NanumBarunGothic';
		  src:url("../fonts/NanumBarunGothic.eot");
		  src:local("☺"),url("../fonts/NanumBarunGothic.woff") format("woff");
		}
		
		section {font-family: "맑은 고딕","Malgun Gothic",  sans-serif; }				
	</style>
	
	<script>
	    function getID(id) {
		    return document.getElementById(id)
		 } 
		 
		var notice = function(){
    		
			var btnBack = getID('btnBack');  		
    		    		
			if (btnBack != null) {
				btnBack.onclick = function(){
					var frm = document.frm_notice;
					if (frm.menu.value == "title") {
						frm.action = "/noticeTitle";
						frm.submit();
						
					} else if (frm.menu.value == "contents") {
						frm.action = "/noticeContents";
						frm.submit();
						
					} else {
						frm.action = "/noticeMain";
						frm.submit();
						
					}
				};
			};    		
    	};
    
		notice.preArticle = function(num){
			if (num > 0) {
				var frm = document.frm_notice;
				frm.nNo.value = num;
				frm.action = "/noticeDetail";
				frm.submit();				
			}
		}
		
		notice.nextArticle = function(num){
			var totpage = "<c:out value='${param.totalPage }'/>"; 
			
			var frm = document.frm_notice;
			frm.nNo.value = num;
			frm.action = "/noticeDetail";
			frm.submit();
			
			<%--
			if (num <= totpage) {
				var frm = document.frm_notice;
				frm.nNo.value = num;
				frm.action = "/noticeDetail";
				frm.submit();
			}
			--%>		
		}
		
    </script>
	
    <title>공지사항 상세페이지</title>
    
</head>
<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        
        <!--section start-->
        <section>
	<%-- ─────────────────────────────────── 공지사항 설명 부분 ─────────────────────────────────── --%> 
            <div id='notice_detail'>     
                <div class="container">            
                    <dl class="dl-horizontal non"> 
                        <dt>공지사항</dt><br><br>
                        <dd>HUG호텔의 다양한 소식을 전해드립니다.</dd>                  
                    </dl>    
                    
	<%-- ─────────────────────────────────── 공지사항  부분 ─────────────────────────────────── --%> 
                <table class="table" id='detail_Top'>        
                    <thead>
                        <tr id='detail_1'>
                          <th width='100px'>${vo.nNo }</th>
                          <th width='500px'>${vo.title }</th>
                          <th width='80px'><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.regdate }"/></th>                          
                        </tr>
                    </thead>
                        
                    <tr id='detail_2'>
                        <td  id='tdtd' width='1200px' height='500px' colspan="3">                            
                            ${vo.contents }
                        </td>
                    </tr>     
                </table>             
                       
	<%-- ─────────────────────────────────── 댓글 작성  부분 ─────────────────────────────────── --%> 
                <div id='div_1'>        
                    <div id='div_2'>
                        <div id='div_3'>
                            <table id='detail_Middle1'>
                                <tr>                                    
                                    <td width='10px'><input type="text" id='input1' value='작성자' readonly class="form-control"></td>
                                    <td><input type="text" id='input2' value='방구석코딩러' readonly class="form-control"></td>
                                    <td><input id='input3' type="text" value="암호" readonly class="form-control"/></td>
                                    <td><input id='input4' type="password" class="form-control"/></td>
                                    <td width="430px"></td>
                                    <td><input id='input5' type="text" value="작성일" readonly class="form-control"/></td>
                                    <td><input id='input6' type="text" value="2020.01.25 오전 11:20:04" readonly class="form-control"/></td>
                                </tr> 
                            </table>

                            <table id='detail_Middle2'>
                                <tr>
                                    <td><textarea id='textarea' cols="134" rows="5" placeholder="정책 위반 댓글은 삭제될 수 있습니다."></textarea></td>                                                
                                    <td width='100px' style="background-color: white;"><div id='div1'><input id='input7' type="button" value='등록'></div></td>
                                </tr>
                                <tr>                        
                                    <td colspan="2"><div><br><hr class='style-six'></div></td>
                                </tr>        
                                            
	<%-- ──────────────────── 댓글 등록시 반복 ──────────────────── --%> 
                                <tr>
                                    <td colspan='2'><input id='input8' type="text" readonly value="방구석코딩러"></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><div style="margin-left: 70px; margin-right: 70px;">내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입내용삽입</div></td>                         
                                </tr>
                                <tr>
                                    <td><input id='input9' type="text" readonly value="2020.01.25 오전 11:20:04"></td>
                                    <td>
                                        <span id='btnupdel'>
                                            <span id='span1'><input type="button" value="수정"></span>
                                            <span id='span2'><input type="button" value="삭제"></span>
                                        </span>
                                    </td>
                                </tr>                                
                                <tr>                        
                                    <td colspan="2"><div><hr class='style-six'></div></td>
                                </tr>                                   


                            </table> 
                            
                        </div>
                    </div>     
	<%-- ─────────────────────────────────── 페이징  부분 ─────────────────────────────────── --%> 
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
                
	<%-- ─────────────────────────────────── 목록  부분 ─────────────────────────────────── --%> 
                <form name='frm_notice' method='post'>
	                <span id='back'>
	                    <input type="button" id='btnBack' value='목록' class="form-control">
	                    <input type='text' name='menu' value="${param.menu }">
						<input type='hidden' name='nowPage' value="${param.nowPage }">
						<input type='hidden' name='nNo' value="${param.nNo}">
	                    <input type="hidden" name='findStr' value="${param.findStr }"> 
	                    <input type='hidden' name='totalPage' value='${param.totalPage }'>	                                     
	                </span>
                </form>
                
	<%-- ─────────────────────────────────── 이전글 다음글  부분 ─────────────────────────────────── --%> 
                <table class='table table-bordered' id='detail_Footer'>
					<tr class='footer_tr' height='40' onclick="notice.preArticle(${vo1.preNo})">
                        <th class='cursor' width='100px'>이전글</th>                        
                        <td class='footer_td' width='1000px'><input class='sContent' type="button" value='${vo1.preNo }&emsp;&emsp;${vo1.preTitle }'></td>
                        <td class='cursor' width='150px'><fmt:formatDate pattern="yyyy-MM-dd" value="${vo1.preDate }"/></td>
                    </tr>
                    <tr class='footer_tr' height='40' onclick="notice.nextArticle(${vo1.nextNo})">
                        <th class='cursor'>다음글</th>                        
                        <td class='footer_td'><input class='sContent' type="button" value='${vo1.nextNo }&emsp;&emsp;${vo1.nextTitle }'></td>
                        <td class='cursor'><fmt:formatDate pattern="yyyy-MM-dd" value="${vo1.nextDate }"/></td>
                    </tr>                  
                </table>
                </div>
            </div>
        </section>
        <!--section end-->

        
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->

    </div>
   
<script>notice()</script>
   
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>

</body>
</html>