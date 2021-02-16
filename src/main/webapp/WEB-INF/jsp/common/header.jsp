<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<!--header-->
        <header>
            <div class="header text-center">
                <h2><a href="/"><strong>H.U.G HOTEL</strong></a></h2>
                <h5><strong>JEJU</strong></h5>
            </div>
            <nav id='cssmenu'>
                <div id="head-mobile"></div>
                <div class="button"></div>
                <ul>
                    <li><a href='/introduce'>ABOUT US</a>
                        <ul>
                            <li><a href="/introduce#intro-title">호텔소개</a></li>
                            <li><a href="/introduce#team-member">직원소개</a></li>
                            <li><a href="/introduce#intro-membership">회원권 소개</a></li>
                            <li><a href="/event">이벤트</a></li>
                            <li><a href="/directions">오시는길</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>HOTELS</a>
                        <ul>
                            <li><a href="/guestRoomListView">객실</a></li>
                            <li><a href="/diningView">다이닝</a></li>
                            <li><a href="/facilityView">부대시설</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>여행정보</a>
                        <ul>
                            <li><a href="#">관광</a></li>
                            <li><a href="#">맛집</a></li>
                        </ul>
                    </li>
                    <li><a href='/noticeMain'>고객지원</a>
                        <ul>
                            <li><a href="/noticeMain">공지사항</a></li>                                                     
                            <li><a href="/faqMain">FAQ</a></li>                            
                            <li><a href="#">Q&A</a></li>
                        </ul>
                    </li>
                    <li><a href="#">마이페이지</a>
                        <ul>
                            <li><a href="#">OVERVIEW</a></li>
                            <li><a href="#">멤버십</a></li>
                            <li><a href="#">예약내역</a></li>
                            <li><a href='/userInfo'>이용문의</a></li>
                            <li><a href='/myPage'>회원정보수정</a></li>
                        </ul>
                    </li>
                    <!-- <li><a href="#">관리자페이지</a>
                        <ul>
                            <li><a href="#">객실관리</a></li>
                            <li><a href="#">고객지원관리</a>
                                <ul>
                                    <li><a href="#">공지사항 관리</a></li>
                                    <li><a href="#">FAQ 관리</a></li>
                                    <li><a href="#">Q&A 관리</a></li>
                                </ul>
                            </li>
                            <li><a href="#">회원관리</a></li>
                        </ul>
                    </li> -->
                    <li><a href='/login'>로그인</a></li>
                    <!-- <li><a href="#">로그아웃</a></li> -->
                    <li><a href='#' style="background-color: #193f6e;" onmouseover="this.innerHTML='Reservation'" onmouseout="this.innerHTML='예약'">예약</a></li>
                </ul>
            </nav>
        </header>
        <!--header end-->
</body>
</html>
