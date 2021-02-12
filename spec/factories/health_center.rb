FactoryBot.define do
  factory :health_center do
    name { Faker::Lorem.characters(number: 10) }    
    email { Faker::Internet.email }
    introduction { Faker::Lorem.characters(number: 20) }
    password { 'password' }
    password_confirmation { 'password' }
    postcode { Faker::Lorem.characters(number: 10) }
    address_city { Faker::Lorem.characters(number: 10) }
    address_street { Faker::Lorem.characters(number: 10) }
    address_building { Faker::Lorem.characters(number: 10) }
    phone_number { Faker::Lorem.characters(number: 10) }
    corporate_number { Faker::Lorem.characters(number: 12) }
  end
end