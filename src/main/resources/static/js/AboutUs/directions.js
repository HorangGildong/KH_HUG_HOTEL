/**
 * 
 */
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   mapOption = {
         center: new kakao.maps.LatLng(33.24567259306393, 126.40962704289082), // 지도의 중심좌표
         level: 3 // 지도의 확대 레벨
     };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);


// 지도에 마커를 표시합니다 
var marker = new kakao.maps.Marker({
    map: map, 
    position: new kakao.maps.LatLng(33.24567259306393, 126.40962704289082)
});

// 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var content = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            H.U.G HOTEL in jeju' + 
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="img/hah_img/H.U.Glogo.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">제주특별자치도 서귀포시 중문관광로 </div>' + 
            '                <div class="jibun ellipsis">(우) 63300 (지번) 21길 21</div>' + 
            '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    overlay.setMap(null);     
}




//층별 안내 엘레베이터

	$(document).ready(function() {
    var elevator = $('.elevator');
    var floors = $('.floor');
    var f1 = $('#f1');
    var people = $('.people');
    var runner = $('#runner');
    people.css({
        top: f1.position().top + 1505,
        left: f1.position().left + 650
    });
    elevator.css({
        top: f1.position().top + 1505,
        left: f1.position().left + 324
    });
    elevator.hover(function() {
        $(this).addClass('yellowgreen');
    }, function() {
        $(this).removeClass('yellowgreen');
    });
    elevator.click(function(event) {
        $('div:animated').stop()
        $('div:animated').fadeOut('fast');
        $('div:animated').fadeIn('fast');
        $('div:animated').animate({
            param1: value1,
            param2: value2
        }, speed)
    });
    floors.bind({
        mouseenter: function() {
            $(this).addClass('brown')
        },
        mouseleave: function() {
            $(this).removeClass('brown')
        },
        click: function() {
            floors.removeClass('clickbrown')
            $(this).addClass('clickbrown')
        }
    });
    floors.each(function() {
        var pos = $(this).position();
        $(this).click(function() {
            if ($(this).attr('id') === 'runner') {
                return;
            };
            elevator.delay(500).animate({
                top: pos.top + 1505
            }, 1000);
            runner.animate({
                left: '-=150px'
            }, 500);
            runner.animate({
                top: pos.top + 1505,
                left: pos.left + 405
            }, 1000);
            runner.animate({
                left: '+=300px'
            }, 500);
        });
    });
});
/* } else {
	$(document).ready(function() {
    var elevator = $('.elevator');
    var floors = $('.floor');
    var f1 = $('#f1');
    var people = $('.people');
    var runner = $('#runner');
    people.css({
        top: f1.position().top + 1448,
        left: f1.position().left + 792
    });
    elevator.css({
        top: f1.position().top + 1448,
        left: f1.position().left + 469
    });
    elevator.hover(function() {
        $(this).addClass('yellowgreen');
    }, function() {
        $(this).removeClass('yellowgreen');
    });
    elevator.click(function(event) {
        $('div:animated').stop()
        $('div:animated').fadeOut('fast');
        $('div:animated').fadeIn('fast');
        $('div:animated').animate({
            param1: value1,
            param2: value2
        }, speed)
    });
    floors.bind({
        mouseenter: function() {
            $(this).addClass('brown')
        },
        mouseleave: function() {
            $(this).removeClass('brown')
        },
        click: function() {
            floors.removeClass('clickbrown')
            $(this).addClass('clickbrown')
        }
    });
    floors.each(function() {
        var pos = $(this).position();
        $(this).click(function() {
            if ($(this).attr('id') === 'runner') {
                return;
            };
            elevator.delay(500).animate({
                top: pos.top + 1448
            }, 1000);
            runner.animate({
                left: '-=150px'
            }, 500);
            runner.animate({
                top: pos.top + 1448,
                left: pos.left + 550
            }, 1000);
            runner.animate({
                left: '+=300px'
            }, 500);
        });
    });
});
} */