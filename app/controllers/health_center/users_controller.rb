class HealthCenter::UsersController < ApplicationController
  
  before_action :authenticate_health_center!

  
  def index
    # @messages = current_health_center.messages
    # user_ids = @messages.map(&:user_id)
    # @users = User.where(id: user_ids).search(params[:search]).distinct.page(params[:page]).per(6)
    # #上記は「この保健所に紐づいた」ユーザー一覧
    @users = User.search(params[:search]).page(params[:page]).per(6)

  end

  def show
    @user = User.find(params[:id])
  end
end
