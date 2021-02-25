<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


		<div class="boxWrap">
		<input style="background: red;" readonly type="text" /><span class="standardBox" id="standardBtn">STANDARD</span>|<span class="standardBox" id="standardAVG">AVG</span>
		<input style="background: orange;" readonly type="text" /><span class="superiorBox" id="superiorBtn">SUPERIOR</span>|<span class="superiorBox" id="superiorAVG">AVG</span>
		<input style="background: goldenrod;" readonly type="text" /><span class="deluxeBox" id="deluxeBtn">DELUXE</span>|<span class="deluxeBox" id="deluxeAVG" >AVG</span>
		<input style="background: green;" readonly class="royalBox" type="text" /><span class="royalBox" id="royalBtn">ROYAL</span>|<span class="royalBox" id="royalAVG">AVG</span>
		<input style="background: blue;" readonly type="text" /><span class="totalBox" id="totalBtn">TOTAL</span>|<span class="totalBox" id="totalAVG">AVG</span>
		<input style="background: black;" readonly type="text" /><span class="deleteBox" id="deleteBtn">DELETE</span>
		</div>



		<div class="incomeGraph">
		<c:if test="${!empty totalPriceList }">
			<div class="wrapLeft">
			<div class ="totalBox">
			<span style="color: white;">hide</span>
			</div>
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
				<select id="priceAndCount">
					<option value="price">PRICE</option>
					<option value="count">COUNT</option>
				</select>
				<span id="changeBtn">CHANGE</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="font-size: 30px;">${date.selectDate }</span>
				
				
				
				
				<div id="selectPrice">
				
				<div class ="totalBox">
				<span>TOTAL PRICE&nbsp;</span>
				<span style="color: red; display: none;" id="standardPriceSUM">= ${incomeStatistics.standardTotalPrice }</span>
				<span style="color: orange; display: none;" id="superiorPriceSUM">= ${incomeStatistics.superiorTotalPrice }</span>
				<span style="color: goldenrod; display: none;" id="deluxePriceSUM">= ${incomeStatistics.deluxeTotalPrice }</span>
				<span style="color: green; display: none;" id="royalPriceSUM">= ${incomeStatistics.royalTotalPrice }</span>
				<span style="color: blue; display: none;" id="totalPriceSUM">= ${incomeStatistics.totalSumPrice }</span>
								
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<span>AVG PRICE&nbsp;</span>
				<span style="color: red; display: none;" id="AVG2">= ${incomeStatistics.standardAveragePrice }</span>
				<span style="color: orange; display: none;" id="AVG4">= ${incomeStatistics.superiorAveragePrice }</span>
				<span style="color: goldenrod; display: none;" id="AVG6">= ${incomeStatistics.deluxeAveragePrice }</span>
				<span style="color: green; display: none;" id="AVG8">= ${incomeStatistics.royalAveragePrice }</span>
				<span style="color: blue; display: none;" id="AVG10">= ${incomeStatistics.totalAveragePrice }</span>
				</div>
				
				
				<c:forEach var="index" begin="0" end="${fn:length(totalPriceList)-1}">
				<input readonly class="standardPrice" type="text" value="${standardPriceList[index] }" />
				<input readonly class="superiorPrice" type="text" value="${superiorPriceList[index] }" />
				<input readonly class="deluxePrice" type="text" value="${deluxePriceList[index] }" />
				<input readonly class="royalPrice" type="text" value="${royalPriceList[index] }" />
				<input readonly class="totalPrice" type="text" value="${totalPriceList[index] }" />
				<br />
				<input readonly class="standardPriceAVG" type="text" value="${incomeStatistics.standardAveragePrice }" />
				<input readonly class="superiorPriceAVG" type="text" value="${incomeStatistics.superiorAveragePrice }" />
				<input readonly class="deluxePriceAVG" type="text" value="${incomeStatistics.deluxeAveragePrice }" />
				<input readonly class="royalPriceAVG" type="text" value="${incomeStatistics.royalAveragePrice }" />
				<input readonly class="totalPriceAVG" type="text" value="${incomeStatistics.totalAveragePrice }" />
				<input readonly class="priceColorChange" type="text" value="" />
				<br />
				</c:forEach>
		
				</div>
				
				
				
				
				
				<div id="selectCount" style="display: none;">
				
				
				<div class ="totalBox">
				<span>TOTAL COUNT&nbsp;</span>
				<span style="color: red; display: none;" id="standardCountSUM">= ${incomeStatistics.standardTotalCount }</span>
				<span style="color: orange; display: none;" id="superiorCountSUM">= ${incomeStatistics.superiorTotalCount }</span>
				<span style="color: goldenrod; display: none;" id="deluxeCountSUM">= ${incomeStatistics.deluxeTotalCount }</span>
				<span style="color: green; display: none;" id="royalCountSUM">= ${incomeStatistics.royalTotalCount }</span>
				<span style="color: blue; display: none;" id="totalCountSUM">= ${incomeStatistics.totalSumCount }</span>
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<span>AVG COUNT&nbsp;</span>
				<span style="color: red; display: none;" id="AVG1">= ${incomeStatistics.standardAverageCount }</span>
				<span style="color: orange; display: none;" id="AVG3">= ${incomeStatistics.superiorAverageCount }</span>
				<span style="color: goldenrod; display: none;" id="AVG5">= ${incomeStatistics.deluxeAverageCount }</span>
				<span style="color: green; display: none;" id="AVG7">= ${incomeStatistics.royalAverageCount }</span>
				<span style="color: blue; display: none;" id="AVG9">= ${incomeStatistics.totalAverageCount }</span>
				</div>
				
				
				<c:forEach var="index" begin="0" end="${fn:length(totalCountList)-1}">
				<input readonly class="standardCount" type="text" value="${standardCountList[index] }" />
				<input readonly class="superiorCount" type="text" value="${superiorCountList[index] }" />
				<input readonly class="deluxeCount" type="text" value="${deluxeCountList[index] }" />
				<input readonly class="royalCount" type="text" value="${royalCountList[index] }" />
				<input readonly class="totalCount" type="text" value="${totalCountList[index] }" />
				<br />
				<input readonly class="standardCountAVG" type="text" value="${incomeStatistics.standardAverageCount }" />
				<input readonly class="superiorCountAVG" type="text" value="${incomeStatistics.superiorAverageCount }" />
				<input readonly class="deluxeCountAVG" type="text" value="${incomeStatistics.deluxeAverageCount }" />
				<input readonly class="royalCountAVG" type="text" value="${incomeStatistics.royalAverageCount }" />
				<input readonly class="totalCountAVG" type="text" value="${incomeStatistics.totalAverageCount }" />
				<input readonly class="countColorChange" type="text" value="" />
				<br />
				</c:forEach>
				</div>




			</div>
		</c:if>	
		</div>




<script>
monthly();
</script>
</body>
</html>