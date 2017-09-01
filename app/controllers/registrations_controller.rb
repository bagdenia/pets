class RegistrationsController < Devise::RegistrationsController
  private
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :uname)
    end

    def account_update_params
      params.require(:user).permit(:email, :lat, :lng, :password, :password_confirmation, :current_password, :uname)
    end
end
