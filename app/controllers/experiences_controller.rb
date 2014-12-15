class ExperiencesController < ApplicationController

  def new
    @experience = Experience.new
  end

  def create
    experience = Experience.new(experience_params)

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
        format.html { redirect_to dashboard }
        format.json { render json: experiences, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
  end

  def destroy
  end

  def show
  end

private

  def experience_params
    params.require(:experience).permit(:title, :price, :amount_available, :availability, :description)
  end

end
