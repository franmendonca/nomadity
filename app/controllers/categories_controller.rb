class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    if params[:city].present?
      @categories = @categories.joins(experiences: :city).where(city: { name: params[:city].downcase.capitalize }).distinct
    end
  end
end
