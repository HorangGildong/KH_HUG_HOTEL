	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrapcss/nomalize.css">
    <link rel="stylesheet" href="/css/bootstrapcss/bootstrap.min.css">

    <link rel="stylesheet" href="/css/styles.css">

    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">
    <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
    <!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
	
	<!--글씨체 링크 한글-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<!--글씨체 링크 영어-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
		
	<title> H.U.G HOTEL 제주</title>
	<style>
        .content{
            background-color:#72a5d3;
            width:80%;
            /* height:600px; */
            margin:auto;
        }
        .innerOuter{
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 15%;
            background:white
        }
        .innerBox{
            position: relative;
            padding: 27px 30px;
            margin-top : 56px;
            
            background:#72a5d3;
        }
      

    </style>

</head>
<body>
    <div class="wrap">
        <!--header-->
        <jsp:include page="../common/header.jsp"/>
        <!--header end-->
        
        <!--section start-->
        <section>
			<div class="content">
                <br><br>
                <div class="innerOuter">
                    <h2>회원정보수정</h2>
                    <br>
        
                    <form id="myinfo" onsubmit="handleSubmit(this)">
                        <div class="form-group">
                            <label for="persanl_name">아이디(이메일) :</label>
                            <input type="text" class="form-control" id="persanl_name" name="" value="${memberId} (${memberEmail})" readonly><br>
                            
                            <label for="persnal_password">비밀번호:</label>
                            <input type="password" class="form-control" id="persnal_password" name="memberPassword" value=""> <br>
        
                            <label for="persnal_name">* Name :</label>
                            <input type="text" class="form-control" id="persnal_name" name="" value="${memberName}" readonly><br>
                            
                            <label for="user_nick"> &nbsp; 닉네임</label>
                            <input type="text" class="form-control" id="user_nick" name="memberNick" value="${memberNick}"><br>
                            
                            <lable for="persnal_birth">생년월일</lable>
                            <!-- <input type="" class="form-control" id="persnal_birth" name="memberBirth" vlaue="" readonly><br> -->
                            <input type="text" class="form-control" id="persnal_birth" name="" value="${memberBirth}" readonly><br>
        
                            <label for="persnal_phone"> &nbsp; Phone :</label>
                            <input type="tel" class="form-control" id="persnal_phone" name="memberPhone" value="${memberPhone}"><br>
                            
                            
                            
                            <!-- <label for=""> &nbsp; Gender : </label> &nbsp;&nbsp;
                            <input type="radio" name="memberGender" id="Male" value="M" checked>
                            <label for="Male">남자</label> &nbsp;&nbsp;
                            <input type="radio" name="memberGender" id="Female" value="F">
                            <label for="Female">여자</label><br> -->
                            <c:choose>
                                <c:when test="${memberGender eq 'MALE'}">
                                    <label for=""> &nbsp; Gender : </label> &nbsp;&nbsp;
                                    <input type="radio" name="memberGender" id="Male" value="MALE" checked>
                                    <label for="Male">남자</label> &nbsp;&nbsp;
                                    <input type="radio" name="memberGender" id="Female" value="FEMALE">
                                    <label for="Female">여자</label><br>
                                </c:when>
                                <c:otherwise>
                                    <label for=""> &nbsp; Gender : </label> &nbsp;&nbsp;
                                    <input type="radio" name="memberGender" id="Male" value="MALE" >
                                    <label for="Male">남자</label> &nbsp;&nbsp;
                                    <input type="radio" name="memberGender" id="Female" value="FEMALE" checked>
                                    <label for="Female">여자</label><br>
                                </c:otherwise>
                            </c:choose>
                            
                            
                        </div>
                        <br>
                        <div class="btns" align="center">
                            <button id="submit" class="btn btn-primary">수정하기</button>
                           
                        </div>
                        <div class="innerBox">
                            
                                <h2>회원탈퇴</h2>
                                <p>파라다이스시티 회원탈퇴는 하단 ‘회원 탈퇴신청’ 버튼을 클릭하시면 탈퇴가 이루어집니다. <br />탈퇴 후 해당 아이디와 회원 정보는 삭제처리 됩니다.</p>
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteForm">회원탈퇴</button>
                              
                            
                        </div>
                    </form>
                    
        
                </div>
                <br><br>
            </div>
        
            <!-- 회원탈퇴 버튼 클릭시 보여질 Modal -->
            <div class="modal" id="deleteForm">
                <div class="modal-dialog">
                    <div class="modal-content">
                    
                        <!-- Modal Header -->
                        <div class="modal-header">
                        <h4 class="modal-title">회원탈퇴</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        
                        <!-- Modal body -->
                        <div class="modal-body" align="center">
                        
                            <b>
                                            탈퇴 후 복구가 불가능합니다. <br>   
                                            정말로 탈퇴 하시겠습니까?
                            </b>
        
                            <form id="deleteInfo" onsubmit="handleDelete(this)">
                                비밀번호 : 
                                <input type="password" name="memberPassword" required>
        
                                <button type="submit" class="btn btn-danger">탈퇴하기</button>
                            </form>
        
                        </div>
                        
                    </div>
                </div>
            </div>
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
<script src="js/index.js"></script>

<script>
    $(document).ready(function() {
        // 비동기 통신을 위해 form submit 이벤트 제거
        $('form').bind('submit', function(e) { e.preventDefault();});
    })
    function handleSubmit(e) {
        var data = {}
        // form 데이터 배열로 받아와 key,value 로 객체 생성
        $('#myinfo').serializeArray().map(function(info) {
            Object.assign(data, {[info.name] : info.value})
        })

        $.ajax({
            url: '/user/update',
            method: 'POST',
            data: data,
            success: function(r) {
                alertify.alert('수정 성공', '회원 정보가 성공적으로 수정되었습니다.', function() { location.href="/myPage"});
            },
            error: function() {
                alertify.alert('수정 실패', '오류가 생겨 회원 정보 수정이 실패하였습니다.<br>지속적으로 오류시 관리자에게 문의해주세요.');
            }
        })
    }

    function handleDelete() {
        var data = {}
        $('#deleteInfo').serializeArray().map(function(info) {
            Object.assign(data, {[info.name] : info.value})
        })

        $.ajax({
            url: '/user/delete',
            method: 'POST',
            data: data,
            success: function() {
                alertify.alert('탈퇴 성공', '정상적으로 회원 탈퇴 되었습니다.<br>이용해주셔서 감사합니다.', function(){ location.href="/logout" });
            },
            error: function() {
                alertify.alert('탈퇴 실패', '오류가 생겨 탈퇴 처리가 실패하였습니다.<br>지속적으로 오류시 관리자에게 문의해주세요.');
            }
        })
    }
</script>
</body>

</html>
