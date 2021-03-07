<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="member"/>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_GENERAL')">
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
</sec:authorize>
<sec:authorize access="isAnonymous()">
</sec:authorize>

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/css/bootstrapcss/nomalize.css">

<!-- <link rel="stylesheet" href="/css/bootstrapcss/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<link rel="stylesheet" href="/css/styles.css">

<link rel="shortcut icon"
	href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">

<!--글씨체 링크 한글-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<!--글씨체 링크 영어-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="/css/member/inputbox.css">

<style>

	.underline {
		background-color: dodgerblue !important;
		display: inline-block !important;
		height: 2px !important;
		position: absolute !important;
		top: 100% !important;
		left: 4% !important;
		margin-top: -2px !important;
		-webkit-transform: scale(0, 1) !important;
		transform: scale(0, 1) !important;
		-webkit-transition: all 0.2s linear !important;
		transition: all 0.2s linear !important;
		width: 92% !important;
	}
	
</style>

<title>H.U.G HOTEL 제주</title>
</head>

<body>
	<div class="wrap">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->

		<jsp:include page="modal.jsp" />

        <!--section start-->
        <section>     
        
            <div class="text-center" style="float:none; margin:0 auto; width:400px; padding: 100px 0px 100px 0px;">
               
				<h1 style="font-weight: 900; margin-bottom: 50px">이메일로 로그인</h1>
									
				<form class="col-md-12 form-horizontal" action="/loginProc"	method="post" >
					
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							</span>
							<input type="email" class="form-control input-lg"
								name="memberEmail" id="inputEmail" placeholder="Email" value="${memberEmail}">
						</div>
					</div>
					
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
							<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
							</span>
							<input type="password" class="form-control input-lg"
								name="password" id="inputPassword" placeholder="Password">
						</div>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block" style="font-weight: bold;">
							로 그 인
						</button>
					</div>
					
				</form>
				
				<div style="text-align: center; width: 100%; display: inline-block; font-size: 16px; font-weight: bold;">
					<!-- <div style="display: inline-block;">
						<label class="checkbox" style="margin: 0; padding: 20px, 5px, 0px, 0px;">
		          			<input type="checkbox" id="inlineCheckbox"> 아이디 저장
		        		</label>
		        	</div> -->
		        	<div class="col-xs-12" style="margin: 20px 0px 0px 0px;">
						<a href="/searchIds">아이디 찾기</a> &nbsp; | &nbsp;
						<a href="searchPassword">비밀번호 찾기</a> &nbsp; | &nbsp;
						<a href="/join/varifyEmail">회원가입</a>
					</div>
        		</div>
				
			</div>
        </section>
        <!--section end-->

		<!--footer start-->
		<jsp:include page="../common/footer.jsp" />
		<!--footer end-->
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="/js/bootstrapjs/bootstrap.min.js"></script>
	<script src="/js/header.js"></script>
	<script src="/js/index.js"></script>

	<script>
	
	$.fn.multiline = function(text) {
	    this.text(text);
	    this.html(this.html().replace(/\n/g,'<br/>'));
	    return this;
	}
	
	$('.modal-title').text('로그인 실패');
	$('.modal-body').multiline('입력하신 아이디 또는 비밀번호가 바르지 않습니다. \n 다시 시도해주시기 바랍니다.');
	
	
	if(${loginFailure == true}) {
		$(function() {
			$('#modal').modal({
				backdrop: 'static',
				keyboard: false
			});
		})
	}
	
	</script>

</body>

</html>
