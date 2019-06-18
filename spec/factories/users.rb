FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email  { Faker::Internet.email }
    password  { "please123 " }
  end
end
