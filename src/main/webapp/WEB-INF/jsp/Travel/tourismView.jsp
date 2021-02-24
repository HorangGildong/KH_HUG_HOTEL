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
<link rel="stylesheet" href="css/Travel/tourismView.css">


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
			<div class="tourismView-section">
				<div class="tourismView-title">
					<span class="name">관광지</span>
					<p>
						내가 가본 제주는 어디까지일까? <br> 368개의 크고 작은 오름을 비롯하여 눈 돌리면 어디에서나 마주치는
						한라산 그리고 푸른 바다... <br> 수많은 제주의 보석 같은 여행지를 안내해드립니다.
					</p>
				</div>
				<div class="map">
					<img class="map" alt="" src="img/hah_img/map.jpg" usemap="#tourmap"
						name="point" width="1120" height="1037"
						onClick="javascript:getLoc()">
					<map name="tourmap">
						<area shape="circle" coords="189,572,8" target="_self"
							onmouseover="changePopupText2('협재해수욕장','제주시 한림읍 한림로 329-10 ',330,800);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="242,500,8" target="_self"
							onmouseover="changePopupText2('애월해안도로','제주시 애월읍 애월해안로',400,730);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="537,407,8" target="_self"
							onmouseover="changePopupText2('용두암','제주시 용두암길 15',630,630);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="661,367,8" target="_self"
							onmouseover="changePopupText2('제주레포츠랜드','제주시 조천읍 와흘상서2길 47',740,600);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="721,427,8" target="_self"
							onmouseover="changePopupText2('제주 4.3평화공원','제주시 명림로 430',930,680);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="765,329,8" target="_self"
							onmouseover="changePopupText2('김녕해수욕장','제주시 구좌읍 구좌해안로 237', 850,560);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="856,324,8" target="_self"
							onmouseover="changePopupText2('월정리해변','제주시 구좌읍 해맞이해안로 480-1',1000,550);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="340,671,8" target="_self"
							onmouseover="changePopupText2('카멜리아힐','서귀포시 안덕면 병악로 166',410,900);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="428,643,8" target="_self"
							onmouseover="changePopupText2('뽀로로&타요 테마파크 제주','서귀포시 안덕면 병악로 269',470,870);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="601,600,8" target="_self"
							onmouseover="changePopupText2('한라산국립공원','제주시 1100로 2070-61',750,825);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="752,506,8" target="_self"
							onmouseover="changePopupText2('사려니숲길','제주시 조천읍 교래리 산 137-1',860,730);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="889,476,8" target="_self"
							onmouseover="changePopupText2('비자림','제주시 구좌읍 비자숲길 55',1020,700);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="1064,375,8" target="_self"
							onmouseover="changePopupText2('우도','제주시 우도면 삼양고수물길 1',1200,600);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">	
						<area shape="circle" coords="1044,458,8" target="_self"
							onmouseover="changePopupText2('성산일출봉','서귀포시 성산읍 일출로 284-12',1200,680);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="1029,504,8" target="_self"
							onmouseover="changePopupText2('섭지코지','서귀포시 성산읍 고성리',1180,830);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="699,706,8" target="_self"
							onmouseover="changePopupText2('정방폭포','서귀포시 칠십리로214번길 37',810,930);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="666,745,8" target="_self"
							onmouseover="changePopupText2('천지연폭포','서귀포시 남성중로 2-15',720,970);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="441,775,8" target="_self"
							onmouseover="changePopupText2('주상절리대','서귀포시 이어도로 36-30',550,1000);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="259,818,8" target="_self"
							onmouseover="changePopupText2('송악산','서귀포시 대정읍 송악관광로 421-1',370,1040);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
						<area shape="circle" coords="243,883,8" target="_self"
							onmouseover="changePopupText2('마라도','서귀포시 대정읍 마라로101번길 46',230,1140);" 
							onmouseout="hidePopup();"
							alt="" href="/tourismDetailView">
					</map>
					<!-- 마우스오버 상자 -->
				    <div id="popup" style="background-color:#193f6e;position:absolute;opacity:0;border:1px solid black;border-radius:8%;padding:5px 12px;"
				    onmouseover="showPopup();" onmouseout="hidePopup();">
				      <!-- <a id="popup_addr" href="#" style="text-decoration:none;color:white;" target="_blank"> -->
				        <p id="popup_title" style="margin:0;padding:0;font-size:14px;line-height:20px;color:white;text-align:left;"></p> 	        
				        <p id="popup_addr" style="margin:0;padding:0;font-size:11px;line-height:20px;color:white;text-align:left;"></p>
				        <!-- <p id="popup_description" style="margin:0;padding:0;font-size:12px;line-height:12px;text-align:center;"></p> -->
				      <!-- </a> -->
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
	<script type="text/javascript"
		src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script>
	<script src="js/bootstrapjs/bootstrap.min.js"></script>
	<script src="js/header.js"></script>
	<script src="js/Travel/tourismView.js"></script>
	<script type="text/javascript">
function getLoc() {
	var x = event.offsetX;
	var y = event.offsetY;
	alert("현재좌표는 :" + x + "/" + y);
}
$('area').mouseover(function(){
    var showId = $(this).attr('id');
    $(showId).show();
});

$('area').mouseout(function(){
    var hideId = $(this).attr('id');
    $(hideId).hide();
});
/* $(function(){
  $('.tourmap').maphilight();
}); */
//마우스오버 상자 내용, 링크, 위치 변경
function changePopupText(title, addr, x, y) {
  document.getElementById('popup_title').innerHTML = title;
  document.getElementById('popup_addr').innerHTML = addr;
  /* document.getElementById('popup_description').innerHTML = description; */
  /* document.getElementById('popup_addr').href = addr; */
  
  document.getElementById('popup').style.left = x + "px";
  document.getElementById('popup').style.top = y + "px";
  document.getElementById('popup').style.opacity = 1;
}

// 마우스오버 상자 내용, 링크, 위치 변경2
function changePopupText2(title, addr, x, y) {
  document.getElementById('popup_title').innerHTML = title;
  document.getElementById('popup_addr').innerHTML = addr;
  /* var description = '';
  if (price_before === price_after) {
    description = '&#8361; ' + price_before;
  } else {
    description = '<strike>&#8361; ' + price_before + '</strike><br/>&#8361; ' + price_after;
  }
  document.getElementById('popup_description').innerHTML = description; */
  /* document.getElementById('popup_addr').href = addr; */
  
  document.getElementById('popup').style.left = x + "px";
  document.getElementById('popup').style.top = y + "px";
  document.getElementById('popup').style.opacity = 1;
}

// 마우스오버 상자 숨기기
function hidePopup() {
  document.getElementById('popup').style.opacity = 0;
}

// 마우스오버 상자 보이기
function showPopup() {
  document.getElementById('popup').style.opacity = 1;
}
$(function(){
	$('img[usemap]').rwdImageMaps();
});
</script>
</body>



</html>
