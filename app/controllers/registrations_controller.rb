class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:customer).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end
