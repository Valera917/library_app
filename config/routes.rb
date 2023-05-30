Rails.application.routes.draw do
  devise_for :admins
  resources :genres
  resources :reader_cards
  resources :books
  resources :users
  resources :authors
  resources :bibliotekas
  root "home#index"
end
