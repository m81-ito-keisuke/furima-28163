FactoryBot.define do
  factory :item do
    name                 { 'りんご' }
    detail               { '甘酸っぱい' }
    category_id          { 2 }
    status_id            { 2 }
    prefecture_id        { 2 }
    delivery_change_id   { 2 }
    ship_days_id         { 2 }
    price                { 500 }
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
