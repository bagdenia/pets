Rails.application.routes.draw do

  root 'pets#index'
  resources :pets do
    resources :images, controller: 'pet_images'
  end

  # resources :pet_images

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
