class UsersController < ApplicationController
  before_action :set_user, only: [:show]
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
  end

  def edit
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
      params.require(:user).permit(:email)
    end
end
