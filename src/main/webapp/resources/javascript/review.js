$(function() {
    init();
    bind();
})

function init() {
    
}

function bind() {
    // Open Pop-up Event
    $('#writingFormBntWrapper #writingFormBnt').off('click').on('click', e => {
        $('#writingForm').css('display', 'block');
    });

    // Close Pop-up Event
    $('#closePop').off('click').on('click', e => {
        $('#writingForm').css('display', 'none');
    });
}