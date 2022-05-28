$(function() {
    init();
    bind();
})

function init() {
    
}

function bind() {
    // Open Pop-up Event
    $('#fineMemInfo').off('click').on('click', e => {
        $('#findMemInfoPop').css('display', 'block');
    });

    // Close Pop-up Event
    $('#closePop').off('click').on('click', e => {
        $('#findMemInfoPop').css('display', 'none');
    });
}