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
			<div style="margin: 100px 0px 100px 0px">
				<div class="container" style="width: 400px; text-align: center;">
					<h1 style="font-weight: 900; margin-bottom: 50px">로그인</h1>
					<form class="col-md-12 form-horizontal" action="/login"
						method="post">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"> <span
									class="glyphicon glyphicon-user" aria-hidden="true"></span>
								</span> <input type="email" class="form-control input-lg"
									name="memberEmail" id="inputEmail" placeholder="E-mail">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"> <span
									class="glyphicon glyphicon-lock" aria-hidden="true"></span>
								</span> <input type="password" class="form-control input-lg"
									name="memberPassword" id="inputPassword" placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block"
								style="font-weight: bold;">로그인</button>
						</div>
					</form>
					<div class="text-center">
						<a href="/signUp">회원가입</a> | <a href="#">아이디 찾기</a> | <a href="#">비밀번호
							찾기</a>
					</div>
					<br>
					<button class="btn btn-primary btn-lg btn-block"
						style="background-color: #1EC800; border: #1EC800; padding: 0; height: 45px;">
						<div
							style="display: inline-block; width: 50px; border-right: 1px solid white; font-weight: 900; font-size: 20px;">N</div>
						<div
							style="display: inline-block; width: 300px; font-weight: bold; font-size: 18px;">
							네이버 아이디로 로그인</div>
					</button>
					${test}
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
