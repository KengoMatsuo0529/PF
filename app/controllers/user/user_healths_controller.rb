class User::UserHealthsController < ApplicationController

  before_action :authenticate_user!

  def new
    @user = current_user
    @user_health = @user.user_healths.build
  end

  def confirm
    @user_health = UserHealth.new
    @user_health.temperature = params[:temperature]
    @user_health.condition = params[:condition]
    @user_health.transportation = params[:transportation]
    if params[:want_examination] == "1"
      want_examination_value = true
    elsif params[:want_examination] == "0"
      want_examination_value = false
    end
    @user_health.want_examination = want_examination_value
    @user_health.health_center_id = params[:health_center_id]
  end

  def create
    @user_health = UserHealth.new(user_health_params)
    if params[:want_examination] == "1"
      want_examination_value = true
    elsif params[:want_examination] == "0"
      want_examination_value = false
    end
    @user_health.user_id = current_user.id
    @user_health.magnitude = Language.get_data(user_health_params[:condition])  #この行を追加
    if @user_health.save
      redirect_to user_user_health_path(@user_health)
    else
      render "new"
    end
  end

  def error
    redirect_to new_user_user_health_path
  end

  def index
    @user_healths = current_user.user_healths
  end

  def show
    @user_health = UserHealth.find(params[:id])
  end

  private

  def user_health_params
    params.require(:user_health).permit(:temperature, :condition, :transportation, :want_examination, :health_center_id)
  end

end

