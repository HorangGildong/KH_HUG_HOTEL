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
    <link rel="stylesheet" href="css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="css/bootstrapcss/bootstrap.min.css">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/guestroom/guestRoomAdminView.css">
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
            <p>객실 관리 및 추가/삭제</p>
        </h1>
        <a href="/guestRoomAddView">추가</a>
		<c:if test="${empty list}">
		<h3>테이블이 비어있어요... 추가해주세요... 예? ㅡㅡ</h3>
		</c:if>
		<c:if test="${!empty list}">
		<c:forEach items="${list }" var="list">
        <div class="innerBox">
            <div class="roomWrap">
                <div class="imageBox">
                    <img src="/img/cjy_img/${list.guestRoomImage1 }" alt="이미지입니다">
                </div>
                <div class="roomContent">
                    <p class="roomTitle">
                        <span>${list.guestRoomName }</span>
                        <!-- 모던하면서도 아늑한 인테리어의 스탠다드 룸 -->
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
                        <a href="">객실 정보 추가하기</a>
                    </div>
                </div>
                <div class="roomPrice">
                    <p>1박</p>
                    <span>320000 원 ~</span>
                    <a href="/guestRoomDelete?guestRoomName=${list.guestRoomName}">삭제</a>
                </div>
            </div>
        </div>    
        </c:forEach>
		</c:if>
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
