class User::UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @room = Room.find_by(user_id: current_user.id)
    @health_center = HealthCenter.find(@room.health_center_id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update!(user_params)
      redirect_to user_user_path
    else
      render :edit
    end
  end

  def hide
    user = current_user
    user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :first_name_kana, :last_name_kana, :gender, :age, :email, :postcode, :address_city, :address_street, :address_building, :phone_number)
  end

end
