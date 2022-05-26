$(function() {
    init();
    bind();
})

function init() {
    
}

function bind() {
    // Open Pop-up Event
    $('.btnOpen').off('click').on('click', e => {
        $('#weeklyWeatherPop').css('display', 'block');
    });

    // Close Pop-up Event
    $('#closePop').off('click').on('click', e => {
        $('#weeklyWeatherPop').css('display', 'none');
    });
}