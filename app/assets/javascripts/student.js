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

function openDetails(event){
    let className = event.target.innerText;
    let informatiiClass = document.getElementsByClassName("informatii");
    for(var i=0; i<informatiiClass.length; i++){
        informatiiClass[i].style.display="none";
    }
    className = className.substr(0, className.length-8);
    document.getElementsByClassName(className)[0].style.display="block";
    let information = document.getElementsByClassName("activee");
    for(let i=0; i<information.length; i++){
        information[i].className = information[i].className.replace("activee", "oneline");
    }
    event.target.className = event.target.className.replace("oneline", "activee");
}

function openCity(evt, day) {
    // Declare all variables
    let i, tabcontent, tablinks;
    let activeElements = document.getElementsByClassName("active");
    for(let j=0; j<activeElements.length+1; j++){
        activeElements[0].className = activeElements[0].className.replace("active", " ");
    }

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

    if(!(evt.currentTarget.className.includes("active"))){
        evt.currentTarget.className += " active";
    }
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
        if(document.getElementById(day)){
            document.getElementById(day).style.display = "block";
        }
        let butoaneZile = document.getElementsByClassName("btn-outline-primary");
        for(let i = 0; i<butoaneZile.length; i++){
            if(butoaneZile[i].innerHTML == day ) {
                console.log(day);
                butoaneZile[i].className+= " active";
                break;
            }
        }
    }
);
