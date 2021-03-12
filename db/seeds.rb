# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  last_name: "松尾",
  first_name: "健吾",
  last_name_kana: "マツオ",
  first_name_kana: "ケンゴ",
  email: "test@test",
  password: "012345",
  postcode: "1234567",
  address_city: "東京都",
  address_street: "渋谷区",
  address_building: "神南1丁目19-11",
  phone_number: "08034268377",
  gender: "man",
  age: "27",
  is_deleted: "false"
  )

HealthCenter.create!(
    name: "練馬区保健所",
    postcode: "1234567",
    address_city: "東京都",
    address_street: "練馬区",
    address_building: "大井町",
    phone_number: "0337560522",
    corporate_number: "1234567891234",
    holiday: "土曜日",
    email: "guest@hokenzyo",
    password: "012345"
    )

Hospital.create!(
  email: "test@byouin",
  password: "012345"
  )

UserHealth.create!(
  user_id: 1,
  health_center_id: 1,
  temperature: "37.2",
  condition: "頭痛・鼻水",
  transportation: "自転車",
  want_examination: "false",
  magnitude: "0.8"
  )

Room.create!(
  user_id: 1,
  health_center_id: 1,
  )

Message.create!(
  health_center_id: 1,
  user_id: 1,
  room_id: 1,
  message: "PCR検査を受けたいのですが",
  checked: "false",
  user_checked: "1",
  healthcenter_checked: "1",
  from: 0
  )

Examination.create!(
  user_id: 1,
  hospital_id: 1,
  doctor: "葛西潤",
  date: 2021/3/21,
  speciment: "唾液",
  result: "True"
  )

