class User::HealthCentersController < ApplicationController
  
  def index
    @health_center = HealthCenter.all
  end
  
  def search
    health_center = params[:health_center]
    @health_center = HealthCenter.search(health_center)
  end
   
  def show
    @health_center = HealthCenter.find(params[:id])
  end
  
end
