<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--글씨체 링크 한글-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--글씨체 링크 영어-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/styles.css">
    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <title> H.U.G HOTEL 제주</title>

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> -->

    <!-- Bootstrap -->
    <link href="css/bootstrapcss/bootstrap.min.css" rel="stylesheet">    
    <link href="css/bootstrapcss/custom2.css" rel="stylesheet">
   <link href="css/bootstrapcss/kfonts2.css" rel="stylesheet">

    <link rel="stylesheet" href="css/NoticeFaq/notice.css">

</head>

<body>
    <div class="wrap">
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
                    <li><a href='#'>ABOUT US</a>
                        <ul>
                            <li><a href="#">호텔소개</a></li>
                            <li><a href="#">직원소개</a></li>
                            <li><a href="#">회원권 소개</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">오시는길</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>HOTELS</a>
                        <ul>
                            <li><a href="#">객실</a></li>
                            <li><a href="#">다이닝</a></li>
                            <li><a href="#">부대시설</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>여행정보</a>
                        <ul>
                            <li><a href="#">관광</a></li>
                            <li><a href="#">맛집</a></li>
                        </ul>
                    </li>
                    <li><a href='/notice'>고객지원</a>
                        <ul>
                            <li><a href="/notice">공지사항</a></li>                                                     
                            <li><a href="/faq">FAQ</a></li>                            
                            <li><a href="#">Q&A</a></li>
                        </ul>
                    </li>
                    <li><a href="#">마이페이지</a>
                        <ul>
                            <li><a href="#">OVERVIEW</a></li>
                            <li><a href="#">멤버십</a></li>
                            <li><a href="#">예약내역</a></li>
                            <li><a href="#">이용문의</a></li>
                            <li><a href="#">회원정보수정</a></li>
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
                    <!-- <li><a href='#'>로그인</a></li> -->
                    <li><a href="#">로그아웃</a></li>
                    <li><a href='#' style="background-color: #193f6e;" onmouseover="this.innerHTML='Reservation'" onmouseout="this.innerHTML='예약'">예약</a></li>
                </ul>
            </nav>
        </header>
        <!--header end-->


        <!--section start-->
        <section>
         <div id='notice'>
            <div class="container"> 
                <dl class="dl-horizontal non"> 
                   <dt>공지사항</dt><br><br>
                   <dd>HUG호텔의 다양한 소식을 전해드립니다.</dd>                  
                </dl>        
                
                <form id='frm_notice' action="#" method='post' >
                    <div>
                        <span id='span'>Total: <span id='total'>50</span></span>
                    </div>
                    <div>
                        <select class="form-control">
                        <option>전체</option>
                        <option>제목</option>
                        <option>내용</option>               
                        </select>
                
                        <input type="text" id='text'class="form-control">            
                        <input type="button" id='button' class="form-control" value='Search'>                          
                    </div>    
                </form>

             <div>
             <table class="table table-hover">
              <thead>
               <tr>
                 <th>No.</th>
                 <th>제 목</th>
                 <th>등록일</th>
                 <th>조회수</th>
               </tr>
               </thead>
               <tr>
                 <td>10</td>
                 <td>코로나 19 예방을 위한 외국 국적자 체크인 안내</td>
                 <td>2020.12.22</td>
                 <td>85</td>
               </tr>
               <tr>
                 <td>9</td>
                 <td>셔틀버스 일부 노선 운영 임시 중단 안내</td>
                 <td>2020.08.04</td>
                 <td>85</td>
               </tr>
               <tr>
                 <td>8</td>
                 <td>5인 이상 집합금지 명령에 따른 준수사항 안내</td>
                 <td>2020.08.01</td>
                 <td>85</td>
               </tr>      
               <tr>
                <td>7</td>
                <td>코로나 19 예방을 위한 외국 국적자 체크인 안내</td>
                <td>2020.07.02</td>
                <td>85</td>
              </tr>
              <tr>
                <td>6</td>
                <td>셔틀버스 일부 노선 운영 임시 중단 안내</td>
                <td>2020.07.01</td>
                <td>85</td>
              </tr>
              <tr>
                <td>5</td>
                <td>5인 이상 집합금지 명령에 따른 준수사항 안내</td>
                <td>2020.06.21</td>
                <td>85</td>
              </tr><tr>
                <td>4</td>
                <td>코로나 19 예방을 위한 외국 국적자 체크인 안내</td>
                <td>2020.6.12</td>
                <td>85</td>
              </tr>
              <tr>
                <td>3</td>
                <td>셔틀버스 일부 노선 운영 임시 중단 안내</td>
                <td>2020.05.14</td>
                <td>85</td>
              </tr>
              <tr>
                <td>2</td>
                <td>5인 이상 집합금지 명령에 따른 준수사항 안내</td>
                <td>2020.04.01</td>
                <td>85</td>
              </tr>
              <tr>
                <td>1</td>
                <td>5인 이상 집합금지 명령에 따른 준수사항 안내</td>
                <td>2020.01.01</td>
                <td>85</td>
              </tr>
             </table>
            </div>
            </div>
            
            <div id='writer'>
                <div></div>
                <div>
                    <input type="button" class="form-control" value='글쓰기'>            
                </div>
            </div>

            <ul class="pagination">
                <li class="disabled"><a href="#">«</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">»</a></li>
            </ul>

            



         </div>

        </section>
        <!--section end-->

        
        <!--footer start-->
        <footer>
            <div class="footer-content text-center">
                <div class="logo">
                    <h2>H.U.G <br> HOTEL </h2>
                    <h5>JEJU</h5>
                </div>
                <div class="footer-info">
                    <ul>
                        <li><a href="#" target="_blank">오시는길</a></li>
                        <li><a href="#" target="_blank">사이트맵</a></li>
                        <li>개인정보처리방침</li>
                        <li>영상정보처리기기운영</li>
                        <li>이용약관</li>
                        <li><a href="#" target="_blank">고객센터</a></li>
                    </ul>
                    <address>
                        (주)H.U.G 호텔 | 제주특별자치도 서귀포시 중문관광로 21길 21
                        <br>
                        대표이사 한만월 | TEL. 064-123-4567
                        <br>
                        E-MAIL. contact@hughotel.com
                        <br>
                        Copyright © 2021 H.U.G HOTELS Co. All rights reserved.
                    </address>
                    <div class="family-member">
                        <select class="hughotel-member">
                        <option>H.U.G HOTEL MEMBER</option>
                        <option value="">곽재훈</option>
                        <option value="">김법규</option>
                        <option value="">김유찬</option>
                        <option value="">최주영</option>
                        <option value="">한아현</option>
                        <option value="">함승우</option>
                        </select>
                    </div>
                </div>
            </div>
        </footer>
        <!--footer end-->
    </div>
</body>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="js/index.js"></script>

</html>