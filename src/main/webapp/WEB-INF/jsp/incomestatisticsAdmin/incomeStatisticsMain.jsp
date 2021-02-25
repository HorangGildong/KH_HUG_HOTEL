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
		<form class="searchBox1" id="searchBox1" >
		<select name="choiceYear">
			<option value="0">DATE</option>
			<option value="202000">2020년</option>
			<option value="202100">2021년</option>
			<option value="202200">2022년</option>
			<option value="202300">2023년</option>
		</select>
		<span id="searchBtn1" >MonthlyStastistics</span>
		</form>
		<form class="searchBox2" id="searchBox2">
		<select name="choiceYear">
			<option value="0">DATE</option>
			<option value="20200000">2020년</option>
			<option value="20210000">2021년</option>
			<option value="20220000">2022년</option>
			<option value="20230000">2023년</option>
		</select>
		<span id="searchBtn2" >DailyStatistics</span>
		</form>
		
		
		
	<div id="here">


		
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

		let searchBtn1 = document.querySelector("#searchBtn1"),
			searchRtn2 = document.querySelector("#searchBtn2");
			
			
			
			searchBtn1.addEventListener("click", function(){
				param = $("#searchBox1").serialize();
				console.log(param);
				$.ajax({
					url : "/monthlyStatistics",
					data : param,
					dataType : "html",
					method: "POST",
					success : function(data){
						
						$("#here").html(data);
					
					}
				});
			});
			
			
			searchBtn2.addEventListener("click", function(){
				param = $("#searchBox2").serialize();
				$.ajax({
					url : "/dailyStatistics1",
					data : param,
					dataType : "html",
					method: "POST",
					success : function(data){
						
						$("#here").html(data);
					
					}
				});
			});



