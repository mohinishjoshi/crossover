class CustomerController < ApplicationController
  def create
    byebug
    if Customer.create(customer_params)
      render :json => {}
    else
      render :json => {message: "Cannot create user"}, status: 422
    end
  end

  def update
  end

  private

  def customer_params
    params.require(:credentials).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end
