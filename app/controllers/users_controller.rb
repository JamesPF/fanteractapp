class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:artist_name, :genre, :bio, :contact_name, :address_1, :address_2, :city, :state, :zip_code, :email, :bank_name, :account_holder_name, :account_type, :account_number, :routing_number, :password_digest))
    @user.save
    session[:user_id] = @user.id
    id = User.last[:id]
    redirect_to dashboard_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to dashboard_path
    else
      render 'edit'
    end
    @user.save
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:artist_name, :genre, :bio, :contact_name, :address_1, :address_2, :city, :state, :zip_code, :email, :bank_name, :account_holder_name, :account_type, :account_number, :routing_number, :password_digest)
  end

end
