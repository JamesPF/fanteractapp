class ExperiencesController < ApplicationController

  skip_before_filter :authorize, only: [:show]
  before_filter :experience_edits, only: [:edit, :update]

  def new
    @experience = Experience.new
  end

  def create
    experience = current_user.experiences.new(experience_params)

    respond_to do |format|
      if experience.save
        format.html { redirect_to dashboard_path }
        format.json { render json: experience, status: :created }
      else
        format.html { render :new }
        format.json { render json: experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    experience = Experience.find(params[:id])
    respond_to do |format|
      if experience.update_attributes(experience_params)
        format.html { redirect_to dashboard_path }
        format.json { render json: experiences, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @experience = Experience.where(user_id: current_user)
    
    # respond_to do |format|
    #   format.html {  }
    #   format.json { render json: @experience, status: :ok }
    # end
  end

  def destroy
    experience = Experience.find(params[:id])
    experience.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.json { head :no_content }
    end
  end

  def show
    @experience = Experience.find(params[:id])
    @artist = User.find(@experience.user_id)
  end

private

  def experience_params
    params.require(:experience).permit(:title, :price, :amount_available, :availability, :description)
  end

  def experience_edits
    redirect_to home_path if current_user.id != Experience.find(params[:id]).user_id
  end

end
