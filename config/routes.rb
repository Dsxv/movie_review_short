Rails.application.routes.draw do
  resources :comments
  resources :movies
  devise_for :users
  root "movies#index"
end
