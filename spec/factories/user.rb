FactoryBot.define do
  factory :user do
    first_name { 'kengo' }
    last_name { 'matsuo' }
    first_name_kana { 'ケンゴ' }
    last_name_kana { 'マツオ' }    
    email { 'k.matsuo@gmail.com' }
    password { 'password' }
    password_confirmation { 'password' }
    age { '27' }
    gender { '男' }
    postcode { '1450075' }
    address_city { '東京都' }
    address_street { '大田区' }
    address_building { '西嶺町23-15' }
    phone_number { '0337563506' }
  end
end
