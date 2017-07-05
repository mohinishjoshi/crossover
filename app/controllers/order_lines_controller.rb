class OrderLinesController < ApplicationController

  def create
  end

  def update
  end

  def destroy
  end

  private

  def order_line_params
    params.require(:order_line).permit(:qty)
  end
end
