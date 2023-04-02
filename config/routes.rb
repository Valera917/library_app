Rails.application.routes.draw do
  resources :genres
  resources :books
  root "books#index"
end
