Rails.application.routes.draw do

  root :to => 'access#login'

  # Login/Logout routes
  get 'login', :to => 'access#login', :as => 'login'
  post 'login', :to => 'access#attempt_login', :as => 'attempt_login'
  get 'logout', :to => 'access#logout', :as => 'logout'

  # Signup/Register routes
  get 'signup', :to => 'register#signup', :as => 'signup'
  get 'token_auth', :to => 'register#verify', :as => 'token_auth'
  post 'token_auth', :to => 'register#token_validation', :as => 'token_validation'
  post 'signup', :to => 'register#attempt_signup', :as => 'attempt_signup'

  # Student Tokens routes
  get 'home_a/student_tokens', :to => 'student_tokens#index', :as => 'student_tokens'
  get 'home_a/student_tokens/new', :to => 'student_tokens#new', :as => 'new_student_token'
  post 'home_a/student_tokens/new', :to => 'student_tokens#create', :as => 'create_student_token'
  delete 'home_a/student_tokens/:id', :to => 'student_tokens#destroy', :as => 'delete_student_token'

  # Teacher Tokens routes
  get 'home_a/teacher_tokens', :to => 'teacher_tokens#index', :as => 'teacher_tokens'
  get 'home_a/teacher_tokens/new', :to => 'teacher_tokens#new', :as => 'new_teacher_token'
  post 'home_a/teacher_tokens/new', :to => 'teacher_tokens#create', :as => 'create_teacher_token'
  delete 'home_a/teacher_tokens/:id', :to => 'teacher_tokens#destroy', :as => 'delete_teacher_token'

  #Event Tokens routes
  get 'home_a/event_tokens', :to => 'event_tokens#index', :as => 'event_tokens'
  post 'home_a/event_tokens', :to => 'event_tokens#create', :as => 'create_event_token'
  delete 'home_a/event_tokens/:id', :to => 'event_tokens#destroy', :as => 'delete_event_token'

  # Home routes
  # Admin Home
  get 'home_a', :to => 'admin_home#index', :as => 'admin_home'

  # Student Home
  get 'home_s', :to => 'student_home#index', :as => 'student_home'

  #Teacher Home
  get 'home_t', :to => 'teacher_home#index', :as => 'teacher_home'
  post 'home_t', :to => 'teacher_home#attempt_add_news', :as => 'add_news'



  # Schedule routes
  # search schedule
  get 'home_s/search_schedule', :to => 'search_schedule#search', :as => 'student_search_schedule'
  get 'home_t/search_schedule', :to => 'search_schedule#search', :as => 'teacher_search_schedule'
  post 'home_s/search_schedule', :to => 'search_schedule#attempt_search', :as => 'student_attempt_search_schedule'
  post 'home_t/search_schedule', :to => 'search_schedule#attempt_search', :as => 'teacher_attempt_search_schedule'

  # your Schedule
  get 'home_s/your_schedule', :to => 'student_schedule#index', :as => 'student_schedule'
  get 'home_t/your_schedule', :to => 'teacher_schedule#index', :as => 'teacher_schedule'

  # Events

  # Explore
  get 'home_s/explore_events', :to => 'explore_events#index', :as => 'student_explore_events'
  get 'home_t/explore_events', :to => 'explore_events#index', :as => 'teacher_explore_events'
  post 'home_s/explore_events', :to => 'explore_events#attempt_find', :as => 'student_attempt_find_events'

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
