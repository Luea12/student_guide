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

function openForm() {
    document.getElementById("news-form").style.display = "block";
}

function closeForm() {
    document.getElementById("news-form").style.display = "none";
}
