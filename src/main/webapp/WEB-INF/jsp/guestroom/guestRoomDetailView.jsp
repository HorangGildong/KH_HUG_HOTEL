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

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/guestroom/guestRoomDetailView.css">
    <!-- <script src="https://kit.font.awesome.com/096073a2a8.js" crossorigin="anonymous"></script> -->



    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <title> H.U.G HOTEL 제주</title>
</head>

<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        <!--section start-->
        <section class="hotelHugDetailWrap">
            <h2 class="contDetailTitle">
                <p class="titleBig">
                    ROYAL
                </p>
                <p class="titleSmall">
                    고급스러운 색체와 감각적인 분위기를 지닌 풀빌라의 정석, 로얄 풀빌라
                </p>
                별관에 위치하여 독립적인 공간에서의 프라이빗한 휴식을 즐길 수 있으며, 풀빌라 내 고급 편의 시설과
                <br>
                풀빌라 전용으로 제공되는 서비스는 단순한 휴식을 넘어 완력박 휴양을 제공할 것입니다.
            </h2>
            <div class="imageArea">
                <ul class="slides">
                    <li><img src="img/cjy_img/room1.jpg" alt=""></li>
                    <li><img src="img/cjy_img/room2.jpg" alt=""></li>
                    <li><img src="img/cjy_img/room3.jpg" alt=""></li>
                    <li><img src="img/cjy_img/room4.jpg" alt=""></li>
                </ul>
            </div>
            <p class="controls">
                <a class="prev">&#10094;</a>
                <span class="dot on"></span> 
                <span class="dot"></span> 
                <span class="dot"></span>
                <span class="dot"></span>
                <a class="next">&#10095;</a>
            </p>
            <div class="buttonArea">
                <a href=""><span>문의하기</span></a>
                <a href="예약뷰1.html"><span>예약하기</span></a>
            </div>
            <div class="detailInfo">
                <h3>상세정보</h3>
                <div class="infoDetail">
                    <div class="listType1">
                    <h3>객실 서비스</h3>
                        <ul  class="floatLeft">
                            <li>
                                * 무료 WIFI
                            </li>
                            <li>
                                * 55인지 FULL HD TV(침실)                            </li>
                            <li>
                                * 개인용 금고
                            </li>
                            <li>
                                * 커피캡슐 6개
                            </li>                            <li>
                               * 미네랄 워터 2병
                            </li> 
                            <li>
                                * 투숙 1박당 미니바 1회 무료 제공
                            </li>
                        </ul>
                        <ul class="floatRight">
                            <li>
                                * 55인지 FULL HD TV(거실)                            </li>
                            <li>
                                * 위성 TV 58개 채널
                            </li>
                            <li>
                                * 네스프레소 커피머신
                            </li>
                            <li>
                                * 녹차, 홍차(티백)
                            </li>
                            <li>
                                * 커피포트
                            </li>
                        </ul>
                    </div>
                    <div class="listType2">   
                        <h3>어메니티</h3>     
                        <ul>
                            <li>
                                * 배쓰 어메니티 5종
                            </li>
                            <li>
                                * 배쓰 타올
                            </li>
                            <li>
                                * 목욕용 가운
                            </li>
                            <li>
                                * 샤워캡
                            </li>
                            <li>
                                * 머리빗
                            </li>
                            <li>
                                * 면봉
                            </li>
                            <li>
                                * 에머리보드
                            </li>
                            <li>
                                * 헤어드라이어
                            </li>
                        </ul>
                    </div>
                    <div class="listType3">
                    <dl>    
                        <dt class="dHead">체크인 아웃</dt>
                        <dd>
                            <dl>
                                <dt class="dBody">Check in</dt>
                                <dd class="dFoot">03:00 PM</dd>
                                <dt class="dBody">Check out</dt>
                                <dd class="dFoot">11:00 AM</dd>
                            </dl>
                        </dd>
                    </dl>
                    </div>
                </div>
            </div>
    
    
            <div class="guideBox">
                <h2 class="guideList1">
                    안내사항
                </h2>
                <ul class="guideList2">
                    <li>
                        * 성수기 시즌 체크 인/아웃 시간은 조정될 수 있습니다.
                    </li>
                    <li>
                        * 호텔 내 유아용 킥보드 및 전동 퀵보드 사용은 엄격하게 제한됩니다.
                    </li>
                </ul>
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
<script>
    let slides = document.querySelector('.slides');
        slide = document.querySelectorAll('.slides li'),
        dot = document.querySelectorAll('.dot'),
        currentIdx = 0,
        slideCount = slide.length,
        slideWidth = 1120,
        slideMargin = 30,
        prevBtn = document.querySelector('.prev'),
        nextBtn = document.querySelector('.next');
        console.log(dot[1]);


        slides.style.width = (slideWidth + slideMargin)*slideCount - slideMargin + 'px';

        function moveSlide(num) {
            slides.style.left = -num * 1150 + 'px';
            dot[num].className = 'dot on';
            console.log(num);
            if(num > 0 && num <= 3){
            dot[num-1].className = 'dot';
            }
            if(num == 0) {
                dot[3].className = 'dot';
            }
            if(num <= 2) {
                dot[num+1].className = 'dot';
            }
            if(num == 3){
                dot[0].className = 'dot';
            }
            currentIdx = num;               
        }
        nextBtn.addEventListener('click', function(){
            if(currentIdx < slideCount - 1){
            moveSlide(currentIdx + 1);
            }else{
                moveSlide(0);
            }
        });
        prevBtn.addEventListener('click', function(){
            if(currentIdx > 0){
            moveSlide(currentIdx - 1);
            }else{
                moveSlide(slideCount - 1);
            }
        });
</script>


</body>

</html>
