class User::HealthCentersController < ApplicationController
  
  def index
    @health_centers = HealthCenter.all
  end
  
  def search
    @health_centers = HealthCenter.search(params[:search])
    @health_center = HealthCenter.find(params[:id])

  end
   
  def show
    @health_center = HealthCenter.find(params[:id])
  end
  
end
