Rails.application.routes.draw do

  root 'pets#index'
  resources :pets do
    resources :images, controller: 'pet_images'
  end

  devise_for :users
  resources :users, path: 'my_users',only: [:index, :show, :edit]



  # resources :pet_images

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
