class HealthCenter::ExaminationsController < ApplicationController

  def index
    @examinations = Examination.all.page(params[:page]).per(6)
  end

  def show
    @examination = Examination.find(params[:id])
    @user = @examination.user
  end

end
