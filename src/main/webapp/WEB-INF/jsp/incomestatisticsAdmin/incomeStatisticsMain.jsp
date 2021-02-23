<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <link rel="stylesheet" href="css/reservation/incomeStatisticsMain.css">
    <!-- <script src="https://kit.font.awesome.com/096073a2a8.js" crossorigin="anonymous"></script> -->

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
            <p>수입 / 통계 관리</p>
        </h1>
		<form class="searchBox1" action="">
		<select name="">
			<option value="">DATE</option>
			<option value="">2020년</option>
			<option value="">2021년</option>
			<option value="">2022년</option>
			<option value="">2023년</option>
		</select>
		<span>MonthlyStastistics</span>
		</form>
		<form class="searchBox2" action="">
		<select name="">
			<option value="">DATE</option>
			<option value="">2020년</option>
			<option value="">2021년</option>
			<option value="">2022년</option>
			<option value="">2023년</option>
		</select>
		<span>DailyStatistics</span>
		</form>
		
		
		
	<div id="here">

		<div class="boxWrap">
		<form class="searchBox3" action="">
		<select name="">
			<option value="">DATE</option>
			<option value="">1월</option>
			<option value="">2월</option>
			<option value="">3월</option>
			<option value="">4월</option>
			<option value="">5월</option>
			<option value="">6월</option>
			<option value="">7월</option>
			<option value="">8월</option>
			<option value="">9월</option>
			<option value="">10월</option>
			<option value="">11월</option>
			<option value="">12월</option>
		</select>
		<span>SEARCH</span>
		</form>
		<input style="background: red;" readonly type="text" /><span class="standardBox" id="btnTest2">STANDARD</span>
		<input style="background: orange;" readonly type="text" /><span class="superiorBox">SUPERIOR</span>
		<input style="background: goldenrod;" readonly type="text" /><span class="deluxeBox" >DELUXE</span>
		<input style="background: green;" readonly class="royalBox" type="text" /><span class="royalBox">ROYAL</span>
		<input style="background: blue;" readonly type="text" /><span class="totalBox">TOTAL</span>
		<input style="background: black;" readonly type="text" /><span class="deleteBox">DELETE</span>
		</div>



		<div class="incomeGraph">
			<div class="wrapLeft">
				<p>1일</p><br />
				<p>2일</p><br />
				<p>3일</p><br />
				<p>4일</p><br />
				<p>5일</p><br />
				<p>6일</p><br />
				<p>7일</p><br />
				<p>8일</p><br />
				<p>9일</p><br />
				<p>10일</p><br />
				<p>11일</p><br />
				<p>12일</p><br />
				<p>13일</p><br />
				<p>14일</p><br />
				<p>15일</p><br />
				<p>16일</p><br />
				<p>17일</p><br />
				<p>18일</p><br />
				<p>19일</p><br />
				<p>20일</p><br />
				<p>21일</p><br />
				<p>22일</p><br />
				<p>23일</p><br />
				<p>24일</p><br />
				<p>25일</p><br />
				<p>26일</p><br />
				<p>27일</p><br />
				<p>28일</p><br />
				<p>29일</p><br />
				<p>30일</p><br />
				<p>31일</p><br />
			</div>
			<div class="wrapRight">
				<h1>PRICE</h1>
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />


			</div>
			<div class="wrapRight2">
				<h1>COUNT</h1>
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
				<input class="test" type="text" value="50000000" /><br /><br />
			</div>
			
			
		</div>
	</div>
		<h2>hide</h2>
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

	 

	
	
	
	
	

		
		let btnTest1 = document.querySelector("#btnTest2");
		console.log(btnTest1);
		btnTest1.addEventListener("click", function(){
		
		let test = document.querySelectorAll(".test"),
		testlength = test.length;
		console.log(testlength)
		for(var index = 0; index < testlength; index++){
		
		testValue = test[index].value;
		console.log(testValue);
		test[index].style.width = testValue / 100000 + "px";
		};
		});

		 
</script>


</body>

</html>
