Rails.application.routes.draw do
  root 'pets#index'
  resources :pets
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
