FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Movies::HarryPotter.character }
    password { "123456" }
  end

  factory :promise_list do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    association :user
  end
end
