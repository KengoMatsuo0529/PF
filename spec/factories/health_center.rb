FactoryBot.define do
  factory :health_center do
    name { "大田区保健所" }    
    email { "k.matsuo@com" }
    password { 'password' }
    password_confirmation { 'password' }
    postcode { "1234567" }
    address_city { "東京都" }
    address_street { "大田区" }
    address_building { "西嶺町23-15" }
    phone_number { "0337563506" }
    corporate_number { "123456789123" }
  end
end