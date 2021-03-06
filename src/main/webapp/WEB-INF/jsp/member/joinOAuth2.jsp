<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="member"/>
</sec:authorize>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/css/bootstrapcss/nomalize.css">

<!-- <link rel="stylesheet" href="/css/bootstrapcss/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<link rel="stylesheet" href="/css/styles.css">

<link rel="shortcut icon"
	href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">

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

<link rel="stylesheet" href="/css/member/inputbox.css">

<title>H.U.G HOTEL 제주</title>
</head>

<body>
	<div class="wrap">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->

		<%-- <jsp:include page="modal.jsp" /> --%>

        <!--section start-->
        <section>     
        
            <div class="text-center" style="float:none; margin:0 auto; width:400px; padding: 100px 0px 150px 0px;">

				<h1 style="font-weight: 900; margin-bottom: 50px">Google 계정  등록</h1>
				
				<form class="form-horizontal" action="/joinProc" method="post">
				
					<div class="form-group">
						<label for="inputEmail" class="col-xs-4 control-label">이메일(아이디)</label>
						<div class="col-xs-8">
							<input type="email" class="form-control" name="Email"
								id="inputEmail" value="${email}" disabled>
						</div>
					</div>
					
					<input type="hidden" name="memberId" value="testID">
						
					<div class="form-group">
						<label for="inputNick" class="col-xs-4 control-label">*닉네임</label>
						<div class="col-xs-8">
							<input type="text" class="form-control memberInput" name="memberNick" autocomplete="off"
								id="inputNickname" placeholder="Nickname" required>
							<span class="underline"></span>
						</div>
						<div class="check_font col-xs-offset-4 col-xs-8" id="nickCheck"></div>
					</div>

					<br>

					<div class="form-group" style="margin-bottom: 10px;">
						<div class="checkbox">
							<label class="checkbox-inline col-xs-5"> 
								<input type="checkbox" id="chk-terms1" value="chk" required>
								(필수) 동의합니다.
							</label>
						</div>
					</div>

					<div class="panel panel-warning" style="margin-bottom: 10px; border-color: #72a5d3;">
						<div class="panel-heading" style="background-color: #bedae8; border-color: #72a5d3">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#terms1"> 이용약관 (자세히 보기) </a>
							</h4>
						</div>
						<div id="terms1" class="panel-collapse collapse">
							<div id="text1" class="panel-body" style="text-align: left;"></div>
						</div>
					</div>

					<div class="form-group" style="margin-bottom: 10px;">
						<div class="checkbox">
							<label class="checkbox-inline col-xs-5">
								<input type="checkbox" name="memberAgree" id="chk-terms2" value="chk">
								(선택) 동의합니다.
							</label>
						</div>
					</div>

					<div class="panel panel-warning" style="border-color: #72a5d3;">
						<div class="panel-heading" style="background-color: #bedae8; border-color: #72a5d3">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#terms2"  > 마케팅 수신 동의 (자세히 보기) </a>
							</h4>
						</div>
						<div id="terms2" class="panel-collapse collapse">
							<div id="text2" class="panel-body" style="text-align: left;"></div>
						</div>
					</div>

					<br>

					<div class="col-xs-12">
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block" id="submitBtn" 
								style="font-weight: bold;">확 인</button>
						</div>
					</div>
					
					<input type="hidden" name="memberEmail" value="${email}">
					<input type="hidden" name="memberKey" value="${key}">

				</form>

			</div>

		</section>
		<!--section end-->

		<!-- Modal -->
		<div class="modal fade" id="modal" tabindex="-1" role="dialog" 
		   aria-labelledby="modalLabel" aria-hidden="true" style="overflow-y: auto; margin-top: 200px; text-align: center; font-size: 150%;">
		   <div class="modal-dialog">
		      <div class="modal-content">
		         <div class="modal-header">
		            <h4 class="modal-title" id="modalLabel">
		              	 회원가입 성공
		            </h4>
		         </div>
		         <div class="modal-body">
		            	${member.nick}님의 회원가입을 축하드립니다. <br>
		            	항상 최선을 다하는 HUG HOTEL이 되겠습니다. <br>
		         </div>
		         <div class="modal-footer" style="text-align: center;">
		            <button type="button" class="btn btn-default" id="okBtn" data-dismiss="modal" style="margin-right: 15px">
		            	확인
		            </button>
		            <button type="button" class="btn btn-default" id="goLoginPage" data-dismiss="modal" style="margin-right: 15px; display: none;">
		            	확인
		            </button>
		         </div>
		      </div>
		   </div>
		</div>
		<!-- Modal -->
		
		<!--footer start-->
		<jsp:include page="../common/footer.jsp" />
		<!--footer end-->
		
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="/js/bootstrapjs/bootstrap.min.js"></script>
	<script src="/js/header.js"></script>
	<script src="/js/index.js"></script>

	<!-- 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->

	<script>
	
		$(function() {
			$('#terms1').collapse({
				toggle : false
			})
		});
		$(function() {
			$('#terms2').collapse({
				toggle : false
			})
		});
		
		$.fn.multiline = function(text) {
		    this.text(text);
		    this.html(this.html().replace(/\n/g,'<br/>'));
		    return this;
		}
	
		$('#inputNickname').blur(function() {
			var nick = $('#inputNickname').val();
			$('#submitBtn').attr('disabled', false);
			$.ajax({
				url : '${pageContext.request.contextPath}/join/nickCheck?nick=' + nick,
				type : 'get',
				success : function(data) {
					if (nick == '') {
						$('#nickCheck').text('');
					} else if (data) {
						$('#nickCheck').text('사용중인 닉네임입니다.');
						$('#nickCheck').css('color', 'red');
						$('#submitBtn').attr('disabled', true);
					} else {
						$('#nickCheck').text('사용가능한 닉네임입니다.');
						$('#nickCheck').css('color', 'blue');
						isNick = true;
					}	
				}
			});
		});
		
		$('.modal-title').text('Google 계정 회원가입');
		$('.modal-body').multiline('Google 계정이  등록되지 않았습니다. \n 추가정보를 입력하고 등록을 완료해주십시오.');
		
		
		$(function() {
			$('#modal').modal({
				backdrop: 'static',
				keyboard: false
			});
		})
		
		
		$('#text1').multiline(`
			제 1조 (목적)
			본 약관은 HUG HOTEL(이하 '당 사이트')가 제공하는 모든 서비스(이하 '서비스')의 이용조건 및 절차, 이용자와 당 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.
		
			제 2조 (약관의 명시와 개정)
			당 사이트는 이 약관의 내용과 관리자의 성명, 개인정보 보호책임자의 성명, 연락처(전화, 전자우편 주소 등) 등을 이용자가 알 수 있도록 당 사이트의 초기 서비스화면(전면)에 게시합니다.
			당 사이트는 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 개인정보보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
			당 사이트가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 당 사이트의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.
			당 사이트는 이용자가 본 약관 내용에 동의하는 것을 조건으로 이용자에게 서비스를 제공할 것이며, 이용자가 본 약관의 내용에 동의하는 경우, 당 사이트의 서비스 제공 행위 및 이용자의 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다.
			이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 당 사이트에서 책임지지 않습니다.
			본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 방송통신심의위원회 정보통신에 관한 심의규정, 저작권법 및 기타 관련 법령의 규정에 의합니다.
		
			제 3조 (이용계약의 성립)
			이용계약은 이용자가 본 이용약관 내용에 대한 동의와 이용신청에 대하여 당 사이트의 이용승낙으로 성립합니다.
			본 이용약관에 대한 동의는 이용신청 당시 해당 당 사이트의 '동의함' 또는 '신청(등록)'버튼을 누름으로써 의사표시를 합니다.
				
			제 4조 (개인정보 사용에 대한 동의)
			이용자의 개인정보에 대해서는 당 사이트의 개인정보 처리방침이 적용됩니다. 다만, 당 사이트 이외의 링크된 사이트에서는 당 사이트의 개인정보 처리방침이 적용되지 않습니다.
		`);
			
			
		$('#text2').multiline(`
			1. 광고성 정보의 이용목적
			HUG HOTEL이 제공하는 이용자 맞춤형 서비스 및 상품 추천, 각종 경품 행사, 이벤트 등의 광고성 정보를 전자우편이나 서신우편, 문자(SMS 또는 카카오 알림톡), 푸시, 전화 등을 통해 이용자에게 제공합니다.
			- 마케팅 수신 동의는 거부하실 수 있으며 동의 이후에라도 고객의 의사에 따라 동의를 철회할 수 있습니다. 동의를 거부하시더라도 HUG HOTEL가 제공하는 서비스의 이용에 제한이 되지 않습니다. 단, 할인, 이벤트 등의 마케팅 정보 안내 서비스가 제한됩니다.
		
			2. 미동의 시 불이익 사항
			개인정보보호법 제22조 제5항에 의해 선택정보 사항에 대해서는 동의 거부하시더라도 서비스 이용에 제한되지 않습니다. 단, 할인, 이벤트 등의 마케팅 정보 안내 서비스가 제한됩니다.
	
			3. 서비스 정보 수신 동의 철회
			HUG HOTEL에서 제공하는 마케팅 정보를 원하지 않을 경우 ‘내 정보 수정 > 추가 정보’에서 철회를 요청할 수 있습니다. 또한 향후 마케팅 활용에 새롭게 동의하고자 하는 경우에는 ‘마이페이지 - 회원 정보 수정’에서 동의하실 수 있습니다.
	
			시행일자 : 2021. 02. 26
		`);
		
	</script>

</body>

</html>
