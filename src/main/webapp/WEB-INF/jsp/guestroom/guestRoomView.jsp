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
    <link rel="stylesheet" href="css/guestroom/guestRoomView.css">
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
    <section class="hotelHugWrap">
        <h1 class="contTitle">
            <span></span>
            호텔 H.U.G만의 예술적 품격을 갖춘 객실에서
            <br>
            격이 다른 휴식과 여유를 경험해 보세요.
        </h1>
        <div class="innerBox">
            <div class="roomWrap">
                <div class="imageBox">
                    <img src="img/cjy_img/room1.jpg" alt="이미지입니다">
                </div>
                <div class="roomContent">
                    <p class="roomTitle">
                        <span>스탠다드</span>
                        모던하면서도 아늑한 인테리어의 스탠다드 룸
                    </p>
                    <div class="roomInfo">
                        <p>
                            <span>면적</span>
                            45m²
                        </p>
                        <p>
                            <span>인원</span>
                            성인 2인 기준 / 최대 4인
                        </p>
                        <p>
                            <span>베드타입</span>
                            TWIN
                        </p>
                        <a class="buttonTypeSmall" href="/guestRoomDetailView"><span>상세 보기</span></a>
                    </div>
                </div>
            </div>
        </div>
       
        <div class="innerBox">
            <div class="roomWrap">
                <div class="imageBox">
                    <img src="img/cjy_img/room2.jpg" alt="이미지입니다">
                </div>
                <div class="roomContent">
                    <p class="roomTitle">
                        <span>슈페리어</span>
                        침실과 거실이 하나로 이어지는 특별한 공간 구성과 모던한 감각, 슈페리어 룸
                    </p>
                    <div class="roomInfo">
                        <p>
                            <span>면적</span>
                            65m²
                        </p>
                        <p>
                            <span>인원</span>
                            성인 3인 기준 / 최대 6인
                        </p>
                        <p>
                            <span>베드타입</span>
                            DOUBLE
                        </p>
                        <a class="buttonTypeSmall" href=""><span>상세 보기</span></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="innerBox">
            <div class="roomWrap">
                <div class="imageBox">
                    <img src="img/cjy_img/room3.jpg" alt="이미지입니다">
                </div>
                <div class="roomContent">
                    <p class="roomTitle">
                        <span>디럭스</span>
                        편안한 분위기의 침실과 우아한 감성의 거실이 분리되어 독립적 공간 활용이 매력적인 디럭스 룸
                    </p>
                    <div class="roomInfo">
                        <p>
                            <span>면적</span>
                            85m²
                        </p>
                        <p>
                            <span>인원</span>
                            성인 4인 기준 / 최대 8인
                        </p>
                        <p>
                            <span>베드타입</span>
                            QUEEN
                        </p>
                        <a class="buttonTypeSmall" href=""><span>상세 보기</span></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="innerBox">
            <div class="roomWrap">
                <div class="imageBox">
                    <img src="img/cjy_img/room4.jpg" alt="이미지입니다">
                </div>
                <div class="roomContent">
                    <p class="roomTitle">
                        <span>로얄</span>
                        고급스러운 색체와 감각적인 분위기를 지닌 풀빌라의 정석, 로얄 풀빌라
                    </p>
                    <div class="roomInfo">
                        <p>
                            <span>면적</span>
                            145m²
                        </p>
                        <p>
                            <span>인원</span>
                            성인 5인 기준 / 최대 10인
                        </p>
                        <p>
                            <span>베드타입</span>
                            KING
                        </p>
                        <a class="buttonTypeSmall" href=""><span>상세 보기</span></a>
                    </div>
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
<script src="js/bootstrapjs/bootstrap.min.js"></script>
<script src="js/header.js"></script>


</body>

</html>
