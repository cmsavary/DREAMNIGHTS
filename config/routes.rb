Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "rooms/:id/edit", to: "rooms#edit", as: 'edit_room'
  # Defines the root path route ("/")
  # root "articles#index"
  # delete "rooms/:id", to: "rooms#destroy"
  # delete "hotels/:id", to: "hotels#destroy"
  resources :bookings, only: [:edit, :update, :destroy]
  resources :rooms do
    resources :bookings
  end
end
