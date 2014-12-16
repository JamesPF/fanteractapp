class ResultsController < ApplicationController

  def index
    @results = Experience.all
    @results = @results.where("lower(name) LIKE ?", "%#{params[:user_id]}%") if !params[:user_id].blank?
    # @results = @results.joins(:user)
    # @results = @results.where(:users => {:zip => params[:zip]}) if !params[:zip].blank?
  end

  def create
  end

  def show
  end

end
