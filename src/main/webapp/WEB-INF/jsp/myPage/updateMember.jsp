<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
                    <form action="" method="post" onsubmit="">
                        <div class="form-group">
                            <label for="userId">아이디(이메일) :</label>
                            <input type="text" class="form-control" id="persanl_name" name="persnal_name" value="user01" readonly><br>
                            
                            <label for="userPwd">비밀번호:</label>
                            <input type="password" class="form-control" id="persnal_password" name="persnal_password" value=""> <br>
        
                            <label for="userName">* Name :</label>
                            <input type="text" class="form-control" id="persnal_name" name="persnal_name" value="홍길동" readonly><br>
                            
                            <label for="email"> &nbsp; 닉네임</label>
                            <input type="email" class="form-control" id="user_nick" name="user_nick" value="user01@kh.or.kr"><br>
                            
                            <lable for="birthday">생년월일</lable>
                            <input type="" class="form-control" id="persnal_birth" name="persnla_birth" vlaue="" readonly><br>
        
                            <label for="phone"> &nbsp; Phone :</label>
                            <input type="tel" class="form-control" id="persnal_phone" name="persnal_phone" value="01011112222"><br>
                            
                            
                            
                            <label for=""> &nbsp; Gender : </label> &nbsp;&nbsp;
                            <input type="radio" name="user_gender" id="Male" value="M" checked>
                            <label for="Male">남자</label> &nbsp;&nbsp;
                            <input type="radio" name="user_gender" id="Female" value="F">
                            <label for="Female">여자</label><br>
                            
                        </div>
                        <br>
                        <div class="btns" align="center">
                            <button type="submit" class="btn btn-primary">수정하기</button>
                           
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
        
                            <form action="" method="post">
                                비밀번호 : 
                                <input type="password" name="userPwd" required>
        
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

</body>

</html>
