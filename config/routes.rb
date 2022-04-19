Rails.application.routes.draw do
  root 'tasks#index'
  post "/", to: "tasks#create"

  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
