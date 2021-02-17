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
			<div style="margin: 100px 0px 100px 0px">
				<div class="container" style="width: 400px; text-align: center;">
				
				<h1 style="font-weight: 900; margin-bottom: 50px">회원가입</h1>

					<form class="form-horizontal">

						<div class="form-group">
							<label for="inputEmail" class="col-xs-4 control-label">아이디</label>
							<div class="col-xs-8">
								<input type="email" class="form-control" id="inputEmail"
									placeholder="E-mail">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">비밀번호</label>
							<div class="col-xs-8">
								<input type="password" class="form-control" id="inputPassword"
									placeholder="Password">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">비밀번호
								확인</label>
							<div class="col-xs-8">
								<input type="password" class="form-control" id="inputPassword"
									placeholder="Password">
							</div>
						</div>

						<div class="form-group">
							<label for="inputNick" class="col-xs-4 control-label">닉네임</label>
							<div class="col-xs-8">
								<input type="text" class="form-control" id="inputNickname"
									placeholder="Nick">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPhone" class="col-xs-4 control-label">전화번호</label>
							<div class="col-xs-8">
								<input type="text" class="form-control" id="inputPhone"
									placeholder="PhoneNumber">
							</div>
						</div>

						<div class="form-group">
							<label for="inputBirth" class="col-xs-4 control-label">생년월일</label>
							<div class="col-xs-8">
								<input type="date" class="form-control" id="inputBirth">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-4 control-label">성별</label> <label
								class="radio-inline col-xs-offset-1 col-xs-2"> <input
								type="radio" name="inputGender" id="inputGender" value="male"
								checked> 남
							</label> <label class="radio-inline col-xs-offset-1 col-xs-2"> <input
								type="radio" name="inputGender" id="inputGender" value="female">
								여
							</label>
						</div>

						<br>

						<div class="form-group" style="margin-bottom: 10px;">
							<div class="checkbox">
								<label class="checkbox-inline col-xs-4"> <input
									type="checkbox" id="chk-terms1" value="chk"> 동의합니다.
								</label>
							</div>
						</div>

						<div class="panel panel-warning" style="margin-bottom: 10px;">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#terms1"> 이용약관 (자세히 보기) </a>
								</h4>
							</div>
							<div id="terms1" class="panel-collapse collapse">
								<div class="panel-body" style="text-align: left;">Lorem
									ipsum dolor sit amet, consectetur adipiscing elit. Nunc
									suscipit velit sit amet tristique tincidunt. Fusce dapibus
									tortor ut est ornare porttitor. Aliquam auctor bibendum
									posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere
									pharetra auctor. Pellentesque et eleifend nibh, a bibendum
									lacus. Pellentesque sit amet dignissim mauris. Suspendisse a
									erat congue nunc auctor malesuada. Mauris ultricies magna quis
									neque egestas, eu vehicula sapien luctus. Aenean id condimentum
									mauris. Integer urna enim, vehicula non nunc non, feugiat
									imperdiet eros. Morbi vitae est at erat tristique facilisis.
									Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet
									urna elementum semper. Etiam dignissim pharetra mauris. Donec
									rhoncus nisl sem, ut ultrices odio porttitor sed. Donec
									consequat facilisis velit. Cras feugiat tincidunt fermentum.
									Duis interdum nec quam id eleifend.</div>
							</div>
						</div>

						<div class="form-group" style="margin-bottom: 10px;">
							<div class="checkbox">
								<label class="checkbox-inline col-xs-4"> <input
									type="checkbox" id="chk-terms2" value="chk"> 동의합니다.
								</label>
							</div>
						</div>

						<div class="panel panel-warning">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#terms2"> 마케팅 수신 동의 (자세히 보기) </a>
								</h4>
							</div>
							<div id="terms2" class="panel-collapse collapse">
								<div class="panel-body" style="text-align: left;">Lorem
									ipsum dolor sit amet, consectetur adipiscing elit. Nunc
									suscipit velit sit amet tristique tincidunt. Fusce dapibus
									tortor ut est ornare porttitor. Aliquam auctor bibendum
									posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere
									pharetra auctor. Pellentesque et eleifend nibh, a bibendum
									lacus. Pellentesque sit amet dignissim mauris. Suspendisse a
									erat congue nunc auctor malesuada. Mauris ultricies magna quis
									neque egestas, eu vehicula sapien luctus. Aenean id condimentum
									mauris. Integer urna enim, vehicula non nunc non, feugiat
									imperdiet eros. Morbi vitae est at erat tristique facilisis.
									Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet
									urna elementum semper. Etiam dignissim pharetra mauris. Donec
									rhoncus nisl sem, ut ultrices odio porttitor sed. Donec
									consequat facilisis velit. Cras feugiat tincidunt fermentum.
									Duis interdum nec quam id eleifend.</div>
							</div>
						</div>

						<br>

						<div class="col-xs-12">
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-lg btn-block"
									style="font-weight: bold;">회원가입</button>
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
    $(function () {
      $('#terms1').collapse({
        toggle: false
      })
    });
    $(function () {
      $('#terms2').collapse({
        toggle: false
      })
    });
    var autoHypenPhone = function (str) {
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
    phoneNum.onkeyup = function () {
      console.log(this.value);
      this.value = autoHypenPhone(this.value);
    } 
  </script>

</body>

</html>
