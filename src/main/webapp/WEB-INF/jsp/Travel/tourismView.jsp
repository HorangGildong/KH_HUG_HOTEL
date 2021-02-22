<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">

    <!--글씨체 링크 한글-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--글씨체 링크 영어-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/Travel/tourismView.css">
	

    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <title> H.U.G HOTEL 제주</title>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        <!--section start-->
        <section>
            <div class="tourismView-section">
                <div class="tourismView-title">
                    <span class="name">관광지</span>
                    <p>
                    	내가 가본 제주는 어디까지일까? <br>
						368개의 크고 작은 오름을 비롯하여 눈 돌리면 어디에서나 마주치는 한라산 그리고 푸른 바다... <br>
						수많은 제주의 보석 같은 여행지를 안내해드립니다. 
					</p>
                </div>
                <div class="alert">
                	<div id="a1" class="alert1">이게 뜨나?</div>
                	<div id="a2" class="alert2">이게 뜨나?</div>
                </div>
                <div class="map">
                	<img alt="" src="img/hah_img/map.png" usemap="#tourmap" width="1130" height="840" onClick="javascript:getLoc()">
            		<map name="tourmap">
            			<area shape="circle" coords="412,345,10" id="a1" onClick="javascript:popup(1)" tabindex="1" alt="" href="/tourismDetailView">
            			<area shape="circle" coords="241,415,10" id="a2" onClick="javascript:popup(2)" tabindex="2"  alt="" href="/tourismDetailView">
            			
            			
            			
            		</map>
                </div>
            </div>    
        </section>
        <!--section end-->
        <!--footer start-->
        <jsp:include page="../common/footer.jsp"/>
        <!--footer end-->
    </div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>
<script src="js/Travel/tourismView.js"></script>
<script type="text/javascript">
function getLoc() {
	var x = event.offsetX;
	var y = event.offsetY;
	alert("현재좌효는 :" + x + "/" + y);
}
$('area').mouseover(function(){
    var showId = $(this).attr('id');
    $(showId).show();
});

$('area').mouseout(function(){
    var hideId = $(this).attr('id');
    $(hideId).hide();
});

</script>
</body>



</html>
