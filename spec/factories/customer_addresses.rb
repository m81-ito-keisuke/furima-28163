FactoryBot.define do
  factory :customer_address do
    item_id { 5 }
    user_id { 10 }
    postal_code { '123-4567' }
    prefecture_id { 2 }
    city { '東京都' }
    house_number { '1-1' }
    building_name { 'グランドオン天源' }
    phone_number { "08000000000" }
    customer_id { 14 }
  end
end
