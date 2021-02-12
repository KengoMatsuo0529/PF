FactoryBot.define do
  factory :user do
    first_name { Faker::Lorem.characters(number: 10) }
    last_name { Faker::Lorem.characters(number: 10) }
    first_name_kana { Faker::Lorem.characters(number: 10) }
    last_name_kana { Faker::Lorem.characters(number: 10) }    
    email { Faker::Internet.email }
    introduction { Faker::Lorem.characters(number: 20) }
    password { 'password' }
    password_confirmation { 'password' }
    age { Faker::Lorem.characters(number: 10) }
    postcode { Faker::Lorem.characters(number: 10) }
    address_city { Faker::Lorem.characters(number: 10) }
    address_street { Faker::Lorem.characters(number: 10) }
    address_building { Faker::Lorem.characters(number: 10) }
    phone_number { Faker::Lorem.characters(number: 10) }
  end

end