class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource)
        case resource
          when HealthCenter
            health_center_users_path
          when User
            user_health_centers_path
        end
  end

  def after_sign_out_path_for(resource)
      root_path
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys: [
     :last_name,
     :first_name,
     :last_name_kana,
     :first_name_kana,
     :name,
     :postcode,
     :address_city,
     :address_street,
     :address_building,
     :phone_number,
     :holiday,
     :gender,
     :age,
     :corporate_number
   ])
    end
end
