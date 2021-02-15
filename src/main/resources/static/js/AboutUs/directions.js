/**
 * 
 */
// var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
//     mapOption = {
//         center: new kakao.maps.LatLng(33.24664656816974, 126.40967641411429), // 지도의 중심좌표
//         level: 3 // 지도의 확대 레벨
//     };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
// var map = new kakao.maps.Map(mapContainer, mapOption);


//층별 안내 엘레베이터
$(document).ready(function() {
    var elevator = $('.elevator');
    var floors = $('.floor');
    var f1 = $('#f1');
    var people = $('.people');
    var runner = $('#runner');
    people.css({
        top: f1.position().top + 1186,
        left: f1.position().left + 600
    });
    elevator.css({
        top: f1.position().top + 1186,
        left: f1.position().left + 276
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
                top: pos.top + 1186
            }, 1000);
            runner.animate({
                left: '-=150px'
            }, 500);
            runner.animate({
                top: pos.top + 1186,
                left: pos.left + 370
            }, 1000);
            runner.animate({
                left: '+=300px'
            }, 500);
        });
    });
});