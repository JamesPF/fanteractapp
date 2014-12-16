class ResultsController < ApplicationController

  def index
    @results = Experience.all
    @results = @results.where("lower(title) LIKE ?", "%#{params[:title].downcase}%") if !params[:title].blank?
    # @results = @results.joins(:user)
    # @results = @results.where(:users => {:zip => params[:zip]}) if !params[:zip].blank?
  end

  def create
  end

  def show
  end

end
