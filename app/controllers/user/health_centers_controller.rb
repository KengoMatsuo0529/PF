class User::HealthCentersController < ApplicationController

  def index
    @health_centers = HealthCenter.search(params[:search])
  end

  def show
    @health_center = HealthCenter.find(params[:id])
    # @checked = false
    #   if Message.where(user_id: current_user.id).last.updated_at <= Message.where(health_center_id: @health_center.id).last.created_at
    #     @checked = true
    #   end

      # Message.where(user_id: current_user.id).where(health_center_id: @health_center.id).last.checked == 0

    # 日付の比較をして、自分のメッセージのupdated_atと、ルームにあるメッセージのupdated_atを<=等で比較する
    # 表示させるのであれば、保健所のuserコントローラーにも同様に記載
  end


end
