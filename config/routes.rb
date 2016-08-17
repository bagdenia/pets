Rails.application.routes.draw do

  resources :messages, only: [:index, :create] do
    collection do
      post :bulk_operation
    end
  end

  root 'pets#index'
  resources :kinds, controller: 'pet_kinds'
  resources :pets do
    collection do
      get 'hren'
    end
    resources :images, controller: 'pet_images' do
        member do
          post :set_default_image
        end
    end

  end

  # devise_for :users
  devise_for :users, controllers: {registrations: 'registrations' }
  # resources :users, path: 'my_users',only: [:index, :show, :edit]
  resources :users, only: [:index, :show, :edit] do
    resources :messages, only: [:new]
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get ':uname' => 'pets#index', as: 'animal'

  # resources :pet_images

end
