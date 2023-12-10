Rails.application.routes.draw do
  resources :selections
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
 

  devise_for :users
  resources :authors
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'search', :to => "search#index"

  # Defines the root path route ("/")
  root "books#index"
end
