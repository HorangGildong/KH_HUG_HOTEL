<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<title>H.U.G HOTEL 제주</title>
</head>

<body>
	<div class="wrap" style="max-height: 100%; min-height: 0">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->

		<jsp:include page="modal.jsp" />

		<!--section start-->
		<section>
		
			<div style="margin: 150px 0px 200px 0px">
				<div class="container" style="width: 400px; text-align: center;">

					<h1 style="font-weight: 900; margin-bottom: 50px">비밀번호 변경</h1>

					<form class="form-horizontal" action="/changePassword" method="post">

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">현재 비밀번호</label>
							<div class="col-xs-8">
								<input type="password" class="form-control"
									name="memberPassword" id="inputPassword" placeholder="Password"	required>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">새 비밀번호</label>
							<div class="col-xs-8">
								<input type="password" class="form-control"
									name="newPassword" id="newPassword" placeholder="New Password" required>
								<div class="check_font" id="passwordCheck"></div>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">새 비밀번호 확인</label>
							<div class="col-xs-8">
								<input type="password" class="form-control"
									id="newPassword2"	placeholder="PasswordCheck" disabled required>
								<div class="check_font" id="passwordCheck2"></div>
							</div>
						</div>
						
						<br>
						
						<div class="col-xs-12">
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-lg btn-block"
									id="submitBtn" style="font-weight: bold;" disabled>
									확 인
								</button>
							</div>
						</div>

					</form>

				</div>
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

		$.fn.multiline = function(text) {
		    this.text(text);
		    this.html(this.html().replace(/\n/g,'<br/>'));
		    return this;
		}

		if(${isPasswordConfirm == false}) {
			$('.modal-title').text('비밀번호 불일치');
			$('.modal-body').multiline(`기존 비밀번호가 일치하지 않습니다. \n 다시 입력해 주세요.`);
			$(function() {
				$('#modal').modal({
					backdrop: 'static',
					keyboard: false
				});
			})
		} else if(${isPasswordConfirm == true}){
			$('.modal-title').text('비밀번호 변경');
			$('.modal-body').text('비밀번호가 성공적으로 변경되었습니다.');
			$('.btn-default').attr('onclick', "location.href='/'")
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
		
		var isPassword;
		
		$('#newPassword').keyup(function() {
			var pw = $('#newPassword').val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩';:₩/?]/gi);
			isPassword = false;
			if(pw == '') {
				$('#passwordCheck').text('');
				$('#newPassword2').attr('disabled', true);
			} else if(pw.length < 8) {
				$('#passwordCheck').text('8자리 이상으로 입력해주세요.');
				$('#passwordCheck').css('color', 'red');
				$('#newPassword2').attr('disabled', true);
			} else if(pw.search(/\s/) != -1) {
				$('#passwordCheck').text('비밀번호는 공백 없이 입력해주세요.');
				$('#passwordCheck').css('color', 'red');
				$('#newPassword2').attr('disabled', true);
			} else if(num < 0 || eng < 0 || spe < 0 ) {
				$('#passwordCheck').text('영문/숫자/특수문자를 혼합해주세요.');
				$('#passwordCheck').css('color', 'red');
				$('#newPassword2').attr('disabled', true);
			} else {
				$('#passwordCheck').text('사용가능한 비밀번호입니다.');
				$('#passwordCheck').css('color', 'blue');
				$('#newPassword2').attr('disabled', false);
			}
			$.fn.submitDisable();
		});
		
		/* $('#inputPassword2').attr('disabled') == undefined */
		
		$('#newPassword, #newPassword2').blur(function() { 
			var pw1=$('#newPassword').val();
			var pw2=$('#newPassword2').val();
			isPassword = false;
			if($('#inputPassword2').attr('disabled') != undefined  || pw2 == '')
			{
				$('#passwordCheck2').text('');
			} else if(pw1 == pw2) { 
				$('#passwordCheck2').text('비밀번호가 일치합니다.');
				$('#passwordCheck2').css('color', 'blue');
				isPassword = true;
			} else {
				$('#passwordCheck2').text('비밀번호가 일치하지 않습니다.');
				$('#passwordCheck2').css('color', 'red');
			}
			$.fn.submitDisable();
		});
		
		$.fn.submitDisable = function() {
			if(isPassword == true) {
				$('#submitBtn').attr('disabled', false);
			} else {
				$('#submitBtn').attr('disabled', true);
			}
		}	
		
	</script>

</body>

</html>
