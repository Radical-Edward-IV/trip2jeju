$(function() {
    init();
    bind();
})

function init() {
    
}

function bind() {
	//제주시 버튼 클릭
	$('.jeju').off('click').on('click', e => {
        $('.jejuContnet').css('display', 'block');
        $('.seogwipoContnet').css('display', 'none');
    });
	
	//서귀포시 버튼 클릭
	$('.seogwipo').off('click').on('click', e => {
        $('.seogwipoContnet').css('display', 'block');
        $('.jejuContnet').css('display', 'none');
    });

    // Open Pop-up Event
    $('.btnOpen').off('click').on('click', e => {
        $('#weeklyWeatherPop').css('display', 'block');
    });

    // Close Pop-up Event
    $('#closePop').off('click').on('click', e => {
        $('#weeklyWeatherPop').css('display', 'none');
    });
}