class HealthCenter::UsersController < ApplicationController
  
  def search
    user = params[:user]
    @user = User.search(user)
  end
end
