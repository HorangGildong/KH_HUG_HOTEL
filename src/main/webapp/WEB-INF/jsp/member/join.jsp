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
			<div style="margin: 50px 0px 50px 0px">
				<div class="container" style="width: 400px; text-align: center;">

					<h1 style="font-weight: 900; margin-bottom: 50px">회원가입</h1>

					<form class="form-horizontal" action="/join" method="post">

						<div class="form-group">
							<label for="inputId" class="col-xs-4 control-label">아이디</label>
							<div class="col-xs-8">
								<input type="text" class="form-control"
									name="memberId"	id="inputId" placeholder="ID" required>
								<div class="check_font" id="idCheck"></div>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">비밀번호</label>
							<div class="col-xs-8">
								<input type="password" class="form-control"
									name="memberPassword" id="inputPassword" placeholder="Password"	required>
								<div class="check_font" id="passwordCheck"></div>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword" class="col-xs-4 control-label">비밀번호	확인</label>
							<div class="col-xs-8">
								<input type="password" class="form-control"
									id="inputPassword2"	placeholder="PasswordCheck" disabled required>
								<div class="check_font" id="passwordCheck2"></div>
							</div>
						</div>

						<div class="form-group">
							<label for="inputName" class="col-xs-4 control-label">이름</label>
							<div class="col-xs-8">
								<input type="text" class="form-control"
									name="memberName" id="inputName" placeholder="Name" required>
							</div>
						</div>

						<div class="form-group">
							<label for="inputNick" class="col-xs-4 control-label">닉네임</label>
							<div class="col-xs-8">
								<input type="text" class="form-control"
									name="memberNick" id="inputNickname" placeholder="Nick" required>
								<div class="check_font" id="nickCheck"></div>
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail" class="col-xs-4 control-label">이메일</label>
							<div class="col-xs-8">
								<input type="email" class="form-control"
									name="memberEmail" id="inputEmail" placeholder="E-mail" required>
								<div class="check_font" id="emailCheck"></div>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPhone" class="col-xs-4 control-label">전화번호</label>
							<div class="col-xs-8">
								<input type="text" class="form-control"
									name="memberPhone" id="inputPhone" placeholder="PhoneNumber" required>
							</div>
						</div>

						<div class="form-group">
							<label for="inputBirth" class="col-xs-4 control-label">생년월일</label>
							<div class="col-xs-8">
								<input type="date" class="form-control"
									name="memberBirth" id="inputBirth" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-4 control-label">성별</label>
							<label class="radio-inline col-xs-offset-1 col-xs-2">
								<input type="radio" name="memberGender" id="inputGenderMale" value="MALE" checked> 남
							</label>
							<label class="radio-inline col-xs-offset-1 col-xs-2">
								<input type="radio" name="memberGender" id="inputGenderFemale" value="FEMALE"> 여
							</label>
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

						<div class="panel panel-warning" style="margin-bottom: 10px;">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#terms1"> 이용약관 (자세히 보기) </a>
								</h4>
							</div>
							<div id="terms1" class="panel-collapse collapse">
								<div class="panel-body" style="text-align: left;">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
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
									Duis interdum nec quam id eleifend.
								</div>
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

						<div class="panel panel-warning">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#terms2"> 마케팅 수신 동의 (자세히 보기) </a>
								</h4>
							</div>
							<div id="terms2" class="panel-collapse collapse">
								<div class="panel-body" style="text-align: left;">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
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
									Duis interdum nec quam id eleifend.
								</div>
							</div>
						</div>

						<br>

						<div class="col-xs-12">
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-lg btn-block"
									id="submitBtn" style="font-weight: bold;" disabled>
									회원가입
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

		var isId;
		var isEmail;
		var isNick;
		var isPassword;
		
		$("#inputId").blur(function() {
			var id = $("#inputId").val();
			isId = false;
			$.ajax({
				url : '${pageContext.request.contextPath}/join/idCheck?id=' + id,
				type : 'get',
				success : function(data) {
					if (data) {
						$("#idCheck").text("사용중인 아이디입니다.");
						$("#idCheck").css("color", "red");
					} else if((id.length > 0 && id.length < 8) || id.length > 20) {
						$("#idCheck").text("8~20자리로 입력해주세요.");
						$("#idCheck").css("color", "red");
					} else if(id.search(/\s/) != -1) {
						$("#idCheck").text("공백 없이 입력해주세요.");
						$("#idCheck").css("color", "red");
					} else if (id!="") {
						isId = true;
						$("#idCheck").text("사용가능한 아이디입니다.");
						$("#idCheck").css("color", "blue");
					} else {
						$("#idCheck").text("");
					}			
					$.fn.submitDisable();
				}
			});
		});
		
		$("#inputEmail").blur(function() {
			var email = $('#inputEmail').val();
			var str = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			isEmail = false;
			if (!str.test(email) && email!="") {
				$("#emailCheck").text("이메일 형식이 바르지 않습니다.");
				$("#emailCheck").css("color", "red");
			} else if (email!="") {
				isEmail = true;
				$("#emailCheck").text("사용가능한 이메일입니다.");
				$("#emailCheck").css("color", "blue");
			} else {
				$("#emailCheck").text("");
			}			
			$.fn.submitDisable();
		});
		
		$("#inputNickname").blur(function() {
			var nick = $('#inputNickname').val();
			isNick = false;
			$.ajax({
				url : '${pageContext.request.contextPath}/join/nickCheck?nick=' + nick,
				type : 'get',
				success : function(data) {
					if (nick == "") {
						$("#nickCheck").text("");
					} else if (data) {
						$("#nickCheck").text("사용중인 닉네임입니다. ㅠㅠ");
						$("#nickCheck").css("color", "red");
					} else {
						$("#nickCheck").text("사용가능한 닉네임입니다.");
						$("#nickCheck").css("color", "blue");
						isNick = true;
					}
					$.fn.submitDisable();
				}
			});
		});
		
		$("#inputPassword").blur(function() {
			var pw = $("#inputPassword").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			isPassword = false;
			if(pw == "") {
				$("#passwordCheck").text("");
				$("#inputPassword2").attr("disabled", true);
			} else if(pw.length < 8) {
				$("#passwordCheck").text("8자리 이상으로 입력해주세요.");
				$("#passwordCheck").css("color", "red");
				$("#inputPassword2").attr("disabled", true);
			} else if(pw.search(/\s/) != -1) {
				$("#passwordCheck").text("비밀번호는 공백 없이 입력해주세요.");
				$("#passwordCheck").css("color", "red");
				$("#inputPassword2").attr("disabled", true);
			} else if(num < 0 || eng < 0 || spe < 0 ) {
				$("#passwordCheck").text("영문/숫자/특수문자를 혼합해주세요.");
				$("#passwordCheck").css("color", "red");
				$("#inputPassword2").attr("disabled", true);
			} else {
				$("#passwordCheck").text("사용가능한 비밀번호입니다.");
				$("#passwordCheck").css("color", "blue");
				$("#inputPassword2").attr("disabled", false);
			}
			$.fn.submitDisable();
		});
		
		/* $("#inputPassword2").attr("disabled") == undefined */
		
		$("#inputPassword, #inputPassword2").blur(function() { 
			var pw1=$("#inputPassword").val();
			var pw2=$("#inputPassword2").val();
			isPassword = false;
			if($("#inputPassword2").attr("disabled") != undefined  || pw2 == "")
			{
				$("#passwordCheck2").text("");
			} else if(pw1 == pw2) { 
				$("#passwordCheck2").text("비밀번호가 일치합니다.");
				$("#passwordCheck2").css("color", "blue");
				isPassword = true;
			} else {
				$("#passwordCheck2").text("비밀번호가 일치하지 않습니다. ㅠㅠ");
				$("#passwordCheck2").css("color", "red");
			}
			$.fn.submitDisable();
		});
		
		$.fn.submitDisable = function () {
			console.log(isId, isEmail, isNick, isPassword);
			if(isId == true && isEmail == true && isNick == true && isPassword == true) {
				$("#submitBtn").attr("disabled", false);
			} else {
				$("#submitBtn").attr("disabled", true);
			}
		}
		
	</script>

</body>

</html>
