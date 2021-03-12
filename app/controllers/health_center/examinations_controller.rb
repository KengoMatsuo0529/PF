class HealthCenter::ExaminationsController < ApplicationController

  def index
    @examinations = Examination.all
  end

  def show
    @examination = Examination.find(params[:id])
    @user = @examination.user
  end

end
