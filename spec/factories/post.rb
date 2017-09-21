FactoryGirl.define do
  factory :post do
    sequence(:body) { |n| "This is an important update!#{n}" }
    cuty
  end
end
