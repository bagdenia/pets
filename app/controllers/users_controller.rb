class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  def set_user
    @user = User.find(params[:id])
  end

  before_action :set_current_user, only: [:update, :edit]
  def set_current_user
    @user = current_user
  end

  def index
    @users = User.includes(pets: :images).order(:email)
  end


  def show
    if params[:email] then
      u = User.where(email: params[:email]).first
      bundle
      if u then
        @user = u
      end
    end
  end

  def email
    if params[:email] then
      u = User.where(email: params[:email]).first
      if u then
        @user = u
        redirect_to @user
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'user was successfully updated.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :uname, :lat, :lng)
  end
end
