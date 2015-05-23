class UsersController < ApplicationController
 #before_action :set_user, only: [:show, :update]

  # GET /pets
  # GET /pets.json
  def index
    @users = User.includes(pets: :images).all
  end

  # GET /pets/1
  # GET /pets/1.json
end
