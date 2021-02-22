Rails.application.routes.draw do
  get '/quizzes/:id/play', to: "quiz_play#play", as: "quiz_play"
  get '/users/:id/admin', to: "admin#edit_user", as: "edit_user_admin"
  post '/users/:id/make_admin', to: "admin#make_admin", as: "make_admin"
  post '/users/:id/remove_admin', to: "admin#remove_admin", as: "remove_admin"
  post '/users/:id/unit_accesses', to: "admin#update_unit_access", as: "update_unit_access"
  resources :users, only: %i[ index show new edit create update destroy ]
  resources :units, only: %i[ new show edit create update destroy ]
  resources :documents, only: %i[ new show edit create update destroy ]
  resources :quizzes, only: %i[ new show edit create update destroy ]
  get '/', to: 'home#index', as: "home_page"
  get '/home', to: 'home#home', as: "home"
  get '/admin', to: 'home#admin', as: "admin_home"
  get '/login', to: 'sessions#new', as: "new_login"
  post '/login', to: 'sessions#create', as: "login"
  get '/logout', to: 'sessions#destroy', as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
