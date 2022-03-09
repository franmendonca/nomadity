class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index]
  def index
    @categories = Category.all


    if params[:city].present?
      if session[:category].present?
        redirect_to experiences_path(category: session[:category], city: params[:city])
      end
      @categories = @categories.joins(experiences: :city).where(city: { ref: params[:city] }).distinct
    end
  end
end
