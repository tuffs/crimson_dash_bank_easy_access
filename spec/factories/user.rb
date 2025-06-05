FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    sequence(:username) { |n| "user#{n}" }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
    admin { false }

    trait :admin do
      admin { true }
    end
  end
end