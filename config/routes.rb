Rails.application.routes.draw do
  get 'search/index'
  resources :authors
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'search', :to => "search#index"

  # Defines the root path route ("/")
  root "books#index"
end
