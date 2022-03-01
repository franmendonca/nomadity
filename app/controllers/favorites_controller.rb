class FavoritesController < ApplicationController
  def create
    experience = Experience.find(params['experience_id'])
    current_user.favorite(experience)
    redirect_to experience_path(experience)
  end

  def delete
    experience = Experience.find(params['experience_id'])
    raise
    current_user.unfavorite(experience)
    redirect_to experience_path(experience)
  end
end
