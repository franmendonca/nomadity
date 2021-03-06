class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def directions
    @order = params[:orders].split(",")
    @experiences = []
    @order.each do |order|
      @experiences << Experience.find(order)
    end
    @markers = @experiences.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude,
        category: experience.category.ref,
        info_window: render_to_string(partial: "shared/info_window", locals: { experience: experience })
      }
    end
  end

  def profile
    @user = current_user

    if !params['query'].nil?
      filtered_favorites = []
      @user.all_favorited.each do |favorite|
        if favorite.city.name.downcase == params['query'].downcase
          filtered_favorites << favorite
        end
      end
      @all_favorites = filtered_favorites
    else
      @all_favorites = @user.all_favorited
    end

    @markers = Experience.where(id: @all_favorites.map(&:id)).geocoded.map do |favorite|
      {
        lat: favorite.latitude,
        lng: favorite.longitude,
        image_url: helpers.asset_url("logo.jpg"),
        category: favorite.category.ref,
        info_window: render_to_string(partial: "shared/info_window", locals: { experience: favorite })
      }
    end
  end
end
