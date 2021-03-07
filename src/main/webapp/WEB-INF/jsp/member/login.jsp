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
               
				<h1 style="font-weight: 900; margin-bottom: 50px">로그인</h1>

				
				<button class="btn btn-primary btn-lg"
					style="background-color: #4285F4; border: #4285F4; padding: 0; height: 55px; margin-bottom: 20px; position: relative;"
					onclick = "location.href = '/oauth2/authorization/google' ">
					<div style="position: absolute; display: inline-block; width: 55px; height: 55; border-right: 1px solid white; font-weight: 900; font-size: 20px;
						border-radius: 4px 0px 0px 4px; background-color: white; top: 3px; left: 3px;">
						<img src="/img/googleLoginBtn.png" style="height: 37px; margin: 6px">
					</div>
					<div style="display: inline-block; width: 400px; font-weight: bold; font-size: 18px; padding-left: 40px;">
						구글계정으로 로그인
					</div>
				</button>
				
				<br>
				
				<button class="btn btn-primary btn-lg"
					style="background-color: deepskyblue; border: #4285F4; padding: 0; height: 55px; position: relative;"
					onclick = "location.href = '/emailLogin' ">
					<div style="position: absolute; display: inline-block; width: 55px; height: 55; border-right: 1px solid white; font-weight: 900;
						border-radius: 4px 0px 0px 4px; background-color: white; color: deepskyblue; top: 3px; left: 3px;">
						<div class="glyphicon glyphicon-envelope" aria-hidden="true" style="height: 39px; margin: 5px; padding-top: 6px; font-size: 28px;">
						</div>
					</div>
					<div style="display: inline-block; width: 400px; font-weight: bold; font-size: 18px; padding-left: 40px;">
						이메일로 로그인
					</div>
				</button>
				
				<!-- <div style="display: inline-block; margin: 20px 0px 50px 0px; border-bottom: 3px groove #4285F4; width: 100%; text-align: center;">
					<div style="display: inline-block; text-align: center; height: 30px; width: 40px; font-size: 22px; color: #4285F4;
						transform: translateY(calc(50% - 1px)); background-color: white; font-weight: bold;"><i>or</i></div>
				</div> -->
					

				
				<div style="text-align: center; width: 100%; display: inline-block; font-size: 16px; margin-top: 20px; font-weight: bold;">
					<!-- <div style="display: inline-block;">
						<label class="checkbox" style="margin: 0; padding: 20px, 5px, 0px, 0px;">
		          			<input type="checkbox" id="inlineCheckbox"> 아이디 저장
		        		</label>
		        	</div> -->
		        	<div class="col-xs-12" style="margin: 10px 0px 0px 0px;">
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

</body>

</html>
