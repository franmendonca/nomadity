class FavoritesController < ApplicationController
  def create
    experience = Experience.find(params['experience_id'])
    current_user.favorite(experience)

    respond_to do |format|
      format.html { redirect_to experience_path(experience) }
      format.text { render partial: "shared/favorite_button", locals: { experience: experience }, formats: [:html] }
    end
  end


  def destroy
    experience = Experience.find(params[:id])
    current_user.unfavorite(experience)

    respond_to do |format|
      format.html { redirect_to experience_path(experience) }
      format.text { render partial: "shared/favorite_button", locals: { experience: experience }, formats: [:html] }
    end
  end
end
