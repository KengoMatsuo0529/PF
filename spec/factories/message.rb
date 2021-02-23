FactoryBot.define do
  factory :message do
    user_id { '1' }
    health_center_id { '1' }
    room_id { '1' }
    message { '初めまして' }
    user_checked { '1' }
    health_center_checked { '1' }
    from { '1' }
  end
end
