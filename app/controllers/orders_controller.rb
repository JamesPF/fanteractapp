class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    order = Order.new
    order.save
    redirect_to order_path(order)
  end

private

  def order_params
    params.require(:order).permit(:first_name, :last_name, :email, :phone_number, :card_name, :card_number, :expiration_date, :security_code, :address_1, :address_2, :city, :state, :country, :zip_code)
  end

end
