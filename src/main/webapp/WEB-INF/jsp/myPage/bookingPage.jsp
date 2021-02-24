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
            background-color:white;
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
                <div class="innerBox">
                    <h1 class="contTitle">
                        <sapn>예약내역</sapn>
                        H.U.G 에서 예약한 내역을 확인하실 수 있습니다.
                        
                        	예약 변경을 원하실 경우
                        	취소 후 다시 예약 해주시길 바랍니다.
                        	
                        	기타 문의는 프론트 데스크로 연락주시길 바랍니다.
                    </h1>
                    
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


