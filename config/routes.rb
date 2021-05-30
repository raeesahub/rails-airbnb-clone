Rails.application.routes.draw do

  get 'dashboard', to: 'users#show', as: 'dashboard'
  devise_for :users
  root to: 'pages#home'

  resources :flats, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
