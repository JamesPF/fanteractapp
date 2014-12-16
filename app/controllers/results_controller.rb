class ResultsController < ApplicationController

  def index
    @results = Experience.all
    @results = @results.joins(:user)
    @results = Experience.find_by_sql([
      'SELECT experiences.id, experiences.title, users.artist_name, experiences.description, experiences.amount_available ' +
      'FROM experiences ' +
      'INNER JOIN users ' +
      'ON experiences.user_id = users.id ' +
      'WHERE lower(users.artist_name) LIKE ? OR lower(experiences.title) LIKE ?',
      "%#{params[:title].downcase}%", "%#{params[:title].downcase}%"
      ])



  end

  def create
  end

  def show
  end

end
