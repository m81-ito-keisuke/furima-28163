FactoryBot.define do
  factory :user do
    nickname              {"itou"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {password}
    last_name             {"伊藤"}
    first_name            {"圭祐"}
    last_kana             {"イトウ"}
    first_kana            {"ケイスケ"}
    birthday              {"1992-07-17"}
  end
end