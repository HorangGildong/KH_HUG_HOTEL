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
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/reservation/reservationView1.css">
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
                <span class="buttonType on">1</span>ㅡ
                <span class="buttonType">2</span>ㅡ
                <span class="buttonType">3</span>
                <br>
                <p>날짜, 객실, 인원을 선택하세요.</p>
            </h1>
    
            <div class="buttonChoice">
                <form action="">
                    <div class="checkInOut">
                        <input style="margin-right: 10px;" class="checkIn" type="text" id="datepicker1" placeholder="CheckIn">
                        <input class="checkOut" type="text" id="datepicker2" placeholder="CheckOut">
                    </div>
            
                



                    <!-- <p >날짜선택</p> -->
                    <div class="choiceType">
                    <select class="choiceType2" >
                        <option class="choiceFirst" value="">객실선택</option>
                        <option value="">스탠다드</option>
                        <option value="">슈페리어</option>
                        <option value="">디럭스</option>
                        <option value="">로얄</option>
                    </select>
                    <select class="choiceType2" >
                        <option class="choiceFirst" value="">인원선택(성인)</option>
                        <option value="">성인 1</option>
                        <option value="">성인 2</option>
                        <option value="">성인 3</option>
                    </select>
                    <select class="choiceType2" >
                        <option class="choiceFirst" value="">인원선택(어린이)</option>
                        <option value="">어린이 1</option>
                        <option value="">어린이 2</option>
                        <option value="">어린이 3</option>
                    </select>
                    <button class="choiceType3" type="submit">검색</button>
                    </div>
                </form>
            </div>
        

            <div class="innerBox">
                <div class="roomWrap">
                    <div class="imageBox">
                        <img src="../../../img/스탠다드1.jpg" alt="이미지입니다">
                    </div>
                    <div class="roomContent">
                        <p class="roomTitle">
                            <span>스탠다드</span>
                            <!-- 모던하면서도 아늑한 인테리어의 스탠다드 룸 -->
                        </p>
                        <div class="roomInfo">
                            <p>
                                <span>면적</span>
                                45m²
                            </p>
                            <p>
                                <span>인원</span>
                                성인 2인 기준
                            </p>
                            <p>
                                <span>베드타입</span>
                                TWIN
                            </p>
                            <p>
                                <span>전망</span>
                                우주/바다
                            </p>
                        </div>
                    </div>
                    <div class="roomPrice">
                        <p>1박</p>
                        <span>320000 원 ~</span>
                        <button type=""> <a href="예약뷰2.html"></a> 예약하기</button>
                    </div>
                </div>
                <div class="searchRoomDetailInfo">
                    <form action="">
                    <ul><h1>남은방 개수<span> 선택한 객실 : <input readonly class="ipButtonType" type="text" value="스탠다드"></span></h1>
                        <li>3개(원하시는 객실 호수를 선택해주세요.)</li>
                    	<table class="guestRoomNumberTable">
                    		<tr>
                    			<th class="jypSizeUp">객실번호</th>
                    			<th class="jypSizeUp">베드타입</th>
                    			<th class="jypSizeUp">전망</th>
                    		</tr>
                    		
                    		<tr>
                    			<td class="jypSizeUp"><input name="guestRoomNo" type="checkbox" onclick='checkOnlyOne(this)' />1303호</td>
                    			<td class="jypSizeUp">TWIN</td>
                    			<td class="jypSizeUp">우주</td>
                    		</tr>
                    		<tr>
                    			<td class="jypSizeUp"><input name="guestRoomNo" type="checkbox" onclick='checkOnlyOne(this)' />1303호</td>
                    			<td class="jypSizeUp">TWIN</td>
                    			<td class="jypSizeUp">우주</td>
                    		</tr>
                    		<tr>
                    			<td class="jypSizeUp"><input name="guestRoomNo" type="checkbox" onclick='checkOnlyOne(this)' />1303호</td>
                    			<td class="jypSizeUp">TWIN</td>
                    			<td class="jypSizeUp">우주</td>
                    		</tr>
                    	</table>
                    </ul>
                    <ul><h1>숙박기간에 대한 추가금<span> 선택한 날짜 : <input readonly class="ipButtonType" type="text" value="20210205">-<input readonly class="ipButtonType" type="text" value="20210210"></span></h1>
                        <li>5박</li>
                        <li>+ 320000</li>
                        <li>+ 320000</li>
                        <li>+ 320000</li>
                        <li>+ 320000</li>
                        <li>+ 320000</li>
                    </ul>
                    <ul><h1>기준인원을 넘어선 추가금<span> 선택한 인원 : 성인 <input readonly class="ipButtonType1" type="text" value="3">, 어린이 <input readonly class="ipButtonType1" type="text" value="3"></span></h1>
                        <li>성인 + 50000</li>
                        <li>어린이 + 30000</li>
                        <li>어린이 + 30000</li>
                        <li>어린이 + 30000</li>
                    </ul>
                    <ul><h1>회원등급에 의한 할인<span> 회원등급 : <input readonly class="ipButtonType" type="text" value="다이아"></span></h1>
                        <li>30%</li>
                    </ul>
                    <ul><h1>총 금액</h1>
                        <li><input readonly class="ipButtonType2" type="text" value="1111111"> 원</li>
                    </ul>
                    </form>
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


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
    $.datepicker.setDefaults({
        dateFormat: 'yymmdd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });

    $(function() {
        $("#datepicker1").datepicker();
        $("#datepicker2").datepicker();
    });


    var choiceType3 = document.querySelector('.choiceType3'),
        innerBox = document.querySelector('.innerBox');
        console.log(innerBox);

        choiceType3.addEventListener('click',function(){
            innerBox.style.display='flex';
        });
</script>
<script>
function checkOnlyOne(element) {
  
  const checkboxes 
      = document.getElementsByName("guestRoomNo");
  
  checkboxes.forEach((cb) => {
    cb.checked = false;
  })
  
  element.checked = true;
}
</script>
</body>

</html>
