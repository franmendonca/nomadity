class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
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

  end



end
