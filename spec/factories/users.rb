# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "name"
    email "example@example.com"
    password "password"
    password_confirmation "password"
  end
end
