class HealthCenter::UserHealthsController < ApplicationController

  before_action :authenticate_health_center!

  def index
    @user_healths = UserHealth.page(params[:page])
  end

  def show
    @user_health = UserHealth.where(user_id: params[:id]).order(updated_at: "DESC").first
    @user = User.find(params[:id])
  end
end
