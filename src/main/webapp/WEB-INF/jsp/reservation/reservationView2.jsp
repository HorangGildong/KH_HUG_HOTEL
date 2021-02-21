<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
   	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="css/bootstrapcss/nomalize.css"> -->
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">
    


    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/reservation/reservationView2.css">
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
        <h1 class="buttonTitle">
            <span class="buttonType">1</span>ㅡ
            <span class="buttonType on">2</span>ㅡ
            <span class="buttonType">3</span>
            <br>
            <p>예약 결제 및 취소</p>
        </h1>
        
        <div class="selectedShowBox">
            <form class="showBoxWrap" action="">
                <div class="positionLeft">
                <ul><p>예약번호</p>
                    <li>12312312</li>
                </ul>
                <ul><p>닉네임</p>
                    <li>12312312</li>
                </ul>
                <ul><p>성인</p>
                    <li>12312312</li>
                </ul>
                </div>
                <div class="positionRight">
                <ul><p>룸</p>
                    <li>12312312</li>
                </ul>
                <ul><p>예약날짜</p>
                    <li>12312312</li>
                </ul>
                <ul><p>어린이</p>
                    <li>12312312</li>
                </ul>
                </div>
                <p>가격</p>
                <p class="angryJYP">ddd</p>


                <div class="guideBox">
                    <h2 class="guideList1">
                         환불관련 안내사항
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
            
            
                <div class="buttonJYP">
                    <button type="submit">결제</button>
                    <a href="">취소</a>
                </div>
            
            </form>
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
