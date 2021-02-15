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
    <link rel="stylesheet" href="css/AboutUs/introduce.css">
	
	<!-- 소개 이미지 swiper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

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
            <div class="intro-section">
                <div class="intro-title" id="intro-title">
                    <span class="name">ABOUT US</span>
                    <div class="first">
                        <h3 style="margin-top: 20px;">H<span class="txt_required">ealing</span></h3>
                        <p class="h">휴식과 힐링에서 출발하는 호캉스의 기본</p>
                    </div>
                    <div class="second">
                        <h3>U<span class="txt_required">ntact</span></h3>
                        <p class="u">더욱 아늑하게 즐기는 '비대면 파티'</p>
                    </div>
                    <div class="third">
                        <h3>G<span class="txt_required">ourmet</span></h3>
                        <p class="g">호텔 음식으로 즐거움 선사</p>
                    </div>
                </div>
                <div class="intro-content">
                    <P>
                        'H.U.G 호텔 제주'는 고전적인 우아함을 현대적인 감각으로 재해석한 5성급 럭셔리 호텔입니다. <br> 코로나19로 인해 전 국민적 피로와 우울감이 그 어느 때보다도 극심해진 만큼 편안한 휴식과 힐링이 더욱 간절하기에 <br> 저희 H.U.G 호텔에 오셔서 안전하고 편안하게 힐링하시고 가시길 바랍니다.<br>
                    </P>
                    <!-- Swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <img class="swiper-slide" src="img/hah_img/dining02.jpg">
                            <img class="swiper-slide" src="img/hah_img/dining02.jpg">
                            <img class="swiper-slide" src="img/hah_img/dining02.jpg">
                            <img class="swiper-slide" src="img/hah_img/dining02.jpg">
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination"></div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
                <div class="intro-explain">

                    <h2>청정한 자연의 섬, <br> 제주에서 만나는 특별한 즐거움</h2>
                    <p>
                        에메랄드 빛 바다와 천혜의 경관을 그대로 마주하고 있는 <br> H.U.G 호텔 제주는 제주 대표 관광지가 모여있는 중문관광단지에 위치하여 <br> 풍부한 주변 볼거리를 제공합니다. 제주의 바다를 닮은 넓고 고요한 객실은 <br> 일상을 벗어난 편안한 여유의 시간을 즐기기에 최적의 공간입니다. <br> 특히, 저희 호텔은 완벽한 공간 분리를 통해 오직 서로에게만 집중하고 싶은 <br> 허니무너들에게 가장
                        달콤하고 프라이빗한 시간을 선사합니다. <br> 미식의 즐거움을 책임지는 레스토랑 & 바 그리고 사계절 온수풀, 피트니스, <br> 스파, 키즈클럽까지 다양한 서비스와 컨텐츠를 통해 즐거움으로 <br> 가득찬 여정을 선사합니다. <br>
                    </p>

                </div>
                <div class="theme-color">
                    <h1>THEME COLOR</h1>
                    <h4>H.U.G 호텔은 제주도의 상징인 <span class="txt_required">'파랑'</span>이 테마색입니다.</h4>
                    <ul>
                        <li style="margin-left: 18%;">
                            <img src="img/hah_img/theme_color01.png" alt="">
                            <h4>#bedae8</h4>
                        </li>
                        <li>
                            <img src="img/hah_img/theme_color02.png" alt="">
                            <h4>#72a5d3</h4>
                        </li>
                        <li>
                            <img src="img/hah_img/theme_color03.png" alt="">
                            <h4>#3b6ba5</h4>
                        </li>
                        <li style="margin-right: 18%;">
                            <img src="img/hah_img/theme_color04.png" alt="">
                            <h4>#193f6e</h4>
                        </li>
                    </ul>
                </div>
                <div class="team-member" id="team-member">
                    <h1>TEAM MEMBER</h1>
                    <h4>H.U.G 호텔의 직원들을 소개합니다.</h4>
                    <ul>
                        <li style="margin-left: 100px;">
                            <img src="img/hah_img/theme_color01.png" alt="">
                            <h4>곽재훈</h4>
                        </li>
                        <li>
                            <img src="img/hah_img/theme_color02.png" alt="">
                            <h4>김법규</h4>
                        </li>
                        <li>
                            <img src="img/hah_img/theme_color02.png" alt="">
                            <h4>김유찬</h4>
                        </li>
                        <li>
                            <img src="img/hah_img/theme_color02.png" alt="">
                            <h4>최주영</h4>
                        </li>
                        <li>
                            <img src="img/hah_img/theme_color02.png" alt="">
                            <h4>한아현</h4>
                        </li>
                        <li style="margin-right: 100px;">
                            <img src="img/hah_img/theme_color04.png" alt="">
                            <h4>함승우</h4>
                        </li>
                    </ul>
                </div>
                <div class="intro-membership" id="intro-membership">
                    <h1>MEMBERSHIP</h1>
                    <div class="ms-contents">
                        <div class="card">
                            <div class="front"><img src="img/hah_img/Hmembership_F.png" alt=""></div>
                            <div class="back"><img src="img/hah_img/Hmembership_B.png" alt=""></div>
                        </div>
                    </div>
                    <div class="explain">
                        <h3>H.U.G H</h3>
                        <h5>H.U.G 호텔의 멤버십은 객실 할인 혜택이 있는 H.U.G H 멤버십을 운영하고 있습니다. <br><br> 특이하게도 등급이 나뉘지 않고, 00% 할인을 해드립니다. <br><br> 자세한 문의는 신청 문의를 통해 전화해주시거나<br><br> 신청서 작성을 통하여 신청서 작성을 해주시길 바랍니다.<br><br> 신청문의. 064-123-4567 </h5>
                        <button type="button">신청서 작성</button>
                    </div>
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
<script src="js/bootstrap.min.js"></script>
<script src="js/header.js"></script>
<script src="js/AboutUs/introduce.js"></script>
</body>



</html>
