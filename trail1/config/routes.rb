Rails.application.routes.draw do
  resources :articles
  resources :users

  root to: "user#index"

  get "/login", to: "sessions#new"
  get "/log", to:"sessions#destroy"
  post "/sessions", to: "sessions#create"

end
