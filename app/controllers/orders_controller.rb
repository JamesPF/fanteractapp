class OrdersController < ApplicationController
  before_action :get_experience

  def new
    @order = Order.new
  end

  def create
    @experience = get_experience
    @order = Order.create(order_params)
    if @order.save 
      redirect_to experience_order_path(:experience_id, @order)
    end
  end

  def show
    @order = Order.find(params[:id])
    @experience = Experience.find(@order.experience_id)
  end

private

  def get_experience
    @experience = Experience.where(:id => params[:experience_id]).first
  end

  def order_params
    params.require(:order).permit(:first_name, :last_name, :email, :phone_number, :card_name, :card_number, :expiration_date, :security_code, :address_1, :address_2, :city, :state, :country, :zip_code, :experience_id)
  end

end
