class User::UserHealthsController < ApplicationController
  
  
  def new
    @user_health = UserHealth.new
  end
  
  def confirm
    @user_health = UserHealth.find(params[:id])
    @user = current_user.user
  end
  
  def create
    @user_health = UserHealth.new(user_health_params)
    @user = current_user
    if @user_health.save
      redirect_to "/"
    else
      render new
    end
  end
  
  def index
    @user_healths = current_user.user_health.all
  end
  
  def show
    @user_health = UserHealth.find(params[:id])
  end
  

  private

  def user_health_params
    params.require(:user_health).permit()
  end

end

