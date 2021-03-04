class HealthCenter::ExaminationsController < ApplicationController

  def index
    @examinations = Examination.all
  end

  def show
    @examination = Examination.find(params[:id])
  end
  
end
