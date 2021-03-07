<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="member"/>
</sec:authorize>
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

		<jsp:include page="modal.jsp" />

        <!--section start-->
        <section>     
        
            <div class="text-center" style="float:none; margin:0 auto; width:400px; padding: 100px 0px 100px 0px;">

				<h1 style="font-weight: 900; margin-bottom: 50px">회원정보 수정</h1>

				<form class="form-horizontal" action="/update" method="post">

					<div class="form-group">
						<label for="inputEmail" class="col-xs-4 control-label">이메일(아이디)</label>
						<div class="col-xs-8">
							<input type="email" class="form-control memberInput" value="${memberDto.memberEmail}"
								name="email" id="inputEmail" placeholder="Email" disabled>
							<div class="check_font" id="emailCheck"></div>
							<input type="hidden" value="${memberDto.memberEmail}" name="memberEmail">
						</div>
					</div>

					<div class="form-group">
						<label for="inputName" class="col-xs-4 control-label">이름</label>
						<div class="col-xs-8">
							<input type="text" class="form-control memberInput" value="${memberDto.memberName}" autocomplete="off"
								name="memberName" id="inputName" placeholder="Name">
							<span class="underline"></span>
						</div>
					</div>

					<div class="form-group">
						<label for="inputNick" class="col-xs-4 control-label">*닉네임</label>
						<div class="col-xs-8">
							<input type="text" class="form-control memberInput" value="${memberDto.memberNick}" autocomplete="off"
								name="memberNick" id="inputNickname" placeholder="Nickname" required>
							<span class="underline"></span>
						</div>
						<div class="check_font col-xs-offset-4 col-xs-8" id="nickCheck"></div>
					</div>

					<div class="form-group">
						<label for="inputPhone" class="col-xs-4 control-label">전화번호</label>
						<div class="col-xs-8">
							<input type="text" class="form-control memberInput" maxlength="13" value="${memberDto.memberPhone}"
								name="memberPhone" id="inputPhone" placeholder="PhoneNumber" autocomplete="off">
							<span class="underline"></span>
						</div>
					</div>

					<div class="form-group">
						<label for="selectBox" class="col-xs-4 control-label"> 마케팅 수신동의</label>
						<div class="col-xs-8">
				            <label class="radio-inline">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="chk"
								${(memberDto.memberAgree == 'chk') ? 'checked' : ''}> 동의함 &nbsp; &nbsp; &nbsp; 
				            </label> 
				            <label class="radio-inline">
				               <input type="radio" name="optionsRadios" id="optionsRadios1"
								${(memberDto.memberAgree == 'chk') ? '' : 'checked'}> 동의하지 않음 &nbsp; &nbsp; &nbsp;
				            </label> 
                       	</div>  
					</div>
					
					<div class="col-xs-12" style="margin: 20px 10px 0px 0px;">
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block"
								id="submitBtn" style="font-weight: bold;">
								확 인
							</button>
						</div>
					</div>
					
					<div class="text-center" style="font-size: 16px; font-weight: bold;">
						<a href="/changePassword">비밀번호 변경</a>&nbsp; &nbsp;  |  &nbsp; &nbsp;<a href="/unRegister">회원탈퇴</a>
					</div>

				</form>

			</div>
		</section>
		<!--section end-->

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
		var autoHypenPhone = function(str) {
			str = str.replace(/[^0-9]/g, '');
			var tmp = '';
			if (str.length < 4) {
				return str;
			} else if (str.length < 7) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3);
				return tmp;
			} else if (str.length < 11) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 3);
				tmp += '-';
				tmp += str.substr(6);
				return tmp;
			} else {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 4);
				tmp += '-';
				tmp += str.substr(7);
				return tmp;
			}
			return str;
		}
		var phoneNum = document.getElementById('inputPhone');
		phoneNum.onkeyup = function() {
			this.value = autoHypenPhone(this.value);
		}

		$('#inputNickname').blur(function() {
			var nick = $('#inputNickname').val();
			$('#submitBtn').attr('disabled', true);
			$.ajax({
				url : '${pageContext.request.contextPath}/join/nickCheck?nick=' + nick,
				type : 'get',
				success : function(data) {
					if (nick == '') {
						$('#nickCheck').text('');
					} else if (nick == '${memberDto.memberNick}') {
						$('#nickCheck').text('');
						$('#submitBtn').attr('disabled', false);
					} else if (data) {
						$('#nickCheck').text('사용중인 닉네임입니다.');
						$('#nickCheck').css('color', 'red');
					} else {
						$('#nickCheck').text('사용가능한 닉네임입니다.');
						$('#nickCheck').css('color', 'blue');
						$('#submitBtn').attr('disabled', false);
					} 
				}
			});
		});
		
		$.fn.multiline = function(text) {
		    this.text(text);
		    this.html(this.html().replace(/\n/g,'<br/>'));
		    return this;
		}

		if(${isUpdated == true}) {
			$('.modal-title').text('회원정보 수정');
			$('.modal-body').text(`${member.nick} 님의 회원정보를 수정하였습니다.`);
			$('.btn-default').attr('onclick', "location.href='/'");
			$(function() {
				$('#modal').modal({
					backdrop: 'static',
					keyboard: false
				});
			})
		}
		
		$.fn.showModal = function() {
			$('#modal').modal({	backdrop: 'static',	keyboard: false	});
		}
		
	</script>

</body>

</html>
