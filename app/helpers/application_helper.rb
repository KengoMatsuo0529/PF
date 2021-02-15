module ApplicationHelper

  def check_user_notification
      @checked = true
      @room = Room.find_by(user_id: current_user.id)
        if Message.where(user_id: current_user.id, user_checked: false).exists?
          @checked = false
        end
        return @checked

  end

    def check_health_center_notification
      @checked = true
      @room = Room.find_by(health_center_id: current_health_center.id)
        if Message.where(health_center_id: current_health_center.id, healthcenter_checked: false).exists?
          @checked = false
        end
        return @checked
    end
end