let monthly = function() {

	 	let = 	standardPriceAVG2 = document.querySelectorAll(".standardPriceAVG2"),
				superiorPriceAVG2 = document.querySelectorAll(".superiorPriceAVG2"),
				deluxePriceAVG2 = document.querySelectorAll(".deluxePriceAVG2"),
				royalPriceAVG2 = document.querySelectorAll(".royalPriceAVG2"),
				totalPriceAVG2 = document.querySelectorAll(".totalPriceAVG2"),
				standardCountAVG2 = document.querySelectorAll(".standardCountAVG2"),
				superiorCountAVG2 = document.querySelectorAll(".superiorCountAVG2"),
				deluxeCountAVG2 = document.querySelectorAll(".deluxeCountAVG2"),
				royalCountAVG2 = document.querySelectorAll(".royalCountAVG2"),
				totalCountAVG2 = document.querySelectorAll(".totalCountAVG2"),
				priceColorChange2 = document.querySelectorAll(".priceColorChange2"),
				countColorChange2 = document.querySelectorAll(".countColorChange2"),
	 			
	 			
	 			standardBtn = document.querySelector("#standardBtn"),
				superiorBtn = document.querySelector("#superiorBtn"),
				deluxeBtn = document.querySelector("#deluxeBtn"),
				royalBtn = document.querySelector("#royalBtn"),
				totalBtn = document.querySelector("#totalBtn"),
				standardAVG = document.querySelector("#standardAVG"),
				superiorAVG = document.querySelector("#superiorAVG"),
				deluxeAVG = document.querySelector("#deluxeAVG"),
				royalAVG = document.querySelector("#royalAVG"),
				totalAVG = document.querySelector("#totalAVG"),
				
				standardPriceSUM = document.querySelector("#standardPriceSUM"),
				superiorPriceSUM = document.querySelector("#superiorPriceSUM"),
				deluxePriceSUM = document.querySelector("#deluxePriceSUM"),
				royalPriceSUM = document.querySelector("#royalPriceSUM"),
				totalPriceSUM = document.querySelector("#totalPriceSUM"),
				standardCountSUM = document.querySelector("#standardCountSUM "),
				superiorCountSUM = document.querySelector("#superiorCountSUM"),
				deluxeCountSUM = document.querySelector("#deluxeCountSUM"),
				royalCountSUM = document.querySelector("#royalCountSUM"),
				totalCountSUM = document.querySelector("#totalCountSUM"),
				
				AVG1 = document.querySelector("#AVG1"),
				AVG2 = document.querySelector("#AVG2"),
				AVG3 = document.querySelector("#AVG3"),
				AVG4 = document.querySelector("#AVG4"),
				AVG5 = document.querySelector("#AVG5"),
				AVG6 = document.querySelector("#AVG6"),
				AVG7 = document.querySelector("#AVG7"),
				AVG8 = document.querySelector("#AVG8"),
				AVG9 = document.querySelector("#AVG9"),
				AVG10 = document.querySelector("#AVG10"),

				standardPrice = document.querySelectorAll(".standardPrice"),
				superiorPrice = document.querySelectorAll(".superiorPrice"),
				deluxePrice = document.querySelectorAll(".deluxePrice"),
				royalPrice = document.querySelectorAll(".royalPrice"),
				totalPrice = document.querySelectorAll(".totalPrice"),
				standardCount = document.querySelectorAll(".standardCount"),
				superiorCount = document.querySelectorAll(".superiorCount"),
				deluxeCount = document.querySelectorAll(".deluxeCount"),
				royalCount = document.querySelectorAll(".royalCount"),
				totalCount = document.querySelectorAll(".totalCount"),
				
				standardPriceAVG = document.querySelectorAll(".standardPriceAVG"),
				superiorPriceAVG = document.querySelectorAll(".superiorPriceAVG"),
				deluxePriceAVG = document.querySelectorAll(".deluxePriceAVG"),
				royalPriceAVG = document.querySelectorAll(".royalPriceAVG"),
				totalPriceAVG = document.querySelectorAll(".totalPriceAVG"),
				standardCountAVG = document.querySelectorAll(".standardCountAVG"),
				superiorCountAVG = document.querySelectorAll(".superiorCountAVG"),
				deluxeCountAVG = document.querySelectorAll(".deluxeCountAVG"),
				royalCountAVG = document.querySelectorAll(".royalCountAVG"),
				totalCountAVG = document.querySelectorAll(".totalCountAVG"),
				
				priceColorChange = document.querySelectorAll(".priceColorChange"),
				countColorChange = document.querySelectorAll(".countColorChange"),
				
				deleteBtn = document.querySelector("#deleteBtn"),
				priceAndCount = document.querySelector("#priceAndCount"),
				changeBtn = document.querySelector("#changeBtn"),
				selectPrice = document.querySelector("#selectPrice"),
				selectCount = document.querySelector("#selectCount");
				
				
				changeBtn.addEventListener("click",function(){
					if(priceAndCount.value == "price"){
						selectPrice.style.display = "block";
						selectCount.style.display = "none";
					}
					if(priceAndCount.value == "count") {
						selectPrice.style.display = "none";
						selectCount.style.display = "block";
					}
					
				});
	
				
				
				deleteBtn.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";

						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					
					for(var index = 0; index < standardPrice.length; index++){
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						priceColorChange2[index].style.background = "white";
						countColorChange2[index].style.background = "white";
						
					};
				});
				
				standardBtn.addEventListener("click", function(){

						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "inline";
						standardCountSUM.style.display = "inline";
					
	
					
					for(var index = 0; index < standardPrice.length; index++){
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
		
						standardPrice[index].style.width = standardPrice[index].value / 800000 + "px";
						standardCount[index].style.width = standardCount[index].value + "px";
					};
				});
				superiorBtn.addEventListener("click", function(){
	
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "inline";
						superiorCountSUM.style.display = "inline";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					for(var index = 0; index < standardPrice.length; index++){
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
	
						superiorPrice[index].style.width = superiorPrice[index].value / 800000 + "px";
						superiorCount[index].style.width = superiorCount[index].value + "px";
					};
				});
				deluxeBtn.addEventListener("click", function(){

		
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "inline";
						deluxeCountSUM.style.display = "inline";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";

					for(var index = 0; index < standardPrice.length; index++){
		

						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
	
						deluxePrice[index].style.width = deluxePrice[index].value / 800000 + "px";
						deluxeCount[index].style.width = deluxeCount[index].value + "px";
					};
				});
				royalBtn.addEventListener("click", function(){
		
		
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "inline";
						royalCountSUM.style.display = "inline";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					for(var index = 0; index < standardPrice.length; index++){
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
			
						royalPrice[index].style.width = royalPrice[index].value / 800000 + "px";
						royalCount[index].style.width = royalCount[index].value + "px";
					};
				});
				totalBtn.addEventListener("click", function(){
					
	
						totalPriceSUM.style.display = "inline";
						totalCountSUM.style.display = "inline";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";

					for(var index = 0; index < standardPrice.length; index++){
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
	
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
			
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
			
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
			
						totalPrice[index].style.width = totalPrice[index].value / 800000 + "px";
						totalCount[index].style.width = totalCount[index].value + "px";
					};
				
				});
				
				
				standardAVG.addEventListener("click", function(){
				
					AVG1.style.display = "inline";
					AVG2.style.display = "inline";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						
						standardPriceAVG[index].style.width = standardPriceAVG[index].value / 800000 + "px";
						standardCountAVG[index].style.width = standardCountAVG[index].value + "px";
						priceColorChange[index].style.background = "red";
						countColorChange[index].style.background = "red";
					};
				});
				superiorAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "inline";
					AVG4.style.display = "inline";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = superiorPriceAVG[index].value / 800000 + "px";
						superiorCountAVG[index].style.width = superiorCountAVG[index].value + "px";
						priceColorChange[index].style.background = "orange";
						countColorChange[index].style.background = "orange";
					};
				});
				deluxeAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "inline";
					AVG6.style.display = "inline";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = deluxePriceAVG[index].value / 800000 + "px";
						deluxeCountAVG[index].style.width = deluxeCountAVG[index].value + "px";
						priceColorChange[index].style.background = "goldenrod";
						countColorChange[index].style.background = "goldenrod";
					};
				});
				royalAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "inline";
					AVG8.style.display = "inline";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = royalPriceAVG[index].value / 800000 + "px";
						royalCountAVG[index].style.width = royalCountAVG[index].value  + "px";
						priceColorChange[index].style.background = "green";
						countColorChange[index].style.background = "green";
					};
				});
				totalAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "inline";
					AVG10.style.display = "inline";
				
					for(var index = 0; index < standardPrice.length; index++){
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = totalPriceAVG[index].value / 800000 + "px";
						totalCountAVG[index].style.width = totalCountAVG[index].value  + "px";
						priceColorChange[index].style.background = "blue";
						countColorChange[index].style.background = "blue";
					};
				});
	
	      };












		let daily = function() {

			searchBtn3.addEventListener("click", function(){
				param = $("#searchBox3").serialize();
				$.ajax({
					url : "/dailyStatistics2",
					data : param,
					dataType : "html",
					method: "POST",
					success : function(data){
						
						$("#here").html(data);
					
					}
				});
			});



	 	let = 	standardPriceAVG2 = document.querySelectorAll(".standardPriceAVG2"),
				superiorPriceAVG2 = document.querySelectorAll(".superiorPriceAVG2"),
				deluxePriceAVG2 = document.querySelectorAll(".deluxePriceAVG2"),
				royalPriceAVG2 = document.querySelectorAll(".royalPriceAVG2"),
				totalPriceAVG2 = document.querySelectorAll(".totalPriceAVG2"),
				standardCountAVG2 = document.querySelectorAll(".standardCountAVG2"),
				superiorCountAVG2 = document.querySelectorAll(".superiorCountAVG2"),
				deluxeCountAVG2 = document.querySelectorAll(".deluxeCountAVG2"),
				royalCountAVG2 = document.querySelectorAll(".royalCountAVG2"),
				totalCountAVG2 = document.querySelectorAll(".totalCountAVG2"),
				priceColorChange2 = document.querySelectorAll(".priceColorChange2"),
				countColorChange2 = document.querySelectorAll(".countColorChange2"),
	 	
	 	
	 			standardBtn = document.querySelector("#standardBtn"),
				superiorBtn = document.querySelector("#superiorBtn"),
				deluxeBtn = document.querySelector("#deluxeBtn"),
				royalBtn = document.querySelector("#royalBtn"),
				totalBtn = document.querySelector("#totalBtn"),
				standardAVG = document.querySelector("#standardAVG"),
				superiorAVG = document.querySelector("#superiorAVG"),
				deluxeAVG = document.querySelector("#deluxeAVG"),
				royalAVG = document.querySelector("#royalAVG"),
				totalAVG = document.querySelector("#totalAVG"),
				
				standardPriceSUM = document.querySelector("#standardPriceSUM"),
				superiorPriceSUM = document.querySelector("#superiorPriceSUM"),
				deluxePriceSUM = document.querySelector("#deluxePriceSUM"),
				royalPriceSUM = document.querySelector("#royalPriceSUM"),
				totalPriceSUM = document.querySelector("#totalPriceSUM"),
				standardCountSUM = document.querySelector("#standardCountSUM "),
				superiorCountSUM = document.querySelector("#superiorCountSUM"),
				deluxeCountSUM = document.querySelector("#deluxeCountSUM"),
				royalCountSUM = document.querySelector("#royalCountSUM"),
				totalCountSUM = document.querySelector("#totalCountSUM"),
				
				AVG1 = document.querySelector("#AVG1"),
				AVG2 = document.querySelector("#AVG2"),
				AVG3 = document.querySelector("#AVG3"),
				AVG4 = document.querySelector("#AVG4"),
				AVG5 = document.querySelector("#AVG5"),
				AVG6 = document.querySelector("#AVG6"),
				AVG7 = document.querySelector("#AVG7"),
				AVG8 = document.querySelector("#AVG8"),
				AVG9 = document.querySelector("#AVG9"),
				AVG10 = document.querySelector("#AVG10"),

				standardPrice = document.querySelectorAll(".standardPrice"),
				superiorPrice = document.querySelectorAll(".superiorPrice"),
				deluxePrice = document.querySelectorAll(".deluxePrice"),
				royalPrice = document.querySelectorAll(".royalPrice"),
				totalPrice = document.querySelectorAll(".totalPrice"),
				standardCount = document.querySelectorAll(".standardCount"),
				superiorCount = document.querySelectorAll(".superiorCount"),
				deluxeCount = document.querySelectorAll(".deluxeCount"),
				royalCount = document.querySelectorAll(".royalCount"),
				totalCount = document.querySelectorAll(".totalCount"),
				
				standardPriceAVG = document.querySelectorAll(".standardPriceAVG"),
				superiorPriceAVG = document.querySelectorAll(".superiorPriceAVG"),
				deluxePriceAVG = document.querySelectorAll(".deluxePriceAVG"),
				royalPriceAVG = document.querySelectorAll(".royalPriceAVG"),
				totalPriceAVG = document.querySelectorAll(".totalPriceAVG"),
				standardCountAVG = document.querySelectorAll(".standardCountAVG"),
				superiorCountAVG = document.querySelectorAll(".superiorCountAVG"),
				deluxeCountAVG = document.querySelectorAll(".deluxeCountAVG"),
				royalCountAVG = document.querySelectorAll(".royalCountAVG"),
				totalCountAVG = document.querySelectorAll(".totalCountAVG"),
				
				priceColorChange = document.querySelectorAll(".priceColorChange"),
				countColorChange = document.querySelectorAll(".countColorChange"),
				
				deleteBtn = document.querySelector("#deleteBtn"),
				priceAndCount = document.querySelector("#priceAndCount"),
				changeBtn = document.querySelector("#changeBtn"),
				selectPrice = document.querySelector("#selectPrice"),
				selectCount = document.querySelector("#selectCount");
				
				
				changeBtn.addEventListener("click",function(){
					if(priceAndCount.value == "price"){
						selectPrice.style.display = "block";
						selectCount.style.display = "none";
					}
					if(priceAndCount.value == "count") {
						selectPrice.style.display = "none";
						selectCount.style.display = "block";
					}
					
				});
	
				
				
				deleteBtn.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";

						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					
					for(var index = 0; index < standardPrice.length; index++){
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						standardPriceAVG2[index].style.width = 0 + "px";
						standardCountAVG2[index].style.width = 0 + "px";
						
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG2[index].style.width = 0 + "px";
						superiorCountAVG2[index].style.width = 0 + "px";
						
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG2[index].style.width = 0 + "px";
						deluxeCountAVG2[index].style.width = 0 + "px";
						
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						royalPriceAVG2[index].style.width = 0 + "px";
						royalCountAVG2[index].style.width = 0 + "px";
						
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						totalPriceAVG2[index].style.width = 0 + "px";
						totalCountAVG2[index].style.width = 0 + "px";
						
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						priceColorChange2[index].style.background = "white";
						countColorChange2[index].style.background = "white";
						
					};
				});
				
				standardBtn.addEventListener("click", function(){

						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "inline";
						standardCountSUM.style.display = "inline";
					
	
					
					for(var index = 0; index < standardPrice.length; index++){
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
		
						standardPrice[index].style.width = standardPrice[index].value / 40000 + "px";
						standardCount[index].style.width = standardCount[index].value * 20 + "px";
					};
				});
				superiorBtn.addEventListener("click", function(){
	
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "inline";
						superiorCountSUM.style.display = "inline";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					for(var index = 0; index < standardPrice.length; index++){
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
			
						superiorPrice[index].style.width = superiorPrice[index].value / 40000 + "px";
						superiorCount[index].style.width = superiorCount[index].value * 20 + "px";
					};
				});
				deluxeBtn.addEventListener("click", function(){

		
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "inline";
						deluxeCountSUM.style.display = "inline";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";

					for(var index = 0; index < standardPrice.length; index++){
		
			
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
		
						deluxePrice[index].style.width = deluxePrice[index].value / 40000 + "px";
						deluxeCount[index].style.width = deluxeCount[index].value * 20 + "px";
					};
				});
				royalBtn.addEventListener("click", function(){
		
		
						totalPriceSUM.style.display = "none";
						totalCountSUM.style.display = "none";
						royalPriceSUM.style.display = "inline";
						royalCountSUM.style.display = "inline";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";
					

					for(var index = 0; index < standardPrice.length; index++){
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
		
						royalPrice[index].style.width = royalPrice[index].value / 40000 + "px";
						royalCount[index].style.width = royalCount[index].value * 20 + "px";
					};
				});
				totalBtn.addEventListener("click", function(){
					
	
						totalPriceSUM.style.display = "inline";
						totalCountSUM.style.display = "inline";
						royalPriceSUM.style.display = "none";
						royalCountSUM.style.display = "none";
						deluxePriceSUM.style.display = "none";
						deluxeCountSUM.style.display = "none";
						superiorPriceSUM.style.display = "none";
						superiorCountSUM.style.display = "none";
						standardPriceSUM.style.display = "none";
						standardCountSUM.style.display = "none";

					for(var index = 0; index < standardPrice.length; index++){
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
		
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
				
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
				
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
				
				
						totalPrice[index].style.width = totalPrice[index].value / 40000 + "px";
						totalCount[index].style.width = totalCount[index].value * 20 + "px";
					};
				
				});
				
				
				standardAVG.addEventListener("click", function(){
				
					AVG1.style.display = "inline";
					AVG2.style.display = "inline";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){

						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = standardPriceAVG[index].value / 40000 + "px";
						standardCountAVG[index].style.width = standardCountAVG[index].value * 20 + "px";
						priceColorChange[index].style.background = "red";
						countColorChange[index].style.background = "red";
					};
				});
				superiorAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "inline";
					AVG4.style.display = "inline";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = superiorPriceAVG[index].value / 40000 + "px";
						superiorCountAVG[index].style.width = superiorCountAVG[index].value * 20+ "px";
						priceColorChange[index].style.background = "orange";
						countColorChange[index].style.background = "orange";
					};
				});
				deluxeAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "inline";
					AVG6.style.display = "inline";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = deluxePriceAVG[index].value / 40000 + "px";
						deluxeCountAVG[index].style.width = deluxeCountAVG[index].value * 20 + "px";
						priceColorChange[index].style.background = "goldenrod";
						countColorChange[index].style.background = "goldenrod";
					};
				});
				royalAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "inline";
					AVG8.style.display = "inline";
					AVG9.style.display = "none";
					AVG10.style.display = "none";
				
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = royalPriceAVG[index].value / 40000 + "px";
						royalCountAVG[index].style.width = royalCountAVG[index].value * 20 + "px";
						priceColorChange[index].style.background = "green";
						countColorChange[index].style.background = "green";
					};
				});
				totalAVG.addEventListener("click", function(){
				
					AVG1.style.display = "none";
					AVG2.style.display = "none";
					AVG3.style.display = "none";
					AVG4.style.display = "none";
					AVG5.style.display = "none";
					AVG6.style.display = "none";
					AVG7.style.display = "none";
					AVG8.style.display = "none";
					AVG9.style.display = "inline";
					AVG10.style.display = "inline";
				
					for(var index = 0; index < standardPrice.length; index++){
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = totalPriceAVG[index].value / 40000 + "px";
						totalCountAVG[index].style.width = totalCountAVG[index].value * 20 + "px";
						priceColorChange[index].style.background = "blue";
						countColorChange[index].style.background = "blue";
					};
				});
	
	      };

		 
</script>


</body>

</html>
