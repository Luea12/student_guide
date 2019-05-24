//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap

$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });
});
