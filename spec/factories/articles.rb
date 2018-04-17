FactoryGirl.define do
  factory :article do
    trait :normal_article do
      name 'Example'
      price 12
    end
  end
end
