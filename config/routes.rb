Rails.application.routes.draw do

  root :to => 'access#login'

  # Login/Logout routes
  get 'login', :to => 'access#login', :as => 'login'
  post 'access/attempt_login'
  get 'logout', :to => 'access#logout', :as => 'logout'

  # Home routes
  get 'home_s', :to => 'student_home#index', :as => 'student_home'
  get 'home_t', :to => 'teacher_home#index', :as => 'teacher_home'


  # Cand accesez localhost:3000/ imi apare un welcome.
  # Cand dau hover pe welcome, acesta dispare si ramane vizibil formularul de login.
  # Cand dau submit la formularul de login, se face un post request catre server.
  #   - Se verifica daca username-ul exista in baza de date si daca parola este corecta.
  #   - Daca totul este ok, atunci redirectioneaza user-ul catre HomePage-ul lui. -> In functie de tipul utilizatorului.
  #   - Daca nu, atunci arata eroare.

  # AccessController - login action -> Render Login View
  #                  - attempt_login action -> Handle post request and check if username is in database + authenticate user with password
  #                                         -> If ok, store user_id in session and redirect user to HomeController#index
  #                                         -> If not, show error

  #HomeController

end
