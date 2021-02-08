class HealthCenter::UserHealthsController < ApplicationController
  
  before_action :authenticate_health_center!
  
  def index
    @user_healths = UserHealth.all
  end

  def show
    @user_health = UserHealth.find(params[:id])
  end
  
end
