class User::HealthCentersController < ApplicationController

  autocomplete :health_center, :name, full: true

  
  def index
    @health_centers = HealthCenter.search(params[:search])
  end

  def show
    @health_center = HealthCenter.find(params[:id])
    # @checked = false
    #   if Message.where(user_id: current_user.id).last.updated_at <= Message.where(health_center_id: @health_center.id).last.created_at
    #     @checked = true
    #   end
  end

end
