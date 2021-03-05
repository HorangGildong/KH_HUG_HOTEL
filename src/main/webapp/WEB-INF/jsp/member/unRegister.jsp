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
	<div class="wrap">
		<!--header-->
		<jsp:include page="../common/header.jsp" />
		<!--header end-->

		<!--section start-->
		<section>
		
			<jsp:include page="modal.jsp" />
			
			<div style="margin-top: 100px">
				<div class="container" style="width: 400px; text-align: center;">

					<h1 style="font-weight: 900; margin-bottom: 50px">회원탈퇴</h1>

					<form class="form-horizontal" id="form" action="/unRegister" method="post">

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">비밀번호</label>
							<div class="col-xs-8">
								<input type="password" class="form-control"
									name="memberPassword" id="inputPassword" placeholder="Password"	required>
								<input type="text" style="display:none;">
								<!-- input 태그가 하나만 있으면 엔터키 누를 때 submit됨 -->
							</div>
						</div>
						
						<br>
						
						<div class="col-xs-12">
							<div class="form-group">
								<button type="button" class="btn btn-primary btn-lg btn-block"
									id="okButton" style="font-weight: bold;">
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
		
		$('#okButton').click(function() {
			$('.modal-title').text('회원탈퇴');
			$('.modal-body').multiline(`회원탈퇴 후 복구가 불가능합니다. \n 정말로 탈퇴 하시겠습니까?`);
			$('.btn-default').click(function() {
				$('#form').submit();
			})
			$(function() {
				$('#modal').modal({
					backdrop: 'static',
					keyboard: false
				});
			})
		})
		
		if (${isPasswordConfirm == false}) {
			$('.modal-title').text('비밀번호 불일치');
			$('.modal-body').multiline(`비밀번호가 일치하지 않습니다. \n 다시 입력해 주세요.`);
			$(function() {
				$('#modal').modal({
					backdrop: 'static',
					keyboard: false
				});
			})
		} else if(${isPasswordConfirm == true}){
			$('.modal-title').text('회원탈퇴');
			$('.modal-body').text('그동안 HUG HOTEL을 이용해주셔서 감사합니다.');
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
