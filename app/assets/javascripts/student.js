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

function openCity(evt, day) {
    // Declare all variables
    let i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(day).style.display = "block";
    evt.currentTarget.className += " active";
}


//This function will run when the page is loaded
document.addEventListener("DOMContentLoaded", function(event) {
        let day = new Date().getDay();
        if (day === 1 || day === 6 || day === 0) {
            day = 'Luni';
        }
        if (day === 2) {
            day = 'Marti';
        }
        if (day === 3) {
            day = 'Miercuri';
        }
        if (day === 4) {
            day = 'Joi';
        }
        if (day === 5) {
            day = 'Vineri';
        }
        document.getElementById(day).style.display = "block";
        let tablinks = document.getElementsByClassName("tablinks");
        for(let i = 0; i<tablinks.length; i++){
            if(tablinks[i].innerHTML === day) {
                tablinks[i].className+= " active";
                break;
            }
        }
    }
);
