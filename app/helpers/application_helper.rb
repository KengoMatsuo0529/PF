module ApplicationHelper
  def check_user_notification
    @checked = true
    @room = Room.find_by(user_id: current_user.id)
    @checked = false if Message.where(user_id: current_user.id, user_checked: false).exists?
    @checked
  end

  def check_health_center_notification
    @checked = true
    @room = Room.find_by(health_center_id: current_health_center.id)
    @checked = false if Message.where(health_center_id: current_health_center.id, healthcenter_checked: false).exists?
    @checked
  end
end
