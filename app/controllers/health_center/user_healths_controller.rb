class HealthCenter::UserHealthsController < ApplicationController
  
  before_action :authenticate_health_center!
  
  def index
    @user_healths = UserHealth.page(params[:page]).reverse_order
  end

  def show
    @user_health = UserHealth.find_by(user_id: params[:id])
    @user = @user_health.user_id
  end
  
end
