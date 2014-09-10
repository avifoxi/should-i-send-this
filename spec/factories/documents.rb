# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :document do
    title "Untitled"
    context "Test"
    privacy false
  end
end
