FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { 'abcd1234' }
    password_confirmation { password }
    last_name             { '伊藤' }
    first_name            { '圭祐' }
    last_kana             { 'イトウ' }
    first_kana            { 'ケイスケ' }
    birthday              { '1992-07-17' }
  end
end
