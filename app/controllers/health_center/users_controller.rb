class HealthCenter::UsersController < ApplicationController
  
  def index
    @users = User.search(params[:search])
    # @user = User.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
  end
end
