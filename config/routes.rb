Rails.application.routes.draw do

  resources :messages, only: [:index, :create]

  root 'pets#index'
  resources :pets do
    collection do
      get 'hren'
    end
    resources :images, controller: 'pet_images'
  end

  devise_for :users
  # resources :users, path: 'my_users',only: [:index, :show, :edit]
  resources :users, only: [:index, :show, :edit] do
    resources :messages, only: [:new]
  end



  # resources :pet_images

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
