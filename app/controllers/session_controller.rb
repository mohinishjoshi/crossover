class SessionController < ApplicationController
  def create
  end

  def destroy
  end

  private

  def session_params
    params.require(:login).permit(:email, :password)
  end
end
