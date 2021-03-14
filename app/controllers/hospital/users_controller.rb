class Hospital::UsersController < ApplicationController

  def index
    #同じ市区町村にいる人の一覧から検索
    @users = User.search(params[:search]).page(params[:page]).per(6)
  end

  def show
    @user = User.find(params[:id])
  end

end
