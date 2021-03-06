class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show]
  def index
    @experiences = Experience.all

    if params[:category].present?
      session[:category] = params[:category]
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
        category: @category.ref,
        info_window: render_to_string(partial: "shared/info_window", locals: { experience: experience })
      }
    end

    @categories = Category.all
    @categories = @categories.joins(experiences: :city).where(city: { ref: params[:city] }).distinct

  end



  def show
    @user = current_user
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
