class Hospital::ExaminationsController < ApplicationController

  def new
    @examination = Examination.new
    @user_id = params[:user_id]
  end

  def confirm
    @examination = Examination.new
    @examination.doctor = params[:doctor]
    @examination.date = params[:date]
    @examination.speciment = params[:speciment]
    @examination.result = params[:result]
    @examination.user_id = params[:user_id]
  end

  def create
    @examination = Examination.new(examination_params)
    @examination.hospital_id = current_hospital.id
    if @examination.save
      redirect_to hospital_examination_path(@examination)
    else
      render "new"
    end
  end

  def index
    @examinations = current_hospital.examinations.page(params[:page]).per(6)
  end

  def show
    @examination = Examination.find(params[:id])
    @user = @examination.user
  end

  def error
    redirect_to new_hospital_examination_path
  end

  private

  def examination_params
    params.require(:examination).permit(:doctor, :date, :speciment, :result, :user_id, :hospital_id)
  end

end

