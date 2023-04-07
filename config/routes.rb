Rails.application.routes.draw do
  get 'reader_cards/index'
  get 'reader_cards/new'
  get 'reader_cards/show'
  get 'reader_cards/edit'
  resources :genres
  resources :books
  resources :users
  resources :authors
  resources :bibliotekas
  root "authors#index"
end
