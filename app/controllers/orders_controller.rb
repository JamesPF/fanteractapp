class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def show
  end

  def create
    order.save
    redirect_to home_path
  end

end
