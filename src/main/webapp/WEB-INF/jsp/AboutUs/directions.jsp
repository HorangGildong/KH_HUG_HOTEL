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
<link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
<link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">


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

<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/AboutUs/directions.css">

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<link rel="shortcut icon"
	href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
<title>H.U.G HOTEL 제주</title>
</head>

<body>
	<div class="wrap">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->
		<!--section start-->
		<section>
			<div class="directions-section">
				<div class="directions-title">
					<span class="name">DIRECTIONS</span>
					<p>H.U.G 호텔에 오시는 방법 및 호텔 내부까지 안내해 드립니다.</p>
				</div>
				<div id="map" style="width: 90%; height: 500px;"></div>
				<div class="map-info">
					<h4>제주특별자치도 서귀포시 중문관광로 21길 21 H.U.G 호텔</h4>
					<h5>TEL. 064-123-4567</h5>
				</div>
				<div class="container">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> 자동차로 오시는 길 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Nunc suscipit velit sit amet
									tristique tincidunt. Fusce dapibus tortor ut est ornare
									porttitor. Aliquam auctor bibendum posuere. Fusce laoreet
									tincidunt lacinia. Aliquam posuere pharetra auctor.
									Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque
									sit amet dignissim mauris. Suspendisse a erat congue nunc
									auctor malesuada. Mauris ultricies magna quis neque egestas, eu
									vehicula sapien luctus. Aenean id condimentum mauris. Integer
									urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi
									vitae est at erat tristique facilisis. Mauris pulvinar vel arcu
									vel ultrices. Mauris a nisi sit amet urna elementum semper.
									Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut
									ultrices odio porttitor sed. Donec consequat facilisis velit.
									Cras feugiat tincidunt fermentum. Duis interdum nec quam id
									eleifend.</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo"> 공항 리무진 버스 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse ">
								<div class="panel-body">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Nunc suscipit velit sit amet
									tristique tincidunt. Fusce dapibus tortor ut est ornare
									porttitor. Aliquam auctor bibendum posuere. Fusce laoreet
									tincidunt lacinia. Aliquam posuere pharetra auctor.
									Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque
									sit amet dignissim mauris. Suspendisse a erat congue nunc
									auctor malesuada. Mauris ultricies magna quis neque egestas, eu
									vehicula sapien luctus. Aenean id condimentum mauris. Integer
									urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi
									vitae est at erat tristique facilisis. Mauris pulvinar vel arcu
									vel ultrices. Mauris a nisi sit amet urna elementum semper.
									Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut
									ultrices odio porttitor sed. Donec consequat facilisis velit.
									Cras feugiat tincidunt fermentum. Duis interdum nec quam id
									eleifend.</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseThree"> 셔틀 버스 </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Nunc suscipit velit sit amet
									tristique tincidunt. Fusce dapibus tortor ut est ornare
									porttitor. Aliquam auctor bibendum posuere. Fusce laoreet
									tincidunt lacinia. Aliquam posuere pharetra auctor.
									Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque
									sit amet dignissim mauris. Suspendisse a erat congue nunc
									auctor malesuada. Mauris ultricies magna quis neque egestas, eu
									vehicula sapien luctus. Aenean id condimentum mauris. Integer
									urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi
									vitae est at erat tristique facilisis. Mauris pulvinar vel arcu
									vel ultrices. Mauris a nisi sit amet urna elementum semper.
									Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut
									ultrices odio porttitor sed. Donec consequat facilisis velit.
									Cras feugiat tincidunt fermentum. Duis interdum nec quam id
									eleifend.</div>
							</div>
						</div>
					</div>
				</div>
				<div class="floor-info">
					<h1>층별안내</h1>
					<div class="tower">
						<div id="f7" class="floor">9 &nbsp;Floor</div>
						<div id="f7" class="floor">7 ~ 8 Floor</div>
						<div id="f6" class="floor">6 &nbsp;Floor</div>
						<div id="f5" class="floor">4 ~ 5 Floor</div>
						<div id="f4" class="floor">2 ~ 3 Floor</div>
						<div id="f3" class="floor">1 &nbsp;Floor</div>
						<div id="f2" class="floor">B1 &nbsp;Floor</div>
						<div id="f1" class="floor">B2 &nbsp;Floor</div>
					</div>
					<div class="elevator">Elevator</div>
					<img id="runner" class="people" alt="people"
						src="img/hah_img/호텔리어.png">


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
	<script src="js/bootstrap.min.js"></script>
	<script src="js/header.js"></script>

	<!-- 카카오맵 api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c9936c0ec903e4bde055c51cf5309f5e"></script>

	<script src="js/AboutUs/directions.js"></script>
</body>



</html>
