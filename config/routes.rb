Rails.application.routes.draw do
  get '/quizzes/:id/play', to: "quiz_play#play", as: "quiz_play"
  resources :users, only: %i[ index show new edit create update destroy ]
  resources :units, only: %i[ new show edit create update destroy ]
  resources :documents, only: %i[ new show edit create update destroy ]
  resources :quizzes, only: %i[ new show edit create update destroy ]
  get '/', to: 'home#index', as: "home_page"
  get '/home', to: 'home#student', as: "student_home"
  get '/admin', to: 'home#admin', as: "admin_home"
  get '/login', to: 'sessions#new', as: "new_login"
  post '/login', to: 'sessions#create', as: "login"
  get '/logout', to: 'sessions#destroy', as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
