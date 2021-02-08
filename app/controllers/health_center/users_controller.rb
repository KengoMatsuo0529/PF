class HealthCenter::UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def search
    @users = User.search(params[:search])
  end
  
  def show
    @user = User.find(params[:id])
  end
end
