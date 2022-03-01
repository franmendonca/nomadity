class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show]
  def index
    @experiences = Experience.all
  end

  def show; end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end
end