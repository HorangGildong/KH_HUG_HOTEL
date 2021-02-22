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
		<div class="incomeGraph">
		<input class="test" type="text" value="${val }" /><br /><br />
 		<input class="test" type="text" value="20000000" /><br /><br />

		<input type="button" id="btnTest2" value="show" />
		</div>
		
<script>
income();
</script>
</body>
</html>