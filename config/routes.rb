Rails.application.routes.draw do
  resources :reports
  root "posts#index"
  get 'profiles/show'
  devise_for :users
  resources :posts
  resources :workreports
  resources :attendances, only: [:index]

  get "up" => "rails/health#show", as: :rails_health_check

  get '/profile', to: 'profiles#show', as: 'profile'


  get '/add_user', to: 'users#add_user', as: 'user'
  post '/add_user', to: 'users#add_user'

  resources :users, only: [:index, :new, :create ,:edit]
  # resources :add_users, path: 'add_user', only: [:index, :show, :new, :create, :edit, :update, :destroy]


  end
