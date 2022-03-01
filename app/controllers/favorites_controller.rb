class FavoritesController < ApplicationController
  def create
    experience = Experience.find(params['experience_id'])
    current_user.favorite(experience)
    redirect_to experience_path(experience)
  end
end
