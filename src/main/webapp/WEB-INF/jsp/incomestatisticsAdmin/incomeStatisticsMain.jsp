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
		<input style="background: red;" readonly type="text" /><span class="standardBox" id="standardBtn">STANDARD</span>|<span class="standardBox" id="standardAVG">AVG</span>
		<input style="background: orange;" readonly type="text" /><span class="superiorBox" id="superiorBtn">SUPERIOR</span>|<span class="superiorBox" id="superiorAVG">AVG</span>
		<input style="background: goldenrod;" readonly type="text" /><span class="deluxeBox" id="deluxeBtn">DELUXE</span>|<span class="deluxeBox" id="deluxeAVG" >AVG</span>
		<input style="background: green;" readonly class="royalBox" type="text" /><span class="royalBox" id="royalBtn">ROYAL</span>|<span class="royalBox" id="royalAVG">AVG</span>
		<input style="background: blue;" readonly type="text" /><span class="totalBox" id="totalBtn">TOTAL</span>|<span class="totalBox" id="totalAVG">AVG</span>
		<input style="background: black;" readonly type="text" /><span class="deleteBox" id="deleteBtn">DELETE</span>
		</div>



		<div class="incomeGraph">
			<div class="wrapLeft">
				<p>1월</p><br />
				<p>2월</p><br />
				<p>3월</p><br />
				<p>4월</p><br />
				<p>5월</p><br />
				<p>6월</p><br />
				<p>7월</p><br />
				<p>8월</p><br />
				<p>9월</p><br />
				<p>10월</p><br />
				<p>11월</p><br />
				<p>12월</p><br />
			</div>
			<div class="wrapRight">
				<h1>PRICE</h1>
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				<input readonly class="standardPrice" type="text" value="1250000" />
				<input readonly class="superiorPrice" type="text" value="1250000" />
				<input readonly class="deluxePrice" type="text" value="1250000" />
				<input readonly class="royalPrice" type="text" value="1250000" />
				<input readonly class="totalPrice" type="text" value="5000000" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="2500000" />
				<input readonly class="superiorPriceAVG" type="text" value="2500000" />
				<input readonly class="deluxePriceAVG" type="text" value="2500000" />
				<input readonly class="royalPriceAVG" type="text" value="2500000" />
				<input readonly class="totalPriceAVG" type="text" value="2500000" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				
				<div class ="totalBox">
				<span>TOTAL COUNT = </span>
				<span style="color: red; display: none;" id="standardPriceSUM">1200000000</span>
				<span style="color: orange; display: none;" id="superiorPriceSUM">1200000000</span>
				<span style="color: goldenrod; display: none;" id="deluxePriceSUM">1200000000</span>
				<span style="color: green; display: none;" id="royalPriceSUM">1200000000</span>
				<span style="color: blue; display: none;" id="totalPriceSUM">1200000000</span>
				</div>


			</div>
			<div class="wrapRight2">
				<h1>COUNT</h1>
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				<input readonly class="standardCount" type="text" value="1250000" />
				<input readonly class="superiorCount" type="text" value="1250000" />
				<input readonly class="deluxeCount" type="text" value="1250000" />
				<input readonly class="royalCount" type="text" value="1250000" />
				<input readonly class="totalCount" type="text" value="5000000" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="2500000" />
				<input readonly class="superiorCountAVG" type="text" value="2500000" />
				<input readonly class="deluxeCountAVG" type="text" value="2500000" />
				<input readonly class="royalCountAVG" type="text" value="2500000" />
				<input readonly class="totalCountAVG" type="text" value="2500000" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				
				<div class ="totalBox">
				<span>TOTAL COUNT = </span>
				<span style="color: red; display: none;" id="standardCountSUM">1200000000</span>
				<span style="color: orange; display: none;" id="superiorCountSUM">1200000000</span>
				<span style="color: goldenrod; display: none;" id="deluxeCountSUM">1200000000</span>
				<span style="color: green; display: none;" id="royalCountSUM">1200000000</span>
				<span style="color: blue; display: none;" id="totalCountSUM">1200000000</span>
				</div>
				
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

	 	let = 	standardBtn = document.querySelector("#standardBtn"),
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
				
				deleteBtn = document.querySelector("#deleteBtn");
	
				
				
				deleteBtn.addEventListener("click", function(){

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
						
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						
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
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						standardPrice[index].style.width = standardPrice[index].value / 15000 + "px";
						standardCount[index].style.width = standardPrice[index].value / 15000 + "px";
					};
				});
				superiorBtn.addEventListener("click", function(){
	
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
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						superiorPrice[index].style.width = superiorPrice[index].value / 15000 + "px";
						superiorCount[index].style.width = superiorPrice[index].value / 15000 + "px";
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
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						totalPrice[index].style.width = 0 + "px";
						totalCount[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						deluxePrice[index].style.width = deluxePrice[index].value / 15000 + "px";
						deluxeCount[index].style.width = deluxePrice[index].value / 15000 + "px";
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
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPrice[index].style.width = 0 + "px";
						standardCount[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						priceColorChange[index].style.background = "white";
						countColorChange[index].style.background = "white";
						royalPrice[index].style.width = royalPrice[index].value / 15000 + "px";
						royalCount[index].style.width = royalPrice[index].value / 15000 + "px";
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
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPrice[index].style.width = 0 + "px";
						superiorCount[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePrice[index].style.width = 0 + "px";
						deluxeCount[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPrice[index].style.width = 0 + "px";
						royalCount[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						totalPrice[index].style.width = totalPrice[index].value / 15000 + "px";
						totalCount[index].style.width = totalPrice[index].value / 15000 + "px";
					};
				
				});
				
				
				standardAVG.addEventListener("click", function(){
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						standardCountAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						priceColorChange[index].style.background = "red";
						countColorChange[index].style.background = "red";
					};
				});
				superiorAVG.addEventListener("click", function(){
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						superiorCountAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						priceColorChange[index].style.background = "orange";
						countColorChange[index].style.background = "orange";
					};
				});
				deluxeAVG.addEventListener("click", function(){
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						deluxeCountAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						priceColorChange[index].style.background = "goldenrod";
						countColorChange[index].style.background = "goldenrod";
					};
				});
				royalAVG.addEventListener("click", function(){
					for(var index = 0; index < standardPrice.length; index++){
						totalPriceAVG[index].style.width = 0 + "px";
						totalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						royalPriceAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						royalCountAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						priceColorChange[index].style.background = "green";
						countColorChange[index].style.background = "green";
					};
				});
				totalAVG.addEventListener("click", function(){
					for(var index = 0; index < standardPrice.length; index++){
						royalPriceAVG[index].style.width = 0 + "px";
						royalCountAVG[index].style.width = 0 + "px";
						standardPriceAVG[index].style.width = 0 + "px";
						standardCountAVG[index].style.width = 0 + "px";
						superiorPriceAVG[index].style.width = 0 + "px";
						superiorCountAVG[index].style.width = 0 + "px";
						deluxePriceAVG[index].style.width = 0 + "px";
						deluxeCountAVG[index].style.width = 0 + "px";
						totalPriceAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						totalCountAVG[index].style.width = standardPrice[index].value / 15000 + "px";
						priceColorChange[index].style.background = "blue";
						countColorChange[index].style.background = "blue";
					};
				});
	
	

		 
</script>


</body>

</html>
