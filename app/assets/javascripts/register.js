//= require rails-ujs
//= require activestorage

document.addEventListener("DOMContentLoaded", function(event) {
    // Token Confirmation
    if(document.getElementById("token_confirmation")) {
      var token = document.getElementById("token");
      if(token.value == "")
        token.setAttribute('value', "");
    // Signup Page
    } else if(document.getElementById("signup")) {
      var first_name = document.getElementById("first_name");
      if(first_name.value == "")
        first_name.setAttribute('value', "");
      first_name.setAttribute('pattern', ".{2,}");
      first_name.setAttribute('title', "Must be at least 2 or more characters");
      first_name.addEventListener("change", fixLabel);

      var last_name = document.getElementById("last_name");
      if(last_name.value == "")
        last_name.setAttribute('value', "");
      last_name.setAttribute('pattern', ".{2,}");
      last_name.setAttribute('title', "Must be at least 2 or more characters");
      last_name.addEventListener("change", fixLabel);

      var email = document.getElementById("email");
      if(email.value == "")
        email.setAttribute('value', "");
      email.setAttribute('pattern', "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$");
      email.setAttribute('title', "Must have format: email@domain.com");
      email.addEventListener("change", fixLabel);

      var username = document.getElementById("username");
      if(username.value == "")
        username.setAttribute('value', "");
      username.setAttribute('pattern', ".{5,}");
      username.setAttribute('title', "Must be at least 5 or more characters");
      username.addEventListener("change", fixLabel);

      var password = document.getElementById("password");
      if(password.value == "")
        password.setAttribute('value', "");
      password.addEventListener("change", fixLabel);
    }
  }
);

function fixLabel() {
    this.setAttribute('value', this.value);
}
