Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "rooms", to: "rooms#index"
  get "rooms/:id", to: "rooms#show"
  # Defines the root path route ("/")
  # root "articles#index"
  delete "rooms/:id", to: "rooms#destroy"
  delete "hotels/:id", to: "hotels#destroy"
end
