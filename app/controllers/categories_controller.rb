class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    if params[:city].present?

      @categories = @categories.joins(experiences: :city).where(city: { ref: params[:city] }).distinct
    end
  end
end
