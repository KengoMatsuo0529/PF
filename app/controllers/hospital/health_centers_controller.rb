class Hospital::HealthCentersController < ApplicationController
  def index
    @health_centers = HealthCenter.search(params[:search]).page(params[:page]).per(6)
  end
  
  def show
    @health_center = HealthCenter.find(params[:id])
  end
end
