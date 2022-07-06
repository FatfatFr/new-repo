Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:show, :index, :new, :create] do
    resources :bookings, only: [:show, :create, :update, :destroy]
    resources :favorites, only: [:create, :destroy]
  end
end
