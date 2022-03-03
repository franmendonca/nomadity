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

    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude,
        image_url: helpers.asset_url("logo.jpg")
      }
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
