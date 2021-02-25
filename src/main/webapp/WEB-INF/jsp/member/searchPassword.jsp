<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<title>H.U.G HOTEL 제주</title>
</head>

<body>
	<div class="wrap">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->

		<!--section start-->
		<section>
			<div style="margin: 100px 0px 0px 0px">
				<div class="container" style="width: 400px; text-align: center;">

					<h1 style="font-weight: 900; margin-bottom: 50px">비밀번호 찾기</h1>

					<form id="searchPassword" class="form-horizontal">

						<div class="form-group">
							<label for="inputId" class="col-xs-3 control-label">아이디</label>
							<div class="col-xs-9">
								<input type="text" class="form-control"
									name="memberId" id="inputId" placeholder="ID" required>
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail" class="col-xs-3 control-label">이메일</label>
							<div class="col-xs-9">
								<input type="email" class="form-control"
									name="memberEmail" id="inputEmail" placeholder="E-mail" required>
							</div>
						</div>
						
						<div class="form-group" style="margin-bottom: 25px">
							<label for="inputRandomNumber" class="col-xs-3 control-label">인증번호</label>
							<div class="col-xs-9">
								<input type="text" class="form-control" 
									name="randomNumber" id="inputRandomNumber" disabled>
						</div>
							</div>
					</form>
							
					<br>

					<button class="btn btn-primary btn-lg btn-block" onClick="$(this).searchIds()" 
						id="searchBtn" form="searchPassword" style="font-weight: bold;" disabled>
						인증번호 받기
					</button>

					<form id="loginId" action="/login" method="post">
						<input type="hidden" class="form-control" name="memberId" id="sInputId">
					</form>

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

	<!-- 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->

	<script>

		$('#createRandomNumber').click(function() {
			var id = $('#inputId').val();
			var email = $('#inputEmail').val();
			$.ajax({
				url : '${pageContext.request.contextPath}/searchPassword/searchId?id=' + id + '&email=' + email,
				type : 'get',
				success : function(data) {
					if(data) {

					} else {

					}
				}
			})
		});


		
	</script>

</body>

</html>
