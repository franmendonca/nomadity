class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show]
  def index
    @experiences = Experience.all

    if params[:category].present?
      @category = Category.find_by(ref: params[:category])
      @experiences = @experiences.where(category: @category)
    end

    if params[:city].present?
      @city = City.find_by(ref: params[:city])
      @experiences = @experiences.where(city: @city)
    end
  end

  def show
    @user = current_user
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
