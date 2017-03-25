$(document).ready(function() {
    console.log('script loaded');

    $('div.flash').delay(500).slideDown('normal', function() {
        $(this).delay(2500).slideUp();
    });
}); // ends doc ready