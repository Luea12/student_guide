//= require rails-ujs
//= require activestorage

document.addEventListener("DOMContentLoaded", function(event) {
    var password = document.getElementById("password");
    password.setAttribute('value', "");
    var nameOrMail = document.getElementById("nameOrMail");
    if(nameOrMail.value == "")
      nameOrMail.setAttribute('value', "");
  }
);
