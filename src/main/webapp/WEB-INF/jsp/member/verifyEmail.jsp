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
        
            <div class="text-center" style="float:none; margin:0 auto; width:400px; padding: 100px 0px 150px 0px;">

				<h1 style="font-weight: 900; margin-bottom: 50px">이메일 인증</h1>

				<form id="searchPassword" class="form-horizontal">

					<div class="form-group">
						<label for="inputEmail" class="col-xs-4 control-label">이메일(아이디)</label>
						<div class="col-xs-8">
							<input type="email" class="form-control memberInput"
								name="memberEmail" id="inputEmail" placeholder="Email" required>
							<span class="underline"></span>
						</div>
						<div class="check_font col-xs-offset-4 col-xs-8" id="emailCheck"></div>
					</div>
					
					<div class="form-group" style="margin-bottom: 25px">
						<label for="inputCode" class="col-xs-4 control-label">인증번호</label>
						<div class="col-xs-3" >
							<input type="text" class="form-control memberInput" autocomplete="off"
								name="code" id="inputCode" placeholder="Code" disabled>
							<span class="underline"></span>
						</div>
						<div class="col-xs-5">
							<input type="text" class="form-control" style="text-align: center; background-color: lavender;"
								name="time" id="time" disabled>
						</div>
					</div>
				</form>
						
				<br>

				<button class="btn btn-primary btn-lg btn-block" id="searchBtn" style="font-weight: bold;" disabled>
					인증번호 받기
				</button>

			</div>
			
		</section>
		<!--section end-->

		<!-- BaseModal -->
		<div class="modal fade" id="baseModal" tabindex="-1" role="dialog" 
		   aria-labelledby="modalLabel" aria-hidden="true" style="overflow-y: auto; margin-top: 200px; text-align: center; font-size: 150%;">
		</div>
		<!-- BaseModal -->


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

		var btnAction = 0;
		var email;
		var code;
		
		$('#inputEmail').blur(function() {
			var email = $('#inputEmail').val();
			var str = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			isEmail = false;
			$.ajax({
				url : '${pageContext.request.contextPath}/join/emailCheck?email=' + email,
				type : 'get',
				success : function(data) {
					if (email == '') {
						$('#emailCheck').text('');
					} else if (!str.test(email)) {
						$('#emailCheck').text('이메일 형식이 바르지 않습니다.');
						$('#emailCheck').css('color', 'red');
					} else if (data) {
						$('#emailCheck').text('사용중인 이메일입니다.');
						$('#emailCheck').css('color', 'red');
					} else {
						$('#emailCheck').text('사용가능한 이메일입니다.');
						$('#emailCheck').css('color', 'blue');
						$('#searchBtn').attr('disabled', false);
					}
					$.fn.submitDisable();
				}
			});
		});
		
		$('#searchBtn').click(function() {
			$('#baseModal').modal({ backdrop: 'static', keyboard: false });
			$('#searchBtn').attr('disabled', true);
			if(btnAction == 0) {
				btnAction = 2;
				email = $('#inputEmail').val();
				$.ajax({
					url : '${pageContext.request.contextPath}/searchPassword/searchId?&email=' + email,
					type : 'get',
					success : function(data1) {
						if(data1) {
							$('.modal-title').text('이메일 본인인증');
							$('.modal-body').multiline('이미 사용중인 이메일입니다.');
							$('#modal').modal({ backdrop: 'static', keyboard: false });
							btnAction = 0;
							$('#baseModal').modal("hide");
						} else {
							$('.modal-title').text('이메일 본인인증');
							$('.modal-body').multiline('입력하신 이메일로 인증번호를 전송하였습니다. \n 전송받은 인증번호를 3분 이내에 입력해주세요.');
							$('#modal').modal({ backdrop: 'static', keyboard: false });
							$('#searchBtn').text('확 인');
							$('#inputId').attr('disabled', true);
							$('#inputEmail').attr('disabled', true);
							$('#inputCode').attr('disabled', false);
							$('#searchBtn').attr('id', 'newSearchBtn');
							$.fn.countdown();
							btnAction = 1;
							$('#baseModal').modal("hide");
						}
					}
				})
			} else if(btnAction == 1) {
				btnAction = 2;
				$('#searchBtn').attr('disabled', true);
				email = $('#inputEmail').val();
				code = $('#inputCode').val();
				$.ajax({
					url : '${pageContext.request.contextPath}/searchPassword/compareCode?code=' + code + '&email=' + email,
					type : 'get',
					success : function(data2) {
						if(data2) {
							$('#okBtn').attr('style', 'display: none;');
							$('#goLoginPage').attr('style', 'display: inline;');
							$('.modal-title').text('이메일 본인인증');
							$('.modal-body').multiline('인증되었습니다. \n 회원가입 절차를 진행합니다.');
							$('#modal').modal({ backdrop: 'static', keyboard: false });
							$('#baseModal').modal("hide");
						} else {
							$('.modal-title').text('이메일 본인인증');
							$('.modal-body').multiline('인증번호가 일치하지 않습니다. \n 다시 입력해주세요.');
							$('#modal').modal({ backdrop: 'static', keyboard: false });
							btnAction = 1;
							$('#baseModal').modal("hide");
						}
					}
				})
			}
			$('#searchBtn').attr('disabled', false);
		});
		
		$.fn.showModal = function() {
			$('#modal').modal({	backdrop: 'static',	keyboard: false	});
		}
		
		$.fn.multiline = function(text) {
		    this.text(text);
		    this.html(this.html().replace(/\n/g,'<br/>'));
		    return this;
		}

		$.fn.countdown = function() {
			var start = new Date();
			var now;
			var remaining;
			var submit = setInterval(function(){
				now = new Date();
				remaining = 180 - Math.round((now.getTime() - start) / 1000);
				remainingMinutes = $.fn.numberPad(parseInt(remaining / 60));
				remainingSeconds = $.fn.numberPad(remaining % 60);
				$('#time').val("남은시간 " + remainingMinutes + ":" + remainingSeconds);
				if(remaining == 0) {
					clearInterval(submit);
				}
			}, 1000);
		}
		
		$.fn.numberPad = function(n) {
		    n = n + '';
		    return n.length >= 2 ? n : '0' + n;
		}

		$('#goLoginPage').on('click', function() {
			$.fn.post();
		})
		
		$.fn.post = function() {
			var form = $('<form></form>');
			form.attr('method', 'post')
				.attr('action', '/join');
			var field = $('<input></input>');
			field.attr('type', 'hidden')
				.attr('name', 'memberEmail')
				.attr("value", email);
			form.append(field);
			$(document.body).append(form);
			form.submit();
		}
		
	</script>

</body>

</html>
