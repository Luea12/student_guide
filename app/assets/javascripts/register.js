document.addEventListener("DOMContentLoaded", function(event) {
    // Token Confirmation
    if(document.getElementById("token_confirmation")) {
      var token = document.getElementById("token");
      token.setAttribute('value', "");
    // Signup Page
    } else if(document.getElementById("signup")) {
      var first_name = document.getElementById("first_name");
      first_name.setAttribute('value', "");
      var last_name = document.getElementById("last_name");
      last_name.setAttribute('value', "");
      var last_name = document.getElementById("last_name");
      last_name.setAttribute('value', "");
      var email = document.getElementById("email");
      email.setAttribute('value', "");
      var username = document.getElementById("username");
      username.setAttribute('value', "");
      var password = document.getElementById("password");
      password.setAttribute('value', "");
    }
  }
);
